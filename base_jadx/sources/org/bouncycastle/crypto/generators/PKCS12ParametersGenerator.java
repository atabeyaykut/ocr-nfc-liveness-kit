package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes2.dex */
public class PKCS12ParametersGenerator extends PBEParametersGenerator {
    public static final int IV_MATERIAL = 2;
    public static final int KEY_MATERIAL = 1;
    public static final int MAC_MATERIAL = 3;
    private Digest digest;

    /* renamed from: u, reason: collision with root package name */
    private int f11548u;

    /* renamed from: v, reason: collision with root package name */
    private int f11549v;

    public PKCS12ParametersGenerator(Digest digest) {
        this.digest = digest;
        if (digest instanceof ExtendedDigest) {
            this.f11548u = digest.getDigestSize();
            this.f11549v = ((ExtendedDigest) digest).getByteLength();
        } else {
            throw new IllegalArgumentException("Digest " + digest.getAlgorithmName() + " unsupported");
        }
    }

    private void adjust(byte[] bArr, int r72, byte[] bArr2) {
        int r02 = (bArr2[bArr2.length - 1] & 255) + (bArr[(bArr2.length + r72) - 1] & 255) + 1;
        bArr[(bArr2.length + r72) - 1] = (byte) r02;
        int r03 = r02 >>> 8;
        for (int length = bArr2.length - 2; length >= 0; length--) {
            int r32 = r72 + length;
            int r22 = (bArr2[length] & 255) + (bArr[r32] & 255) + r03;
            bArr[r32] = (byte) r22;
            r03 = r22 >>> 8;
        }
    }

    private byte[] generateDerivedKey(int r14, int r15) {
        byte[] bArr;
        byte[] bArr2;
        int r02 = this.f11549v;
        byte[] bArr3 = new byte[r02];
        byte[] bArr4 = new byte[r15];
        int r32 = 0;
        for (int r42 = 0; r42 != r02; r42++) {
            bArr3[r42] = (byte) r14;
        }
        byte[] bArr5 = this.salt;
        if (bArr5 == null || bArr5.length == 0) {
            bArr = new byte[0];
        } else {
            int r43 = this.f11549v;
            int length = (((bArr5.length + r43) - 1) / r43) * r43;
            bArr = new byte[length];
            for (int r52 = 0; r52 != length; r52++) {
                byte[] bArr6 = this.salt;
                bArr[r52] = bArr6[r52 % bArr6.length];
            }
        }
        byte[] bArr7 = this.password;
        if (bArr7 == null || bArr7.length == 0) {
            bArr2 = new byte[0];
        } else {
            int r53 = this.f11549v;
            int length2 = (((bArr7.length + r53) - 1) / r53) * r53;
            bArr2 = new byte[length2];
            for (int r6 = 0; r6 != length2; r6++) {
                byte[] bArr8 = this.password;
                bArr2[r6] = bArr8[r6 % bArr8.length];
            }
        }
        int length3 = bArr.length + bArr2.length;
        byte[] bArr9 = new byte[length3];
        System.arraycopy(bArr, 0, bArr9, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr9, bArr.length, bArr2.length);
        int r44 = this.f11549v;
        byte[] bArr10 = new byte[r44];
        int r72 = this.f11548u;
        int r82 = ((r15 + r72) - 1) / r72;
        byte[] bArr11 = new byte[r72];
        int r10 = 1;
        while (r10 <= r82) {
            this.digest.update(bArr3, r32, r02);
            this.digest.update(bArr9, r32, length3);
            this.digest.doFinal(bArr11, r32);
            for (int r11 = 1; r11 < this.iterationCount; r11++) {
                this.digest.update(bArr11, r32, r72);
                this.digest.doFinal(bArr11, r32);
            }
            for (int r33 = 0; r33 != r44; r33++) {
                bArr10[r33] = bArr11[r33 % r72];
            }
            int r34 = 0;
            while (true) {
                int r112 = this.f11549v;
                if (r34 == length3 / r112) {
                    break;
                }
                adjust(bArr9, r112 * r34, bArr10);
                r34++;
            }
            if (r10 == r82) {
                int r35 = r10 - 1;
                int r113 = this.f11548u;
                System.arraycopy(bArr11, 0, bArr4, r35 * r113, r15 - (r35 * r113));
            } else {
                System.arraycopy(bArr11, 0, bArr4, (r10 - 1) * this.f11548u, r72);
            }
            r10++;
            r32 = 0;
        }
        return bArr4;
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedMacParameters(int r42) {
        int r43 = r42 / 8;
        return new KeyParameter(generateDerivedKey(3, r43), 0, r43);
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int r42) {
        int r43 = r42 / 8;
        return new KeyParameter(generateDerivedKey(1, r43), 0, r43);
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int r6, int r72) {
        int r62 = r6 / 8;
        int r73 = r72 / 8;
        byte[] bArrGenerateDerivedKey = generateDerivedKey(1, r62);
        return new ParametersWithIV(new KeyParameter(bArrGenerateDerivedKey, 0, r62), generateDerivedKey(2, r73), 0, r73);
    }
}
