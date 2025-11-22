package org.jmrtd;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.FileInfo;
import net.sf.scuba.smartcards.FileSystemStructured;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.tlv.TLVInputStream;
import net.sf.scuba.util.Hex;
import org.jmrtd.io.FragmentBuffer;
import org.jmrtd.lds.LDSFileUtil;
import org.jmrtd.protocol.SecureMessagingWrapper;

/* loaded from: classes2.dex */
public class DefaultFileSystem implements FileSystemStructured {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd");
    public static final int NO_SFI = -1;
    private static final int READ_AHEAD_LENGTH = 8;
    private Map<Short, Byte> fidToSFI;
    private Map<Short, DefaultFileInfo> fileInfos;
    private boolean isSFIEnabled;
    private boolean isSelected;
    private int maxReadBinaryLength;
    private APDUWrapper oldWrapper;
    private short selectedFID;
    private APDULevelReadBinaryCapable service;
    private APDUWrapper wrapper;

    public static class DefaultFileInfo extends FileInfo implements Serializable {
        private static final long serialVersionUID = 6727369753765119839L;
        private FragmentBuffer buffer;
        private short fid;

        public DefaultFileInfo(short s7, int r22) {
            this.fid = s7;
            this.buffer = new FragmentBuffer(r22);
        }

        public void addFragment(int r22, byte[] bArr) {
            this.buffer.addFragment(r22, bArr);
        }

        public byte[] getBuffer() {
            return this.buffer.getBuffer();
        }

        @Override // net.sf.scuba.smartcards.FileInfo
        public short getFID() {
            return this.fid;
        }

        @Override // net.sf.scuba.smartcards.FileInfo
        public int getFileLength() {
            return this.buffer.getLength();
        }

        public FragmentBuffer.Fragment getSmallestUnbufferedFragment(int r22, int r32) {
            return this.buffer.getSmallestUnbufferedFragment(r22, r32);
        }

        public String toString() {
            return Integer.toHexString(this.fid);
        }
    }

    public DefaultFileSystem(APDULevelReadBinaryCapable aPDULevelReadBinaryCapable, boolean z10) {
        this(aPDULevelReadBinaryCapable, z10, LDSFileUtil.FID_TO_SFI);
    }

    public DefaultFileSystem(APDULevelReadBinaryCapable aPDULevelReadBinaryCapable, boolean z10, Map<Short, Byte> map) {
        this.service = aPDULevelReadBinaryCapable;
        this.fileInfos = new HashMap();
        this.selectedFID = (short) 0;
        this.isSelected = false;
        this.isSFIEnabled = z10;
        this.fidToSFI = map;
        this.maxReadBinaryLength = 65536;
    }

    private synchronized DefaultFileInfo getFileInfo() throws CardServiceException {
        byte[] bArrSendReadBinary;
        short s7 = this.selectedFID;
        if (s7 <= 0) {
            throw new CardServiceException("No file selected");
        }
        DefaultFileInfo defaultFileInfo = this.fileInfos.get(Short.valueOf(s7));
        if (defaultFileInfo != null) {
            return defaultFileInfo;
        }
        try {
            if (this.isSFIEnabled) {
                Byte b10 = this.fidToSFI.get(Short.valueOf(this.selectedFID));
                if (b10 == null) {
                    throw new NumberFormatException("Unknown FID " + Integer.toHexString(this.selectedFID));
                }
                bArrSendReadBinary = sendReadBinary((b10.byteValue() & 255) | 128, 0, 8, false);
                this.isSelected = true;
            } else {
                if (!this.isSelected) {
                    sendSelectFile(this.selectedFID);
                    this.isSelected = true;
                }
                bArrSendReadBinary = sendReadBinary(0, 8, false);
            }
            if (bArrSendReadBinary != null && bArrSendReadBinary.length != 0) {
                int fileLength = getFileLength(this.selectedFID, 8, bArrSendReadBinary);
                if (fileLength < bArrSendReadBinary.length) {
                    bArrSendReadBinary = Arrays.copyOf(bArrSendReadBinary, fileLength);
                }
                DefaultFileInfo defaultFileInfo2 = new DefaultFileInfo(this.selectedFID, fileLength);
                defaultFileInfo2.addFragment(0, bArrSendReadBinary);
                this.fileInfos.put(Short.valueOf(this.selectedFID), defaultFileInfo2);
                return defaultFileInfo2;
            }
            LOGGER.warning("Something is wrong with prefix, prefix = " + Hex.bytesToHexString(bArrSendReadBinary));
            return null;
        } catch (IOException e10) {
            throw new CardServiceException("Error getting file info for " + Integer.toHexString(this.selectedFID), e10);
        }
    }

    private static int getFileLength(short s7, int r42, byte[] bArr) throws IOException {
        if (bArr.length < r42) {
            return bArr.length;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        TLVInputStream tLVInputStream = new TLVInputStream(byteArrayInputStream);
        try {
            if (tLVInputStream.readTag() != 66) {
                return (bArr.length - byteArrayInputStream.available()) + tLVInputStream.readLength();
            }
            try {
                tLVInputStream.close();
                return 36;
            } catch (IOException e10) {
                LOGGER.log(Level.FINE, "Error closing stream", (Throwable) e10);
                return 36;
            }
        } finally {
            try {
                tLVInputStream.close();
            } catch (IOException e11) {
                LOGGER.log(Level.FINE, "Error closing stream", (Throwable) e11);
            }
        }
    }

    public int getMaxReadBinaryLength() {
        return this.maxReadBinaryLength;
    }

    @Override // net.sf.scuba.smartcards.FileSystemStructured
    public synchronized FileInfo[] getSelectedPath() throws CardServiceException {
        DefaultFileInfo fileInfo = getFileInfo();
        if (fileInfo == null) {
            return null;
        }
        return new DefaultFileInfo[]{fileInfo};
    }

    public APDUWrapper getWrapper() {
        return this.wrapper;
    }

    @Override // net.sf.scuba.smartcards.FileSystemStructured
    public synchronized byte[] readBinary(int r10, int r11) throws CardServiceException {
        byte[] bArr;
        byte[] bArrSendReadBinary;
        try {
            try {
                if (this.selectedFID <= 0) {
                    throw new CardServiceException("No file selected");
                }
                DefaultFileInfo fileInfo = getFileInfo();
                if (fileInfo == null) {
                    throw new IllegalStateException("Could not get file info");
                }
                int length = Math.min(r11, this.maxReadBinaryLength);
                FragmentBuffer.Fragment smallestUnbufferedFragment = fileInfo.getSmallestUnbufferedFragment(r10, length);
                if (smallestUnbufferedFragment.getLength() > 0) {
                    boolean z10 = true;
                    if (!this.isSFIEnabled || r10 >= 256) {
                        if (!this.isSelected) {
                            sendSelectFile(this.selectedFID);
                            this.isSelected = true;
                        }
                        int offset = smallestUnbufferedFragment.getOffset();
                        int length2 = smallestUnbufferedFragment.getLength();
                        if (r10 <= 32767) {
                            z10 = false;
                        }
                        bArrSendReadBinary = sendReadBinary(offset, length2, z10);
                    } else {
                        Byte b10 = this.fidToSFI.get(Short.valueOf(this.selectedFID));
                        if (b10 == null) {
                            throw new NumberFormatException("Unknown FID " + Integer.toHexString(this.selectedFID));
                        }
                        bArrSendReadBinary = sendReadBinary((b10.byteValue() & 255) | 128, smallestUnbufferedFragment.getOffset(), smallestUnbufferedFragment.getLength(), false);
                        this.isSelected = true;
                    }
                    if (bArrSendReadBinary == null) {
                        throw new IllegalStateException("Could not read bytes");
                    }
                    if (bArrSendReadBinary.length > 0) {
                        fileInfo.addFragment(smallestUnbufferedFragment.getOffset(), bArrSendReadBinary);
                    }
                    if (bArrSendReadBinary.length < smallestUnbufferedFragment.getLength()) {
                        length = bArrSendReadBinary.length;
                    }
                }
                bArr = new byte[length];
                System.arraycopy(fileInfo.getBuffer(), r10, bArr, 0, length);
            } catch (CardServiceException e10) {
                if ((((short) e10.getSW()) & ISO7816.SW_WRONG_LENGTH) != 26368 || this.maxReadBinaryLength <= 223) {
                    StringBuilder sb2 = new StringBuilder("Read binary failed on file ");
                    sb2.append((Object) (0 == 0 ? Integer.toHexString(this.selectedFID) : null));
                    throw new CardServiceException(sb2.toString(), e10);
                }
                this.wrapper = this.oldWrapper;
                this.maxReadBinaryLength = PassportService.DEFAULT_MAX_BLOCKSIZE;
                return new byte[0];
            }
        } catch (Exception e11) {
            StringBuilder sb3 = new StringBuilder("Read binary failed on file ");
            sb3.append((Object) (0 == 0 ? Integer.toHexString(this.selectedFID) : null));
            throw new CardServiceException(sb3.toString(), e11);
        }
        return bArr;
    }

    @Override // net.sf.scuba.smartcards.FileSystemStructured
    public synchronized void selectFile(short s7) throws CardServiceException {
        if (this.selectedFID == s7) {
            return;
        }
        this.selectedFID = s7;
        this.isSelected = false;
    }

    public synchronized byte[] sendReadBinary(int r82, int r92, int r10, boolean z10) throws CardServiceException {
        return this.service.sendReadBinary(this.wrapper, r82, r92, r10, true, z10);
    }

    public synchronized byte[] sendReadBinary(int r92, int r10, boolean z10) throws CardServiceException {
        APDUWrapper secureMessagingWrapper = this.wrapper;
        if (secureMessagingWrapper instanceof SecureMessagingWrapper) {
            secureMessagingWrapper = SecureMessagingWrapper.getInstance((SecureMessagingWrapper) secureMessagingWrapper);
        }
        this.oldWrapper = secureMessagingWrapper;
        return this.service.sendReadBinary(this.wrapper, -1, r92, r10, false, z10);
    }

    public synchronized void sendSelectFile(short s7) throws CardServiceException {
        this.service.sendSelectFile(this.wrapper, s7);
    }

    public void setWrapper(APDUWrapper aPDUWrapper) {
        this.oldWrapper = this.wrapper;
        this.wrapper = aPDUWrapper;
    }
}
