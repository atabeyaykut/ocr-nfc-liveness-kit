package org.bouncycastle.pqc.crypto.rainbow;

import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class RainbowDRBG extends SecureRandom {
    private Digest hashAlgo;
    private byte[] key;
    private byte[] seed;

    /* renamed from: v, reason: collision with root package name */
    private byte[] f11930v;

    public RainbowDRBG(byte[] bArr, Digest digest) {
        this.seed = bArr;
        this.hashAlgo = digest;
        init(256);
    }

    private void AES256_CTR_DRBG_Update(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[48];
        for (int r32 = 0; r32 < 3; r32++) {
            int r42 = 15;
            while (true) {
                if (r42 >= 0) {
                    byte b10 = bArr3[r42];
                    if ((b10 & 255) != 255) {
                        bArr3[r42] = (byte) (b10 + 1);
                        break;
                    } else {
                        bArr3[r42] = 0;
                        r42--;
                    }
                }
            }
            AES256_ECB(bArr2, bArr3, bArr4, r32 * 16);
        }
        if (bArr != null) {
            for (int r33 = 0; r33 < 48; r33++) {
                bArr4[r33] = (byte) (bArr4[r33] ^ bArr[r33]);
            }
        }
        System.arraycopy(bArr4, 0, bArr2, 0, bArr2.length);
        System.arraycopy(bArr4, 32, bArr3, 0, bArr3.length);
    }

    private void AES256_ECB(byte[] bArr, byte[] bArr2, byte[] bArr3, int r6) {
        try {
            AESEngine aESEngine = new AESEngine();
            aESEngine.init(true, new KeyParameter(bArr));
            for (int r32 = 0; r32 != bArr2.length; r32 += 16) {
                aESEngine.processBlock(bArr2, r32, bArr3, r6 + r32);
            }
        } catch (Throwable th2) {
            throw new IllegalStateException("drbg failure: " + th2.getMessage(), th2);
        }
    }

    private void init(int r52) {
        byte[] bArr = this.seed;
        if (bArr.length >= 48) {
            randombytes_init(bArr, r52);
        } else {
            randombytes_init(Arrays.concatenate(this.seed, RainbowUtil.hash(this.hashAlgo, bArr, 48 - bArr.length)), r52);
        }
    }

    private void randombytes_init(byte[] bArr, int r42) {
        byte[] bArr2 = new byte[48];
        System.arraycopy(bArr, 0, bArr2, 0, 48);
        byte[] bArr3 = new byte[32];
        this.key = bArr3;
        byte[] bArr4 = new byte[16];
        this.f11930v = bArr4;
        AES256_CTR_DRBG_Update(bArr2, bArr3, bArr4);
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void nextBytes(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int length = bArr.length;
        int r42 = 0;
        while (length > 0) {
            int r6 = 15;
            while (true) {
                if (r6 < 0) {
                    break;
                }
                byte[] bArr3 = this.f11930v;
                byte b10 = bArr3[r6];
                if ((b10 & 255) != 255) {
                    bArr3[r6] = (byte) (b10 + 1);
                    break;
                } else {
                    bArr3[r6] = 0;
                    r6--;
                }
            }
            AES256_ECB(this.key, this.f11930v, bArr2, 0);
            if (length > 15) {
                System.arraycopy(bArr2, 0, bArr, r42, 16);
                r42 += 16;
                length -= 16;
            } else {
                System.arraycopy(bArr2, 0, bArr, r42, length);
                length = 0;
            }
        }
        AES256_CTR_DRBG_Update(null, this.key, this.f11930v);
    }
}
