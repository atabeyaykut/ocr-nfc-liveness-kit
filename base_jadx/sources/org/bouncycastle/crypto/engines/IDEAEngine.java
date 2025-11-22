package org.bouncycastle.crypto.engines;

import ab.b;
import androidx.core.view.MotionEventCompat;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes2.dex */
public class IDEAEngine implements BlockCipher {
    private static final int BASE = 65537;
    protected static final int BLOCK_SIZE = 8;
    private static final int MASK = 65535;
    private boolean forEncryption;
    private int[] workingKey = null;

    public IDEAEngine() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128));
    }

    private int bytesToWord(byte[] bArr, int r42) {
        return ((bArr[r42] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + (bArr[r42 + 1] & 255);
    }

    private int[] expandKey(byte[] bArr) {
        int r22;
        int[] r12 = new int[52];
        int r32 = 0;
        if (bArr.length < 16) {
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArr, 0, bArr2, 16 - bArr.length, bArr.length);
            bArr = bArr2;
        }
        while (true) {
            if (r32 >= 8) {
                break;
            }
            r12[r32] = bytesToWord(bArr, r32 * 2);
            r32++;
        }
        for (r22 = 8; r22 < 52; r22++) {
            int r72 = r22 & 7;
            if (r72 < 6) {
                r12[r22] = (((r12[r22 - 7] & CertificateBody.profileType) << 9) | (r12[r22 - 6] >> 7)) & 65535;
            } else if (r72 == 6) {
                r12[r22] = (((r12[r22 - 7] & CertificateBody.profileType) << 9) | (r12[r22 - 14] >> 7)) & 65535;
            } else {
                r12[r22] = (((r12[r22 - 15] & CertificateBody.profileType) << 9) | (r12[r22 - 14] >> 7)) & 65535;
            }
        }
        return r12;
    }

    private int[] generateWorkingKey(boolean z10, byte[] bArr) {
        return z10 ? expandKey(bArr) : invertKey(expandKey(bArr));
    }

    private void ideaFunc(int[] r92, byte[] bArr, int r11, byte[] bArr2, int r13) {
        int r02 = bytesToWord(bArr, r11);
        int r12 = bytesToWord(bArr, r11 + 2);
        int r22 = bytesToWord(bArr, r11 + 4);
        int r10 = bytesToWord(bArr, r11 + 6);
        int r112 = 0;
        int r32 = r22;
        int r23 = r12;
        int r14 = r02;
        int r03 = 0;
        while (r112 < 8) {
            int r42 = r03 + 1;
            int r04 = mul(r14, r92[r03]);
            int r15 = r42 + 1;
            int r24 = (r23 + r92[r42]) & 65535;
            int r52 = r15 + 1;
            int r16 = (r32 + r92[r15]) & 65535;
            int r33 = r52 + 1;
            int r102 = mul(r10, r92[r52]);
            int r72 = r33 + 1;
            int r34 = mul(r16 ^ r04, r92[r33]);
            int r53 = mul(((r24 ^ r102) + r34) & 65535, r92[r72]);
            int r35 = (r34 + r53) & 65535;
            r10 = r102 ^ r35;
            r32 = r35 ^ r24;
            r112++;
            r23 = r16 ^ r53;
            r14 = r04 ^ r53;
            r03 = r72 + 1;
        }
        int r113 = r03 + 1;
        wordToBytes(mul(r14, r92[r03]), bArr2, r13);
        int r05 = r113 + 1;
        wordToBytes(r32 + r92[r113], bArr2, r13 + 2);
        wordToBytes(r23 + r92[r05], bArr2, r13 + 4);
        wordToBytes(mul(r10, r92[r05 + 1]), bArr2, r13 + 6);
    }

    private int[] invertKey(int[] r92) {
        int[] r02 = new int[52];
        int r12 = mulInv(r92[0]);
        int r22 = 1;
        int r32 = addInv(r92[1]);
        int r42 = addInv(r92[2]);
        r02[51] = mulInv(r92[3]);
        r02[50] = r42;
        r02[49] = r32;
        int r33 = 48;
        r02[48] = r12;
        int r13 = 4;
        while (r22 < 8) {
            int r43 = r13 + 1;
            int r14 = r92[r13];
            int r52 = r43 + 1;
            int r34 = r33 - 1;
            r02[r34] = r92[r43];
            int r35 = r34 - 1;
            r02[r35] = r14;
            int r15 = r52 + 1;
            int r44 = mulInv(r92[r52]);
            int r53 = r15 + 1;
            int r16 = addInv(r92[r15]);
            int r6 = r53 + 1;
            int r54 = addInv(r92[r53]);
            int r36 = r35 - 1;
            r02[r36] = mulInv(r92[r6]);
            int r37 = r36 - 1;
            r02[r37] = r16;
            int r38 = r37 - 1;
            r02[r38] = r54;
            r33 = r38 - 1;
            r02[r33] = r44;
            r22++;
            r13 = r6 + 1;
        }
        int r23 = r13 + 1;
        int r17 = r92[r13];
        int r45 = r23 + 1;
        int r39 = r33 - 1;
        r02[r39] = r92[r23];
        int r310 = r39 - 1;
        r02[r310] = r17;
        int r18 = r45 + 1;
        int r24 = mulInv(r92[r45]);
        int r46 = r18 + 1;
        int r19 = addInv(r92[r18]);
        int r55 = r46 + 1;
        int r47 = addInv(r92[r46]);
        int r311 = r310 - 1;
        r02[r311] = mulInv(r92[r55]);
        int r312 = r311 - 1;
        r02[r312] = r47;
        int r313 = r312 - 1;
        r02[r313] = r19;
        r02[r313 - 1] = r24;
        return r02;
    }

    private int mul(int r32, int r42) {
        int r12;
        if (r32 == 0) {
            r12 = BASE - r42;
        } else if (r42 == 0) {
            r12 = BASE - r32;
        } else {
            int r33 = r32 * r42;
            int r43 = r33 & 65535;
            int r34 = r33 >>> 16;
            r12 = (r43 - r34) + (r43 < r34 ? 1 : 0);
        }
        return r12 & 65535;
    }

    private int mulInv(int r72) {
        if (r72 < 2) {
            return r72;
        }
        int r12 = BASE / r72;
        int r02 = BASE % r72;
        int r32 = 1;
        while (r02 != 1) {
            int r52 = r72 / r02;
            r72 %= r02;
            r32 = ((r52 * r12) + r32) & 65535;
            if (r72 == 1) {
                return r32;
            }
            int r53 = r02 / r72;
            r02 %= r72;
            r12 = ((r53 * r32) + r12) & 65535;
        }
        return (1 - r12) & 65535;
    }

    private void wordToBytes(int r22, byte[] bArr, int r42) {
        bArr[r42] = (byte) (r22 >>> 8);
        bArr[r42 + 1] = (byte) r22;
    }

    public int addInv(int r22) {
        return (0 - r22) & 65535;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "IDEA";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to IDEA init - "));
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        this.workingKey = generateWorkingKey(z10, key);
        this.forEncryption = z10;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), key.length * 8, cipherParameters, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r82, byte[] bArr2, int r10) {
        int[] r12 = this.workingKey;
        if (r12 == null) {
            throw new IllegalStateException("IDEA engine not initialised");
        }
        if (r82 + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r10 + 8 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        ideaFunc(r12, bArr, r82, bArr2, r10);
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
