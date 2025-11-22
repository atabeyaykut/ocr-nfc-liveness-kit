package org.bouncycastle.pqc.crypto.sphincs;

import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Strings;

/* loaded from: classes2.dex */
class HashFunctions {
    private static final byte[] hashc = Strings.toByteArray("expand 32-byte to 64-byte state!");
    private final Digest dig256;
    private final Digest dig512;
    private final Permute perm;

    public HashFunctions(Digest digest) {
        this(digest, null);
    }

    public HashFunctions(Digest digest, Digest digest2) {
        this.perm = new Permute();
        this.dig256 = digest;
        this.dig512 = digest2;
    }

    public Digest getMessageHash() {
        return this.dig512;
    }

    public int hash_2n_n(byte[] bArr, int r82, byte[] bArr2, int r10) {
        byte[] bArr3 = new byte[64];
        for (int r22 = 0; r22 < 32; r22++) {
            bArr3[r22] = bArr2[r10 + r22];
            bArr3[r22 + 32] = hashc[r22];
        }
        this.perm.chacha_permute(bArr3, bArr3);
        for (int r23 = 0; r23 < 32; r23++) {
            bArr3[r23] = (byte) (bArr3[r23] ^ bArr2[(r10 + r23) + 32]);
        }
        this.perm.chacha_permute(bArr3, bArr3);
        for (int r92 = 0; r92 < 32; r92++) {
            bArr[r82 + r92] = bArr3[r92];
        }
        return 0;
    }

    public int hash_2n_n_mask(byte[] bArr, int r82, byte[] bArr2, int r10, byte[] bArr3, int r12) {
        byte[] bArr4 = new byte[64];
        for (int r32 = 0; r32 < 64; r32++) {
            bArr4[r32] = (byte) (bArr2[r10 + r32] ^ bArr3[r12 + r32]);
        }
        return hash_2n_n(bArr, r82, bArr4, 0);
    }

    public int hash_n_n(byte[] bArr, int r72, byte[] bArr2, int r92) {
        byte[] bArr3 = new byte[64];
        for (int r22 = 0; r22 < 32; r22++) {
            bArr3[r22] = bArr2[r92 + r22];
            bArr3[r22 + 32] = hashc[r22];
        }
        this.perm.chacha_permute(bArr3, bArr3);
        for (int r82 = 0; r82 < 32; r82++) {
            bArr[r72 + r82] = bArr3[r82];
        }
        return 0;
    }

    public int hash_n_n_mask(byte[] bArr, int r82, byte[] bArr2, int r10, byte[] bArr3, int r12) {
        byte[] bArr4 = new byte[32];
        for (int r32 = 0; r32 < 32; r32++) {
            bArr4[r32] = (byte) (bArr2[r10 + r32] ^ bArr3[r12 + r32]);
        }
        return hash_n_n(bArr, r82, bArr4, 0);
    }

    public int varlen_hash(byte[] bArr, int r42, byte[] bArr2, int r6) {
        this.dig256.update(bArr2, 0, r6);
        this.dig256.doFinal(bArr, r42);
        return 0;
    }
}
