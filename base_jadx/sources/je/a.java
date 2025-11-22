package je;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f8497a = {65, CVCAFile.CAR_TAG, 67, ISO7816.INS_REHABILITATE_CHV, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, ISOFileInfo.FCP_BYTE, 99, ISOFileInfo.FMD_BYTE, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, ISOFileInfo.FCI_BYTE, ISO7816.INS_MANAGE_CHANNEL, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, ISO7816.INS_DECREASE, 49, ISO7816.INS_INCREASE, 51, ISO7816.INS_DECREASE_STAMPED, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f8498b = new byte[128];

    static {
        int r02 = 0;
        while (true) {
            byte[] bArr = f8497a;
            if (r02 >= bArr.length) {
                return;
            }
            f8498b[bArr[r02]] = (byte) r02;
            r02++;
        }
    }

    public static byte[] a(String str) throws CharacterCodingException {
        byte[] bArrC = c(str);
        if (bArrC == null || bArrC.length == 0) {
            throw new IllegalArgumentException("Can not decode NULL or empty string.");
        }
        int length = bArrC.length;
        while (true) {
            int r12 = length - 1;
            if (bArrC[r12] != 61) {
                break;
            }
            length = r12;
        }
        int length2 = length - (bArrC.length / 4);
        byte[] bArr = new byte[length2];
        int r22 = 0;
        for (int r32 = 0; r32 < bArrC.length; r32++) {
            bArrC[r32] = f8498b[bArrC[r32]];
        }
        int r33 = 0;
        while (r22 < length2 - 2) {
            int r52 = r33 + 1;
            bArr[r22] = (byte) (((bArrC[r33] << 2) & 255) | ((bArrC[r52] >>> 4) & 3));
            int r6 = r33 + 2;
            bArr[r22 + 1] = (byte) (((bArrC[r52] << 4) & 255) | ((bArrC[r6] >>> 2) & 15));
            bArr[r22 + 2] = (byte) (((bArrC[r6] << 6) & 255) | (bArrC[r33 + 3] & 63));
            r33 += 4;
            r22 += 3;
        }
        if (r22 < length2) {
            bArr[r22] = (byte) (((bArrC[r33] << 2) & 255) | ((bArrC[r33 + 1] >>> 4) & 3));
        }
        int r23 = r22 + 1;
        if (r23 < length2) {
            bArr[r23] = (byte) (((bArrC[r33 + 2] >>> 2) & 15) | ((bArrC[r33 + 1] << 4) & 255));
        }
        return bArr;
    }

    public static String b(String str) throws CharacterCodingException {
        byte[] bArr;
        byte[] bArrC = c(str);
        if (bArrC == null || bArrC.length == 0) {
            throw new IllegalArgumentException("Can not encode NULL or empty byte array.");
        }
        int length = ((bArrC.length + 2) / 3) * 4;
        byte[] bArr2 = new byte[length];
        int r22 = 0;
        int r32 = 0;
        while (true) {
            int length2 = bArrC.length - 2;
            bArr = f8497a;
            if (r22 >= length2) {
                break;
            }
            int r42 = r32 + 1;
            bArr2[r32] = bArr[(bArrC[r22] >>> 2) & 63];
            int r33 = r42 + 1;
            int r6 = r22 + 1;
            bArr2[r42] = bArr[((bArrC[r6] >>> 4) & 15) | ((bArrC[r22] << 4) & 63)];
            int r43 = r33 + 1;
            int r72 = r22 + 2;
            bArr2[r33] = bArr[((bArrC[r6] << 2) & 63) | ((bArrC[r72] >>> 6) & 3)];
            r32 = r43 + 1;
            bArr2[r43] = bArr[bArrC[r72] & 63];
            r22 += 3;
        }
        if (r22 < bArrC.length) {
            int r44 = r32 + 1;
            bArr2[r32] = bArr[(bArrC[r22] >>> 2) & 63];
            if (r22 < bArrC.length - 1) {
                int r34 = r44 + 1;
                int r62 = r22 + 1;
                bArr2[r44] = bArr[((bArrC[r22] << 4) & 63) | ((bArrC[r62] >>> 4) & 15)];
                bArr2[r34] = bArr[(bArrC[r62] << 2) & 63];
                r32 = r34 + 1;
            } else {
                r32 = r44 + 1;
                bArr2[r44] = bArr[(bArrC[r22] << 4) & 63];
            }
        }
        while (r32 < length) {
            bArr2[r32] = 61;
            r32++;
        }
        return new String(bArr2, StandardCharsets.UTF_8);
    }

    public static byte[] c(String str) throws CharacterCodingException {
        CharsetEncoder charsetEncoderNewEncoder = StandardCharsets.UTF_8.newEncoder();
        charsetEncoderNewEncoder.onMalformedInput(CodingErrorAction.REPORT);
        charsetEncoderNewEncoder.onUnmappableCharacter(CodingErrorAction.REPORT);
        try {
            ByteBuffer byteBufferEncode = charsetEncoderNewEncoder.encode(CharBuffer.wrap(str));
            byte[] bArrArray = byteBufferEncode.array();
            int r32 = byteBufferEncode.limit();
            byte[] bArr = new byte[r32];
            System.arraycopy(bArrArray, 0, bArr, 0, r32);
            return bArr;
        } catch (CharacterCodingException e10) {
            e10.printStackTrace();
            return str.getBytes();
        }
    }
}
