package org.bouncycastle.util.encoders;

import org.bouncycastle.asn1.eac.CertificateBody;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public class UTF8 {
    private static final byte C_CR1 = 1;
    private static final byte C_CR2 = 2;
    private static final byte C_CR3 = 3;
    private static final byte C_ILL = 0;
    private static final byte C_L2A = 4;
    private static final byte C_L3A = 5;
    private static final byte C_L3B = 6;
    private static final byte C_L3C = 7;
    private static final byte C_L4A = 8;
    private static final byte C_L4B = 9;
    private static final byte C_L4C = 10;
    private static final byte S_CS1 = 0;
    private static final byte S_CS2 = 16;
    private static final byte S_CS3 = 32;
    private static final byte S_END = -1;
    private static final byte S_ERR = -2;
    private static final byte S_P3A = 48;
    private static final byte S_P3B = 64;
    private static final byte S_P4A = 80;
    private static final byte S_P4B = 96;
    private static final short[] firstUnitTable = new short[128];
    private static final byte[] transitionTable;

    static {
        byte[] bArr = new byte[112];
        transitionTable = bArr;
        byte[] bArr2 = new byte[128];
        fill(bArr2, 0, 15, (byte) 1);
        fill(bArr2, 16, 31, (byte) 2);
        fill(bArr2, 32, 63, (byte) 3);
        fill(bArr2, 64, 65, (byte) 0);
        fill(bArr2, 66, 95, (byte) 4);
        fill(bArr2, 96, 96, (byte) 5);
        fill(bArr2, 97, 108, (byte) 6);
        fill(bArr2, 109, 109, (byte) 7);
        fill(bArr2, 110, 111, (byte) 6);
        fill(bArr2, 112, 112, (byte) 8);
        fill(bArr2, 113, 115, (byte) 9);
        fill(bArr2, 116, 116, (byte) 10);
        fill(bArr2, 117, CertificateBody.profileType, (byte) 0);
        fill(bArr, 0, bArr.length - 1, S_ERR);
        fill(bArr, 8, 11, S_END);
        fill(bArr, 24, 27, (byte) 0);
        fill(bArr, 40, 43, (byte) 16);
        fill(bArr, 58, 59, (byte) 0);
        fill(bArr, 72, 73, (byte) 0);
        fill(bArr, 89, 91, (byte) 16);
        fill(bArr, 104, 104, (byte) 16);
        byte[] bArr3 = {0, 0, 0, 0, 31, PassportService.SFI_DG15, PassportService.SFI_DG15, PassportService.SFI_DG15, 7, 7, 7};
        byte[] bArr4 = {S_ERR, S_ERR, S_ERR, S_ERR, 0, 48, 16, S_P3B, S_P4A, 32, S_P4B};
        for (int r42 = 0; r42 < 128; r42++) {
            byte b10 = bArr2[r42];
            firstUnitTable[r42] = (short) (bArr4[b10] | ((bArr3[b10] & r42) << 8));
        }
    }

    private static void fill(byte[] bArr, int r12, int r22, byte b10) {
        while (r12 <= r22) {
            bArr[r12] = b10;
            r12++;
        }
    }

    public static int transcodeToUTF16(byte[] bArr, int r72, int r82, char[] cArr) {
        int r83 = r82 + r72;
        int r02 = 0;
        while (r72 < r83) {
            int r12 = r72 + 1;
            byte b10 = bArr[r72];
            if (b10 < 0) {
                short s7 = firstUnitTable[b10 & 127];
                int r32 = s7 >>> 8;
                byte b11 = (byte) s7;
                while (b11 >= 0) {
                    if (r12 >= r83) {
                        return -1;
                    }
                    int r42 = r12 + 1;
                    byte b12 = bArr[r12];
                    r32 = (r32 << 6) | (b12 & 63);
                    b11 = transitionTable[b11 + ((b12 & S_END) >>> 4)];
                    r12 = r42;
                }
                if (b11 == -2) {
                    return -1;
                }
                if (r32 <= 65535) {
                    if (r02 >= cArr.length) {
                        return -1;
                    }
                    cArr[r02] = (char) r32;
                    r02++;
                } else {
                    if (r02 >= cArr.length - 1) {
                        return -1;
                    }
                    int r73 = r02 + 1;
                    cArr[r02] = (char) ((r32 >>> 10) + 55232);
                    r02 = r73 + 1;
                    cArr[r73] = (char) ((r32 & 1023) | 56320);
                }
                r72 = r12;
            } else {
                if (r02 >= cArr.length) {
                    return -1;
                }
                cArr[r02] = (char) b10;
                r72 = r12;
                r02++;
            }
        }
        return r02;
    }

    public static int transcodeToUTF16(byte[] bArr, char[] cArr) {
        return transcodeToUTF16(bArr, 0, bArr.length, cArr);
    }
}
