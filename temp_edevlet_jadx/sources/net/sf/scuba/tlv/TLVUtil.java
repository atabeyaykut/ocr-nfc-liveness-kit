package net.sf.scuba.tlv;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;

/* loaded from: classes2.dex */
public class TLVUtil implements ASN1Constants {
    private static final Logger LOGGER = Logger.getLogger("net.sf.scuba.tlv");

    private TLVUtil() {
    }

    public static byte[] getLengthAsBytes(int r52) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (r52 < 128) {
            byteArrayOutputStream.write(r52);
        } else {
            int r12 = log(r52, 256);
            byteArrayOutputStream.write(r12 | 128);
            for (int r22 = 0; r22 < r12; r22++) {
                int r32 = ((r12 - r22) - 1) * 8;
                byteArrayOutputStream.write(((255 << r32) & r52) >> r32);
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static int getLengthLength(int r02) {
        return getLengthAsBytes(r02).length;
    }

    public static byte[] getTagAsBytes(int r72) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int r12 = ((int) (Math.log(r72) / Math.log(256.0d))) + 1;
        for (int r42 = 0; r42 < r12; r42++) {
            int r52 = ((r12 - r42) - 1) * 8;
            byteArrayOutputStream.write(((255 << r52) & r72) >> r52);
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int tagClass = getTagClass(r72);
        if (tagClass == 1) {
            byteArray[0] = (byte) (byteArray[0] | 64);
        } else if (tagClass == 2) {
            byteArray[0] = (byte) (byteArray[0] | ISOFileInfo.DATA_BYTES1);
        } else if (tagClass == 3) {
            byteArray[0] = (byte) (byteArray[0] | ISO7816.INS_GET_RESPONSE);
        }
        if (!isPrimitive(r72)) {
            byteArray[0] = (byte) (byteArray[0] | ISO7816.INS_VERIFY);
        }
        return byteArray;
    }

    public static int getTagClass(int r42) {
        int r12 = 3;
        while (r12 >= 0 && ((255 << (r12 * 8)) & r42) == 0) {
            r12--;
        }
        int r13 = r12 * 8;
        int r43 = ((r42 & (255 << r13)) >> r13) & 255 & 192;
        if (r43 == 0) {
            return 0;
        }
        if (r43 != 64) {
            return r43 != 128 ? 3 : 2;
        }
        return 1;
    }

    public static int getTagLength(int r02) {
        return getTagAsBytes(r02).length;
    }

    public static boolean isPrimitive(int r32) {
        int r02 = 3;
        while (r02 >= 0 && ((255 << (r02 * 8)) & r32) == 0) {
            r02--;
        }
        int r03 = r02 * 8;
        return ((((r32 & (255 << r03)) >> r03) & 255) & 32) == 0;
    }

    private static int log(int r12, int r22) {
        int r02 = 0;
        while (r12 > 0) {
            r12 /= r22;
            r02++;
        }
        return r02;
    }

    public static byte[] unwrapDO(int r52, byte[] bArr) {
        if (bArr == null || bArr.length < 2) {
            throw new IllegalArgumentException("Wrapped data is null or length < 2");
        }
        TLVInputStream tLVInputStream = new TLVInputStream(new ByteArrayInputStream(bArr));
        try {
            try {
                int tag = tLVInputStream.readTag();
                if (tag == r52) {
                    int length = tLVInputStream.readLength();
                    byte[] bArr2 = new byte[length];
                    System.arraycopy(tLVInputStream.readValue(), 0, bArr2, 0, length);
                    return bArr2;
                }
                throw new IllegalArgumentException("Expected tag " + Integer.toHexString(r52) + ", found tag " + Integer.toHexString(tag));
            } catch (IOException e10) {
                throw new IllegalStateException("Error reading from stream", e10);
            }
        } finally {
            try {
                tLVInputStream.close();
            } catch (IOException e11) {
                LOGGER.log(Level.FINE, "Error closing stream", (Throwable) e11);
            }
        }
    }

    public static byte[] wrapDO(int r32, byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("Data to wrap is null");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                TLVOutputStream tLVOutputStream = new TLVOutputStream(byteArrayOutputStream);
                tLVOutputStream.writeTag(r32);
                tLVOutputStream.writeValue(bArr);
                tLVOutputStream.flush();
                tLVOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e10) {
                throw new IllegalStateException("Error writing stream", e10);
            }
        } finally {
            try {
                byteArrayOutputStream.close();
            } catch (IOException e11) {
                LOGGER.log(Level.FINE, "Error closing stream", (Throwable) e11);
            }
        }
    }
}
