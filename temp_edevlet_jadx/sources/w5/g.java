package w5;

import java.nio.charset.Charset;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f18754a = Charset.forName("UTF-8");

    public static abstract class a {
    }

    public static class b extends a {

        /* renamed from: a, reason: collision with root package name */
        public static final int[] f18755a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    }

    public static class c extends a {

        /* renamed from: a, reason: collision with root package name */
        public static final byte[] f18756a = {65, CVCAFile.CAR_TAG, 67, ISO7816.INS_REHABILITATE_CHV, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, ISOFileInfo.FCP_BYTE, 99, ISOFileInfo.FMD_BYTE, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, ISOFileInfo.FCI_BYTE, ISO7816.INS_MANAGE_CHANNEL, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, ISO7816.INS_DECREASE, 49, ISO7816.INS_INCREASE, 51, ISO7816.INS_DECREASE_STAMPED, 53, 54, 55, 56, 57, 43, 47};
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e0, code lost:
    
        if (r7 == 1) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00e2, code lost:
    
        if (r7 == 2) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e4, code lost:
    
        if (r7 == 3) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e6, code lost:
    
        if (r7 == 4) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e9, code lost:
    
        r15 = r9 + 1;
        r3[r9] = (byte) (r8 >> 10);
        r9 = r15 + 1;
        r3[r15] = (byte) (r8 >> 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f8, code lost:
    
        r3[r9] = (byte) (r8 >> 4);
        r9 = r9 + 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] a(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: w5.g.a(java.lang.String):byte[]");
    }

    public static byte[] b(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = c.f18756a;
        int r22 = (length / 3) * 4;
        if (length % 3 > 0) {
            r22 += 4;
        }
        byte[] bArr3 = new byte[r22];
        int r32 = 0;
        int r02 = length + 0;
        int r52 = 0;
        int r6 = -1;
        while (true) {
            int r72 = r32 + 3;
            if (r72 > r02) {
                break;
            }
            int r33 = (bArr[r32 + 2] & 255) | ((bArr[r32] & 255) << 16) | ((bArr[r32 + 1] & 255) << 8);
            bArr3[r52] = bArr2[(r33 >> 18) & 63];
            bArr3[r52 + 1] = bArr2[(r33 >> 12) & 63];
            bArr3[r52 + 2] = bArr2[(r33 >> 6) & 63];
            bArr3[r52 + 3] = bArr2[r33 & 63];
            r52 += 4;
            r6--;
            if (r6 == 0) {
                bArr3[r52] = 10;
                r52++;
                r6 = 19;
            }
            r32 = r72;
        }
        int r42 = r32 + 0;
        if (r42 == r02 - 1) {
            int r11 = (bArr[r32] & 255) << 4;
            int r03 = r52 + 1;
            bArr3[r52] = bArr2[(r11 >> 6) & 63];
            int r34 = r03 + 1;
            bArr3[r03] = bArr2[r11 & 63];
            bArr3[r34] = 61;
            bArr3[r34 + 1] = 61;
        } else if (r42 == r02 - 2) {
            int r112 = ((bArr[r32 + 1] & 255) << 2) | ((bArr[r32] & 255) << 10);
            int r04 = r52 + 1;
            bArr3[r52] = bArr2[(r112 >> 12) & 63];
            int r35 = r04 + 1;
            bArr3[r04] = bArr2[(r112 >> 6) & 63];
            bArr3[r35] = bArr2[r112 & 63];
            bArr3[r35 + 1] = 61;
        }
        return bArr3;
    }
}
