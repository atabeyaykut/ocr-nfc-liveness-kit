package org.bouncycastle.pqc.crypto.saber;

import org.bouncycastle.asn1.eac.CertificateBody;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
class Utils {
    private final int SABER_EP;
    private final int SABER_ET;
    private final int SABER_KEYBYTES;
    private final int SABER_L;
    private final int SABER_N;
    private final int SABER_POLYBYTES;
    private final boolean usingEffectiveMasking;

    public Utils(SABEREngine sABEREngine) {
        this.SABER_N = sABEREngine.getSABER_N();
        this.SABER_L = sABEREngine.getSABER_L();
        this.SABER_ET = sABEREngine.getSABER_ET();
        this.SABER_POLYBYTES = sABEREngine.getSABER_POLYBYTES();
        this.SABER_EP = sABEREngine.getSABER_EP();
        this.SABER_KEYBYTES = sABEREngine.getSABER_KEYBYTES();
        this.usingEffectiveMasking = sABEREngine.usingEffectiveMasking;
    }

    private void BS2POLq(byte[] bArr, int r92, short[] sArr) {
        short s7 = 0;
        if (this.usingEffectiveMasking) {
            while (s7 < this.SABER_N / 2) {
                short s10 = (short) (s7 * 2);
                int r02 = ((short) (s7 * 3)) + r92;
                int r42 = bArr[r02 + 0] & 255;
                byte b10 = bArr[r02 + 1];
                sArr[s10 + 0] = (short) (r42 | ((b10 & PassportService.SFI_DG15) << 8));
                sArr[s10 + 1] = (short) (((bArr[r02 + 2] & 255) << 4) | ((b10 >> 4) & 15));
                s7 = (short) (s7 + 1);
            }
            return;
        }
        while (s7 < this.SABER_N / 8) {
            short s11 = (short) (s7 * 8);
            int r03 = ((short) (s7 * 13)) + r92;
            int r43 = bArr[r03 + 0] & 255;
            byte b11 = bArr[r03 + 1];
            sArr[s11 + 0] = (short) (r43 | ((b11 & 31) << 8));
            int r44 = ((b11 >> 5) & 7) | ((bArr[r03 + 2] & 255) << 3);
            byte b12 = bArr[r03 + 3];
            sArr[s11 + 1] = (short) (r44 | ((b12 & 3) << 11));
            int r45 = (b12 >> 2) & 63;
            byte b13 = bArr[r03 + 4];
            sArr[s11 + 2] = (short) (r45 | ((b13 & 127) << 6));
            int r46 = ((b13 >> 7) & 1) | ((bArr[r03 + 5] & 255) << 1);
            byte b14 = bArr[r03 + 6];
            sArr[s11 + 3] = (short) (r46 | ((b14 & PassportService.SFI_DG15) << 9));
            int r47 = ((b14 >> 4) & 15) | ((bArr[r03 + 7] & 255) << 4);
            byte b15 = bArr[r03 + 8];
            sArr[s11 + 4] = (short) (r47 | ((b15 & 1) << 12));
            int r48 = (b15 >> 1) & CertificateBody.profileType;
            byte b16 = bArr[r03 + 9];
            sArr[s11 + 5] = (short) (r48 | ((b16 & 63) << 7));
            int r49 = ((b16 >> 6) & 3) | ((bArr[r03 + 10] & 255) << 2);
            byte b17 = bArr[r03 + 11];
            sArr[s11 + 6] = (short) (r49 | ((b17 & 7) << 10));
            sArr[s11 + 7] = (short) (((bArr[r03 + 12] & 255) << 5) | ((b17 >> 3) & 31));
            s7 = (short) (s7 + 1);
        }
    }

    private void POLp2BS(byte[] bArr, int r92, short[] sArr) {
        for (short s7 = 0; s7 < this.SABER_N / 4; s7 = (short) (s7 + 1)) {
            short s10 = (short) (s7 * 4);
            int r12 = ((short) (s7 * 5)) + r92;
            short s11 = sArr[s10 + 0];
            bArr[r12 + 0] = (byte) (s11 & 255);
            short s12 = sArr[s10 + 1];
            bArr[r12 + 1] = (byte) (((s11 >> 8) & 3) | ((s12 & 63) << 2));
            int r42 = (s12 >> 6) & 15;
            short s13 = sArr[s10 + 2];
            bArr[r12 + 2] = (byte) (r42 | ((s13 & 15) << 4));
            short s14 = sArr[s10 + 3];
            bArr[r12 + 3] = (byte) (((s13 >> 4) & 63) | ((s14 & 3) << 6));
            bArr[r12 + 4] = (byte) ((s14 >> 2) & 255);
        }
    }

    private void POLq2BS(byte[] bArr, int r92, short[] sArr) {
        short s7 = 0;
        if (this.usingEffectiveMasking) {
            while (s7 < this.SABER_N / 2) {
                short s10 = (short) (s7 * 2);
                int r02 = ((short) (s7 * 3)) + r92;
                short s11 = sArr[s10 + 0];
                bArr[r02 + 0] = (byte) (s11 & 255);
                short s12 = sArr[s10 + 1];
                bArr[r02 + 1] = (byte) (((s11 >> 8) & 15) | ((s12 & 15) << 4));
                bArr[r02 + 2] = (byte) ((s12 >> 4) & 255);
                s7 = (short) (s7 + 1);
            }
            return;
        }
        while (s7 < this.SABER_N / 8) {
            short s13 = (short) (s7 * 8);
            int r03 = ((short) (s7 * 13)) + r92;
            short s14 = sArr[s13 + 0];
            bArr[r03 + 0] = (byte) (s14 & 255);
            short s15 = sArr[s13 + 1];
            bArr[r03 + 1] = (byte) (((s14 >> 8) & 31) | ((s15 & 7) << 5));
            bArr[r03 + 2] = (byte) ((s15 >> 3) & 255);
            int r42 = (s15 >> 11) & 3;
            short s16 = sArr[s13 + 2];
            bArr[r03 + 3] = (byte) (r42 | ((s16 & 63) << 2));
            int r43 = (s16 >> 6) & CertificateBody.profileType;
            short s17 = sArr[s13 + 3];
            bArr[r03 + 4] = (byte) (r43 | ((s17 & 1) << 7));
            bArr[r03 + 5] = (byte) ((s17 >> 1) & 255);
            int r44 = (s17 >> 9) & 15;
            short s18 = sArr[s13 + 4];
            bArr[r03 + 6] = (byte) (r44 | ((s18 & 15) << 4));
            bArr[r03 + 7] = (byte) ((s18 >> 4) & 255);
            int r45 = (s18 >> 12) & 1;
            short s19 = sArr[s13 + 5];
            bArr[r03 + 8] = (byte) (r45 | ((s19 & 127) << 1));
            int r46 = (s19 >> 7) & 63;
            short s20 = sArr[s13 + 6];
            bArr[r03 + 9] = (byte) (r46 | ((s20 & 3) << 6));
            bArr[r03 + 10] = (byte) ((s20 >> 2) & 255);
            short s21 = sArr[s13 + 7];
            bArr[r03 + 11] = (byte) (((s20 >> 10) & 7) | ((s21 & 31) << 3));
            bArr[r03 + 12] = (byte) ((s21 >> 5) & 255);
            s7 = (short) (s7 + 1);
        }
    }

    public void BS2POLT(byte[] bArr, int r12, short[] sArr) {
        int r02 = this.SABER_ET;
        short s7 = 0;
        if (r02 == 3) {
            while (s7 < this.SABER_N / 8) {
                short s10 = (short) (s7 * 8);
                int r03 = ((short) (s7 * 3)) + r12;
                byte b10 = bArr[r03 + 0];
                sArr[s10 + 0] = (short) (b10 & 7);
                sArr[s10 + 1] = (short) ((b10 >> 3) & 7);
                byte b11 = bArr[r03 + 1];
                sArr[s10 + 2] = (short) (((b10 >> 6) & 3) | ((b11 & 1) << 2));
                sArr[s10 + 3] = (short) ((b11 >> 1) & 7);
                sArr[s10 + 4] = (short) ((b11 >> 4) & 7);
                byte b12 = bArr[r03 + 2];
                sArr[s10 + 5] = (short) (((b11 >> 7) & 1) | ((b12 & 3) << 1));
                sArr[s10 + 6] = (short) ((b12 >> 2) & 7);
                sArr[s10 + 7] = (short) ((b12 >> 5) & 7);
                s7 = (short) (s7 + 1);
            }
            return;
        }
        if (r02 == 4) {
            while (s7 < this.SABER_N / 2) {
                short s11 = (short) (s7 * 2);
                byte b13 = bArr[r12 + s7];
                sArr[s11] = (short) (b13 & PassportService.SFI_DG15);
                sArr[s11 + 1] = (short) ((b13 >> 4) & 15);
                s7 = (short) (s7 + 1);
            }
            return;
        }
        if (r02 == 6) {
            while (s7 < this.SABER_N / 4) {
                short s12 = (short) (s7 * 4);
                int r04 = ((short) (s7 * 3)) + r12;
                byte b14 = bArr[r04 + 0];
                sArr[s12 + 0] = (short) (b14 & 63);
                byte b15 = bArr[r04 + 1];
                sArr[s12 + 1] = (short) (((b14 >> 6) & 3) | ((b15 & PassportService.SFI_DG15) << 2));
                byte b16 = bArr[r04 + 2];
                sArr[s12 + 2] = (short) (((b15 & 255) >> 4) | ((b16 & 3) << 4));
                sArr[s12 + 3] = (short) ((b16 & 255) >> 2);
                s7 = (short) (s7 + 1);
            }
        }
    }

    public void BS2POLVECp(byte[] bArr, short[][] sArr) {
        for (byte b10 = 0; b10 < this.SABER_L; b10 = (byte) (b10 + 1)) {
            BS2POLp(bArr, ((this.SABER_EP * this.SABER_N) / 8) * b10, sArr[b10]);
        }
    }

    public void BS2POLVECq(byte[] bArr, int r52, short[][] sArr) {
        for (byte b10 = 0; b10 < this.SABER_L; b10 = (byte) (b10 + 1)) {
            BS2POLq(bArr, (this.SABER_POLYBYTES * b10) + r52, sArr[b10]);
        }
    }

    public void BS2POLmsg(byte[] bArr, short[] sArr) {
        for (byte b10 = 0; b10 < this.SABER_KEYBYTES; b10 = (byte) (b10 + 1)) {
            for (byte b11 = 0; b11 < 8; b11 = (byte) (b11 + 1)) {
                sArr[(b10 * 8) + b11] = (short) ((bArr[b10] >> b11) & 1);
            }
        }
    }

    public void BS2POLp(byte[] bArr, int r92, short[] sArr) {
        for (short s7 = 0; s7 < this.SABER_N / 4; s7 = (short) (s7 + 1)) {
            short s10 = (short) (s7 * 4);
            int r12 = ((short) (s7 * 5)) + r92;
            int r42 = bArr[r12 + 0] & 255;
            byte b10 = bArr[r12 + 1];
            sArr[s10 + 0] = (short) (r42 | ((b10 & 3) << 8));
            int r43 = (b10 >> 2) & 63;
            byte b11 = bArr[r12 + 2];
            sArr[s10 + 1] = (short) (r43 | ((b11 & PassportService.SFI_DG15) << 6));
            int r44 = (b11 >> 4) & 15;
            byte b12 = bArr[r12 + 3];
            sArr[s10 + 2] = (short) (r44 | ((b12 & 63) << 4));
            sArr[s10 + 3] = (short) (((bArr[r12 + 4] & 255) << 2) | ((b12 >> 6) & 3));
        }
    }

    public void POLT2BS(byte[] bArr, int r12, short[] sArr) {
        int r02 = this.SABER_ET;
        short s7 = 0;
        if (r02 == 3) {
            while (s7 < this.SABER_N / 8) {
                short s10 = (short) (s7 * 8);
                int r03 = ((short) (s7 * 3)) + r12;
                int r72 = (sArr[s10 + 0] & 7) | ((sArr[s10 + 1] & 7) << 3);
                short s11 = sArr[s10 + 2];
                bArr[r03 + 0] = (byte) (r72 | ((s11 & 3) << 6));
                int r73 = ((s11 >> 2) & 1) | ((sArr[s10 + 3] & 7) << 1) | ((sArr[s10 + 4] & 7) << 4);
                short s12 = sArr[s10 + 5];
                bArr[r03 + 1] = (byte) (r73 | ((s12 & 1) << 7));
                bArr[r03 + 2] = (byte) (((sArr[s10 + 7] & 7) << 5) | ((s12 >> 1) & 3) | ((sArr[s10 + 6] & 7) << 2));
                s7 = (short) (s7 + 1);
            }
            return;
        }
        if (r02 == 4) {
            while (s7 < this.SABER_N / 2) {
                short s13 = (short) (s7 * 2);
                bArr[r12 + s7] = (byte) (((sArr[s13 + 1] & 15) << 4) | (sArr[s13] & 15));
                s7 = (short) (s7 + 1);
            }
            return;
        }
        if (r02 == 6) {
            while (s7 < this.SABER_N / 4) {
                short s14 = (short) (s7 * 4);
                int r04 = ((short) (s7 * 3)) + r12;
                int r74 = sArr[s14 + 0] & 63;
                short s15 = sArr[s14 + 1];
                bArr[r04 + 0] = (byte) (r74 | ((s15 & 3) << 6));
                int r75 = (s15 >> 2) & 15;
                short s16 = sArr[s14 + 2];
                bArr[r04 + 1] = (byte) (r75 | ((s16 & 15) << 4));
                bArr[r04 + 2] = (byte) (((sArr[s14 + 3] & 63) << 2) | ((s16 >> 4) & 3));
                s7 = (short) (s7 + 1);
            }
        }
    }

    public void POLVECp2BS(byte[] bArr, short[][] sArr) {
        for (byte b10 = 0; b10 < this.SABER_L; b10 = (byte) (b10 + 1)) {
            POLp2BS(bArr, ((this.SABER_EP * this.SABER_N) / 8) * b10, sArr[b10]);
        }
    }

    public void POLVECq2BS(byte[] bArr, short[][] sArr) {
        for (byte b10 = 0; b10 < this.SABER_L; b10 = (byte) (b10 + 1)) {
            POLq2BS(bArr, this.SABER_POLYBYTES * b10, sArr[b10]);
        }
    }

    public void POLmsg2BS(byte[] bArr, short[] sArr) {
        for (byte b10 = 0; b10 < this.SABER_KEYBYTES; b10 = (byte) (b10 + 1)) {
            for (byte b11 = 0; b11 < 8; b11 = (byte) (b11 + 1)) {
                bArr[b10] = (byte) (bArr[b10] | ((sArr[(b10 * 8) + b11] & 1) << b11));
            }
        }
    }
}
