package org.jmrtd.lds.iso19794;

import ab.b;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import java.util.logging.Logger;
import org.jmrtd.cbeff.BiometricDataBlock;
import org.jmrtd.cbeff.ISO781611;
import org.jmrtd.cbeff.StandardBiometricHeader;
import org.jmrtd.lds.AbstractListInfo;
import org.jmrtd.lds.ImageInfo;

/* loaded from: classes2.dex */
public class FingerInfo extends AbstractListInfo<FingerImageInfo> implements BiometricDataBlock {
    public static final int COMPRESSION_JPEG = 3;
    public static final int COMPRESSION_JPEG2000 = 4;
    public static final int COMPRESSION_PNG = 5;
    public static final int COMPRESSION_UNCOMPRESSED_BIT_PACKED = 1;
    public static final int COMPRESSION_UNCOMPRESSED_NO_BIT_PACKING = 0;
    public static final int COMPRESSION_WSQ = 2;
    private static final int FORMAT_IDENTIFIER = 1179210240;
    private static final int FORMAT_OWNER_VALUE = 257;
    private static final int FORMAT_TYPE_VALUE = 7;
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd");
    public static final int SCALE_UNITS_PPCM = 2;
    public static final int SCALE_UNITS_PPI = 1;
    private static final int VERSION_NUMBER = 808529920;
    private static final long serialVersionUID = 5808625058034008176L;
    private int acquisitionLevel;
    private int captureDeviceId;
    private int compressionAlgorithm;
    private int depth;
    private int imageResolutionHorizontal;
    private int imageResolutionVertical;
    private StandardBiometricHeader sbh;
    private int scaleUnits;
    private int scanResolutionHorizontal;
    private int scanResolutionVertical;

    public FingerInfo(int r13, int r14, int r15, int r16, int r17, int r18, int r19, int r20, int r21, List<FingerImageInfo> list) {
        this(null, r13, r14, r15, r16, r17, r18, r19, r20, r21, list);
    }

    public FingerInfo(InputStream inputStream) throws IOException {
        this(null, inputStream);
    }

    public FingerInfo(StandardBiometricHeader standardBiometricHeader, int r22, int r32, int r42, int r52, int r6, int r72, int r82, int r92, int r10, List<FingerImageInfo> list) {
        this.sbh = standardBiometricHeader;
        this.captureDeviceId = r22;
        this.acquisitionLevel = r32;
        this.scaleUnits = r42;
        this.scanResolutionHorizontal = r52;
        this.scanResolutionVertical = r6;
        this.imageResolutionHorizontal = r72;
        this.imageResolutionVertical = r82;
        this.depth = r92;
        this.compressionAlgorithm = r10;
        addAll(list);
    }

    public FingerInfo(StandardBiometricHeader standardBiometricHeader, InputStream inputStream) throws IOException {
        this.sbh = standardBiometricHeader;
        readObject(inputStream);
    }

    public static int fromMimeType(String str) {
        if (ImageInfo.WSQ_MIME_TYPE.equals(str)) {
            return 2;
        }
        if (ImageInfo.JPEG_MIME_TYPE.equals(str)) {
            return 3;
        }
        if ("image/jpeg2000".equals(str)) {
            return 4;
        }
        if ("images/png".equals(str)) {
            return 5;
        }
        throw new IllegalArgumentException("Did not recognize mimeType");
    }

    private int getBiometricSubtype() {
        Iterator<FingerImageInfo> it = getSubRecords().iterator();
        boolean z10 = true;
        int r32 = 0;
        while (it.hasNext()) {
            int biometricSubtype = it.next().getBiometricSubtype();
            if (z10) {
                r32 = biometricSubtype;
                z10 = false;
            } else {
                r32 &= biometricSubtype;
            }
        }
        return r32;
    }

    private static long readUnsignedLong(InputStream inputStream, int r6) throws IOException {
        (inputStream instanceof DataInputStream ? (DataInputStream) inputStream : new DataInputStream(inputStream)).readFully(new byte[r6]);
        long j10 = 0;
        for (int r52 = 0; r52 < r6; r52++) {
            j10 = (j10 << 8) + (r0[r52] & 255);
        }
        return j10;
    }

    public static String toMimeType(int r22) {
        if (r22 == 0 || r22 == 1) {
            return "image/raw";
        }
        if (r22 == 2) {
            return ImageInfo.WSQ_MIME_TYPE;
        }
        if (r22 == 3) {
            return ImageInfo.JPEG_MIME_TYPE;
        }
        if (r22 == 4) {
            return "image/jpeg2000";
        }
        if (r22 != 5) {
            return null;
        }
        return "image/png";
    }

    private static void writeLong(long j10, OutputStream outputStream, int r6) throws IOException {
        if (r6 <= 0) {
            return;
        }
        for (int r12 = 0; r12 < r6 - 8; r12++) {
            outputStream.write(0);
        }
        if (r6 > 8) {
            r6 = 8;
        }
        for (int r62 = r6 - 1; r62 >= 0; r62--) {
            int r02 = r62 * 8;
            outputStream.write((byte) (((255 << r02) & j10) >> r02));
        }
    }

    public void addFingerImageInfo(FingerImageInfo fingerImageInfo) {
        add(fingerImageInfo);
    }

    @Override // org.jmrtd.lds.AbstractListInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        FingerInfo fingerInfo = (FingerInfo) obj;
        return this.acquisitionLevel == fingerInfo.acquisitionLevel && this.captureDeviceId == fingerInfo.captureDeviceId && this.compressionAlgorithm == fingerInfo.compressionAlgorithm && this.depth == fingerInfo.depth && this.imageResolutionHorizontal == fingerInfo.imageResolutionHorizontal && this.imageResolutionVertical == fingerInfo.imageResolutionVertical && this.scaleUnits == fingerInfo.scaleUnits && this.scanResolutionHorizontal == fingerInfo.scanResolutionHorizontal && this.scanResolutionVertical == fingerInfo.scanResolutionVertical;
    }

    public int getAcquisitionLevel() {
        return this.acquisitionLevel;
    }

    public int getCaptureDeviceId() {
        return this.captureDeviceId;
    }

    public int getCompressionAlgorithm() {
        return this.compressionAlgorithm;
    }

    public int getDepth() {
        return this.depth;
    }

    public List<FingerImageInfo> getFingerImageInfos() {
        return getSubRecords();
    }

    public int getHorizontalImageResolution() {
        return this.imageResolutionHorizontal;
    }

    public int getHorizontalScanningResolution() {
        return this.scanResolutionHorizontal;
    }

    public int getScaleUnits() {
        return this.scaleUnits;
    }

    @Override // org.jmrtd.cbeff.BiometricDataBlock
    public StandardBiometricHeader getStandardBiometricHeader() {
        if (this.sbh == null) {
            byte[] bArr = {(byte) getBiometricSubtype()};
            TreeMap treeMap = new TreeMap();
            treeMap.put(129, new byte[]{8});
            treeMap.put(Integer.valueOf(ISO781611.BIOMETRIC_SUBTYPE_TAG), bArr);
            treeMap.put(135, new byte[]{1, 1});
            treeMap.put(Integer.valueOf(ISO781611.FORMAT_TYPE_TAG), new byte[]{0, 7});
            this.sbh = new StandardBiometricHeader(treeMap);
        }
        return this.sbh;
    }

    public int getVerticalImageResolution() {
        return this.imageResolutionVertical;
    }

    public int getVerticalScanningResolution() {
        return this.scanResolutionVertical;
    }

    @Override // org.jmrtd.lds.AbstractListInfo
    public int hashCode() {
        int r02 = ((((((((((((super.hashCode() * 31) + this.acquisitionLevel) * 31) + this.captureDeviceId) * 31) + this.compressionAlgorithm) * 31) + this.depth) * 31) + this.imageResolutionHorizontal) * 31) + this.imageResolutionVertical) * 31;
        StandardBiometricHeader standardBiometricHeader = this.sbh;
        return ((((((r02 + (standardBiometricHeader == null ? 0 : standardBiometricHeader.hashCode())) * 31) + this.scaleUnits) * 31) + this.scanResolutionHorizontal) * 31) + this.scanResolutionVertical;
    }

    @Override // org.jmrtd.lds.AbstractListInfo
    public void readObject(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = inputStream instanceof DataInputStream ? (DataInputStream) inputStream : new DataInputStream(inputStream);
        int r12 = dataInputStream.readInt();
        if (r12 != FORMAT_IDENTIFIER) {
            throw new IllegalArgumentException(b.c(r12, new StringBuilder("'FIR' marker expected! Found ")));
        }
        int r13 = dataInputStream.readInt();
        if (r13 != VERSION_NUMBER) {
            throw new IllegalArgumentException(b.c(r13, new StringBuilder("'010' version number expected! Found ")));
        }
        long unsignedLong = readUnsignedLong(dataInputStream, 6);
        this.captureDeviceId = dataInputStream.readUnsignedShort();
        this.acquisitionLevel = dataInputStream.readUnsignedShort();
        int unsignedByte = dataInputStream.readUnsignedByte();
        this.scaleUnits = dataInputStream.readUnsignedByte();
        this.scanResolutionHorizontal = dataInputStream.readUnsignedShort();
        this.scanResolutionVertical = dataInputStream.readUnsignedShort();
        this.imageResolutionHorizontal = dataInputStream.readUnsignedShort();
        this.imageResolutionVertical = dataInputStream.readUnsignedShort();
        this.depth = dataInputStream.readUnsignedByte();
        this.compressionAlgorithm = dataInputStream.readUnsignedByte();
        dataInputStream.readUnsignedShort();
        long j10 = unsignedLong - 32;
        long recordLength = 0;
        for (int r02 = 0; r02 < unsignedByte; r02++) {
            FingerImageInfo fingerImageInfo = new FingerImageInfo(inputStream, this.compressionAlgorithm);
            recordLength += fingerImageInfo.getRecordLength();
            add(fingerImageInfo);
        }
        if (j10 != recordLength) {
            LOGGER.warning("ConstructedDataLength and dataLength differ: dataLength = " + j10 + ", constructedDataLength = " + recordLength);
        }
    }

    public void removeFingerImageInfo(int r12) {
        remove(r12);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("FingerInfo [");
        Iterator<FingerImageInfo> it = getSubRecords().iterator();
        while (it.hasNext()) {
            sb2.append(it.next().toString());
        }
        sb2.append("]");
        return sb2.toString();
    }

    @Override // org.jmrtd.lds.AbstractListInfo, org.jmrtd.lds.AbstractLDSInfo
    public void writeObject(OutputStream outputStream) throws IOException {
        List<FingerImageInfo> subRecords = getSubRecords();
        Iterator<FingerImageInfo> it = subRecords.iterator();
        long recordLength = 0;
        while (it.hasNext()) {
            recordLength += it.next().getRecordLength();
        }
        long j10 = 32 + recordLength;
        DataOutputStream dataOutputStream = outputStream instanceof DataOutputStream ? (DataOutputStream) outputStream : new DataOutputStream(outputStream);
        dataOutputStream.writeInt(FORMAT_IDENTIFIER);
        dataOutputStream.writeInt(VERSION_NUMBER);
        writeLong(j10, dataOutputStream, 6);
        dataOutputStream.writeShort(this.captureDeviceId);
        dataOutputStream.writeShort(this.acquisitionLevel);
        dataOutputStream.writeByte(subRecords.size());
        dataOutputStream.writeByte(this.scaleUnits);
        dataOutputStream.writeShort(this.scanResolutionHorizontal);
        dataOutputStream.writeShort(this.scanResolutionVertical);
        dataOutputStream.writeShort(this.imageResolutionHorizontal);
        dataOutputStream.writeShort(this.imageResolutionVertical);
        dataOutputStream.writeByte(this.depth);
        dataOutputStream.writeByte(this.compressionAlgorithm);
        dataOutputStream.writeShort(0);
        Iterator<FingerImageInfo> it2 = subRecords.iterator();
        while (it2.hasNext()) {
            it2.next().writeObject(dataOutputStream);
        }
    }
}
