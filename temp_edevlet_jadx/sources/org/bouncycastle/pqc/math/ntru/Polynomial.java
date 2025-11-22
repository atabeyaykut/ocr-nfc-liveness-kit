package org.bouncycastle.pqc.math.ntru;

import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUParameterSet;

/* loaded from: classes2.dex */
public abstract class Polynomial {
    public short[] coeffs;
    protected NTRUParameterSet params;

    public Polynomial(NTRUParameterSet nTRUParameterSet) {
        this.coeffs = new short[nTRUParameterSet.n()];
        this.params = nTRUParameterSet;
    }

    public static short bothNegativeMask(short s7, short s10) {
        return (short) ((s7 & s10) >>> 15);
    }

    public static byte mod3(byte b10) {
        return (byte) ((b10 & 255) % 3);
    }

    public static short mod3(short s7) {
        return (short) ((s7 & HPKE.aead_EXPORT_ONLY) % 3);
    }

    public static int modQ(int r02, int r12) {
        return r02 % r12;
    }

    private void r2InvToRqInv(Polynomial polynomial, Polynomial polynomial2, Polynomial polynomial3, Polynomial polynomial4, Polynomial polynomial5) {
        int length = this.coeffs.length;
        for (int r22 = 0; r22 < length; r22++) {
            polynomial3.coeffs[r22] = (short) (-polynomial2.coeffs[r22]);
        }
        for (int r72 = 0; r72 < length; r72++) {
            this.coeffs[r72] = polynomial.coeffs[r72];
        }
        polynomial4.rqMul(this, polynomial3);
        short[] sArr = polynomial4.coeffs;
        sArr[0] = (short) (sArr[0] + 2);
        polynomial5.rqMul(polynomial4, this);
        polynomial4.rqMul(polynomial5, polynomial3);
        short[] sArr2 = polynomial4.coeffs;
        sArr2[0] = (short) (sArr2[0] + 2);
        rqMul(polynomial4, polynomial5);
        polynomial4.rqMul(this, polynomial3);
        short[] sArr3 = polynomial4.coeffs;
        sArr3[0] = (short) (sArr3[0] + 2);
        polynomial5.rqMul(polynomial4, this);
        polynomial4.rqMul(polynomial5, polynomial3);
        short[] sArr4 = polynomial4.coeffs;
        sArr4[0] = (short) (sArr4[0] + 2);
        rqMul(polynomial4, polynomial5);
    }

    public abstract void lift(Polynomial polynomial);

    public void mod3PhiN() {
        int r02 = this.params.n();
        for (int r12 = 0; r12 < r02; r12++) {
            short[] sArr = this.coeffs;
            sArr[r12] = mod3((short) ((sArr[r02 - 1] * 2) + sArr[r12]));
        }
    }

    public void modQPhiN() {
        int r02 = this.params.n();
        for (int r12 = 0; r12 < r02; r12++) {
            short[] sArr = this.coeffs;
            sArr[r12] = (short) (sArr[r12] - sArr[r02 - 1]);
        }
    }

    public void r2Inv(Polynomial polynomial) {
        r2Inv(polynomial, this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial());
    }

    public void r2Inv(Polynomial polynomial, Polynomial polynomial2, Polynomial polynomial3, Polynomial polynomial4, Polynomial polynomial5) {
        int r92;
        int length = this.coeffs.length;
        short s7 = 0;
        polynomial5.coeffs[0] = 1;
        for (int r6 = 0; r6 < length; r6++) {
            polynomial2.coeffs[r6] = 1;
        }
        int r62 = 0;
        while (true) {
            r92 = length - 1;
            if (r62 >= r92) {
                break;
            }
            short[] sArr = polynomial.coeffs;
            polynomial3.coeffs[(length - 2) - r62] = (short) ((sArr[r92] ^ sArr[r62]) & 1);
            r62++;
        }
        polynomial3.coeffs[r92] = 0;
        int r63 = 0;
        short s10 = 1;
        for (short s11 = 1; r63 < (r92 * 2) - s11; s11 = 1) {
            for (int r11 = r92; r11 > 0; r11--) {
                short[] sArr2 = polynomial4.coeffs;
                sArr2[r11] = sArr2[r11 - 1];
            }
            polynomial4.coeffs[s7] = s7;
            short s12 = polynomial3.coeffs[s7];
            short s13 = (short) (polynomial2.coeffs[s7] & s12);
            int r13 = -s10;
            short sBothNegativeMask = bothNegativeMask((short) r13, (short) (-s12));
            s10 = (short) (((short) (s10 ^ ((r13 ^ s10) & sBothNegativeMask))) + s11);
            for (int r132 = 0; r132 < length; r132++) {
                short[] sArr3 = polynomial2.coeffs;
                short s14 = sArr3[r132];
                short[] sArr4 = polynomial3.coeffs;
                short s15 = (short) (sBothNegativeMask & (s14 ^ sArr4[r132]));
                sArr3[r132] = (short) (s14 ^ s15);
                sArr4[r132] = (short) (s15 ^ sArr4[r132]);
                short[] sArr5 = polynomial4.coeffs;
                short s16 = sArr5[r132];
                short[] sArr6 = polynomial5.coeffs;
                short s17 = (short) ((sArr6[r132] ^ s16) & sBothNegativeMask);
                sArr5[r132] = (short) (s16 ^ s17);
                sArr6[r132] = (short) (sArr6[r132] ^ s17);
            }
            for (int r72 = 0; r72 < length; r72++) {
                short[] sArr7 = polynomial3.coeffs;
                sArr7[r72] = (short) (sArr7[r72] ^ (polynomial2.coeffs[r72] & s13));
            }
            for (int r73 = 0; r73 < length; r73++) {
                short[] sArr8 = polynomial5.coeffs;
                sArr8[r73] = (short) (sArr8[r73] ^ (polynomial4.coeffs[r73] & s13));
            }
            int r74 = 0;
            while (r74 < r92) {
                short[] sArr9 = polynomial3.coeffs;
                int r112 = r74 + 1;
                sArr9[r74] = sArr9[r112];
                r74 = r112;
            }
            polynomial3.coeffs[r92] = 0;
            r63++;
            s7 = 0;
        }
        int r82 = 0;
        while (true) {
            short[] sArr10 = this.coeffs;
            if (r82 >= r92) {
                sArr10[r92] = 0;
                return;
            } else {
                sArr10[r82] = polynomial4.coeffs[(length - 2) - r82];
                r82++;
            }
        }
    }

    public void rqInv(Polynomial polynomial) {
        rqInv(polynomial, this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial());
    }

    public void rqInv(Polynomial polynomial, Polynomial polynomial2, Polynomial polynomial3, Polynomial polynomial4, Polynomial polynomial5) {
        polynomial2.r2Inv(polynomial);
        r2InvToRqInv(polynomial2, polynomial, polynomial3, polynomial4, polynomial5);
    }

    public void rqMul(Polynomial polynomial, Polynomial polynomial2) {
        int r42;
        int length = this.coeffs.length;
        int r22 = 0;
        while (r22 < length) {
            this.coeffs[r22] = 0;
            for (int r32 = 1; r32 < length - r22; r32++) {
                short[] sArr = this.coeffs;
                sArr[r22] = (short) ((polynomial.coeffs[r22 + r32] * polynomial2.coeffs[length - r32]) + sArr[r22]);
            }
            int r33 = 0;
            while (true) {
                r42 = r22 + 1;
                if (r33 < r42) {
                    short[] sArr2 = this.coeffs;
                    sArr2[r22] = (short) ((polynomial.coeffs[r22 - r33] * polynomial2.coeffs[r33]) + sArr2[r22]);
                    r33++;
                }
            }
            r22 = r42;
        }
    }

    public void rqSumZeroFromBytes(byte[] bArr) {
        int length = this.coeffs.length;
        sqFromBytes(bArr);
        int r02 = length - 1;
        this.coeffs[r02] = 0;
        for (int r12 = 0; r12 < this.params.packDegree(); r12++) {
            short[] sArr = this.coeffs;
            sArr[r02] = (short) (sArr[r02] - sArr[r12]);
        }
    }

    public byte[] rqSumZeroToBytes(int r12) {
        return sqToBytes(r12);
    }

    public void rqToS3(Polynomial polynomial) {
        int length = this.coeffs.length;
        for (int r12 = 0; r12 < length; r12++) {
            this.coeffs[r12] = (short) modQ(polynomial.coeffs[r12] & HPKE.aead_EXPORT_ONLY, this.params.q());
            short sLogQ = (short) (this.coeffs[r12] >>> (this.params.logQ() - 1));
            short[] sArr = this.coeffs;
            sArr[r12] = (short) (sArr[r12] + (sLogQ << (1 - (this.params.logQ() & 1))));
        }
        mod3PhiN();
    }

    public void s3FromBytes(byte[] bArr) {
        int length = this.coeffs.length;
        for (int r22 = 0; r22 < this.params.packDegree() / 5; r22++) {
            byte b10 = bArr[r22];
            short[] sArr = this.coeffs;
            int r52 = r22 * 5;
            sArr[r52 + 0] = b10;
            int r32 = b10 & 255;
            sArr[r52 + 1] = (short) ((r32 * 171) >>> 9);
            sArr[r52 + 2] = (short) ((r32 * 57) >>> 9);
            sArr[r52 + 3] = (short) ((r32 * 19) >>> 9);
            sArr[r52 + 4] = (short) ((r32 * 203) >>> 14);
        }
        if (this.params.packDegree() > (this.params.packDegree() / 5) * 5) {
            int r23 = this.params.packDegree() / 5;
            byte b11 = bArr[r23];
            int r33 = 0;
            while (true) {
                int r42 = (r23 * 5) + r33;
                if (r42 >= this.params.packDegree()) {
                    break;
                }
                this.coeffs[r42] = b11;
                b11 = (byte) (((b11 & 255) * 171) >> 9);
                r33++;
            }
        }
        this.coeffs[length - 1] = 0;
        mod3PhiN();
    }

    public void s3Inv(Polynomial polynomial) {
        s3Inv(polynomial, this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial());
    }

    public void s3Inv(Polynomial polynomial, Polynomial polynomial2, Polynomial polynomial3, Polynomial polynomial4, Polynomial polynomial5) {
        int r92;
        int length = this.coeffs.length;
        short s7 = 0;
        polynomial5.coeffs[0] = 1;
        for (int r6 = 0; r6 < length; r6++) {
            polynomial2.coeffs[r6] = 1;
        }
        int r62 = 0;
        while (true) {
            r92 = length - 1;
            if (r62 >= r92) {
                break;
            }
            short[] sArr = polynomial.coeffs;
            polynomial3.coeffs[(length - 2) - r62] = mod3((short) (((sArr[r92] & 3) * 2) + (sArr[r62] & 3)));
            r62++;
        }
        polynomial3.coeffs[r92] = 0;
        int r63 = 0;
        short s10 = 1;
        for (short s11 = 1; r63 < (r92 * 2) - s11; s11 = 1) {
            for (int r11 = r92; r11 > 0; r11--) {
                short[] sArr2 = polynomial4.coeffs;
                sArr2[r11] = sArr2[r11 - 1];
            }
            polynomial4.coeffs[s7] = s7;
            short sMod3 = mod3((byte) (polynomial3.coeffs[s7] * 2 * polynomial2.coeffs[s7]));
            int r12 = -s10;
            short sBothNegativeMask = bothNegativeMask((short) r12, (short) (-polynomial3.coeffs[s7]));
            s10 = (short) (((short) (s10 ^ ((r12 ^ s10) & sBothNegativeMask))) + s11);
            for (int r122 = 0; r122 < length; r122++) {
                short[] sArr3 = polynomial2.coeffs;
                short s12 = sArr3[r122];
                short[] sArr4 = polynomial3.coeffs;
                short s13 = (short) (sBothNegativeMask & (s12 ^ sArr4[r122]));
                sArr3[r122] = (short) (s12 ^ s13);
                sArr4[r122] = (short) (s13 ^ sArr4[r122]);
                short[] sArr5 = polynomial4.coeffs;
                short s14 = sArr5[r122];
                short[] sArr6 = polynomial5.coeffs;
                short s15 = (short) ((sArr6[r122] ^ s14) & sBothNegativeMask);
                sArr5[r122] = (short) (s14 ^ s15);
                sArr6[r122] = (short) (sArr6[r122] ^ s15);
            }
            for (int r72 = 0; r72 < length; r72++) {
                polynomial3.coeffs[r72] = mod3((byte) ((polynomial2.coeffs[r72] * sMod3) + r8[r72]));
            }
            for (int r73 = 0; r73 < length; r73++) {
                polynomial5.coeffs[r73] = mod3((byte) ((polynomial4.coeffs[r73] * sMod3) + r8[r73]));
            }
            int r74 = 0;
            while (r74 < r92) {
                short[] sArr7 = polynomial3.coeffs;
                int r112 = r74 + 1;
                sArr7[r74] = sArr7[r112];
                r74 = r112;
            }
            polynomial3.coeffs[r92] = 0;
            r63++;
            s7 = 0;
        }
        short s16 = polynomial2.coeffs[0];
        for (int r82 = 0; r82 < r92; r82++) {
            this.coeffs[r82] = mod3((byte) (polynomial4.coeffs[(length - 2) - r82] * s16));
        }
        this.coeffs[r92] = 0;
    }

    public void s3Mul(Polynomial polynomial, Polynomial polynomial2) {
        rqMul(polynomial, polynomial2);
        mod3PhiN();
    }

    public byte[] s3ToBytes(int r72) {
        byte[] bArr = new byte[r72];
        byte b10 = 0;
        for (int r12 = 0; r12 < this.params.packDegree() / 5; r12++) {
            short[] sArr = this.coeffs;
            int r32 = r12 * 5;
            bArr[r12] = (byte) (((((byte) (((((byte) (((((byte) (((((byte) (sArr[r32 + 4] & 255)) * 3) + sArr[r32 + 3]) & 255)) * 3) + sArr[r32 + 2]) & 255)) * 3) + sArr[r32 + 1]) & 255)) * 3) + sArr[r32 + 0]) & 255);
        }
        if (this.params.packDegree() > (this.params.packDegree() / 5) * 5) {
            int r13 = this.params.packDegree() / 5;
            int r33 = r13 * 5;
            for (int r22 = (this.params.packDegree() - r33) - 1; r22 >= 0; r22--) {
                b10 = (byte) (((b10 * 3) + this.coeffs[r33 + r22]) & 255);
            }
            bArr[r13] = b10;
        }
        return bArr;
    }

    public abstract void sqFromBytes(byte[] bArr);

    public void sqMul(Polynomial polynomial, Polynomial polynomial2) {
        rqMul(polynomial, polynomial2);
        modQPhiN();
    }

    public abstract byte[] sqToBytes(int r12);

    public void trinaryZqToZ3() {
        int length = this.coeffs.length;
        for (int r12 = 0; r12 < length; r12++) {
            short[] sArr = this.coeffs;
            sArr[r12] = (short) modQ(sArr[r12] & HPKE.aead_EXPORT_ONLY, this.params.q());
            short[] sArr2 = this.coeffs;
            short s7 = sArr2[r12];
            sArr2[r12] = (short) ((s7 ^ (s7 >>> (this.params.logQ() - 1))) & 3);
        }
    }

    public void z3ToZq() {
        int length = this.coeffs.length;
        for (int r12 = 0; r12 < length; r12++) {
            short[] sArr = this.coeffs;
            short s7 = sArr[r12];
            sArr[r12] = (short) (s7 | ((-(s7 >>> 1)) & (this.params.q() - 1)));
        }
    }
}
