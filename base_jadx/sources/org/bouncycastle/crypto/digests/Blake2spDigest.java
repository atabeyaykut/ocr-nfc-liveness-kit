package org.bouncycastle.crypto.digests;

import java.lang.reflect.Array;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class Blake2spDigest implements ExtendedDigest {
    private int depth;
    private int digestLength;
    private int fanout;
    private long innerHashLength;
    private Blake2sDigest root;
    private int bufferPos = 0;
    private int keyLength = 0;
    private int nodeOffset = 0;
    private Blake2sDigest[] S = new Blake2sDigest[8];
    private byte[] salt = null;
    private byte[] key = null;
    private final int BLAKE2S_BLOCKBYTES = 64;
    private final int BLAKE2S_KEYBYTES = 32;
    private final int BLAKE2S_OUTBYTES = 32;
    private final int PARALLELISM_DEGREE = 8;
    private final byte[] singleByte = new byte[1];
    private byte[] param = new byte[32];
    private byte[] buffer = new byte[512];

    public Blake2spDigest(byte[] bArr) {
        init(bArr);
    }

    private void init(byte[] bArr) {
        int r02;
        if (bArr != null && bArr.length > 0) {
            int length = bArr.length;
            this.keyLength = length;
            if (length > 32) {
                throw new IllegalArgumentException("Keys > 32 bytes are not supported");
            }
            this.key = Arrays.clone(bArr);
        }
        this.bufferPos = 0;
        this.digestLength = 32;
        this.fanout = 8;
        this.depth = 2;
        this.innerHashLength = 32L;
        byte[] bArr2 = this.param;
        bArr2[0] = (byte) 32;
        bArr2[1] = (byte) this.keyLength;
        bArr2[2] = (byte) 8;
        bArr2[3] = (byte) 2;
        Pack.intToLittleEndian(0, bArr2, 8);
        byte[] bArr3 = this.param;
        bArr3[14] = 1;
        bArr3[15] = (byte) this.innerHashLength;
        this.root = new Blake2sDigest((byte[]) null, bArr3);
        Pack.intToLittleEndian(this.nodeOffset, this.param, 8);
        this.param[14] = 0;
        for (int r03 = 0; r03 < 8; r03++) {
            Pack.intToLittleEndian(r03, this.param, 8);
            this.S[r03] = new Blake2sDigest((byte[]) null, this.param);
        }
        this.root.setAsLastNode();
        this.S[7].setAsLastNode();
        if (bArr == null || (r02 = this.keyLength) <= 0) {
            return;
        }
        byte[] bArr4 = new byte[64];
        System.arraycopy(bArr, 0, bArr4, 0, r02);
        for (int r82 = 0; r82 < 8; r82++) {
            this.S[r82].update(bArr4, 0, 64);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r92) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 8, 32);
        for (int r22 = 0; r22 < 8; r22++) {
            int r32 = this.bufferPos;
            int r42 = r22 * 64;
            if (r32 > r42) {
                int r33 = r32 - r42;
                if (r33 > 64) {
                    r33 = 64;
                }
                this.S[r22].update(this.buffer, r42, r33);
            }
            this.S[r22].doFinal(bArr2[r22], 0);
        }
        for (int r23 = 0; r23 < 8; r23++) {
            this.root.update(bArr2[r23], 0, 32);
        }
        int r82 = this.root.doFinal(bArr, r92);
        reset();
        return r82;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "BLAKE2sp";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.digestLength;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.bufferPos = 0;
        this.digestLength = 32;
        this.root.reset();
        for (int r12 = 0; r12 < 8; r12++) {
            this.S[r12].reset();
        }
        this.root.setAsLastNode();
        this.S[7].setAsLastNode();
        byte[] bArr = this.key;
        if (bArr != null) {
            byte[] bArr2 = new byte[64];
            System.arraycopy(bArr, 0, bArr2, 0, this.keyLength);
            for (int r13 = 0; r13 < 8; r13++) {
                this.S[r13].update(bArr2, 0, 64);
            }
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        byte[] bArr = this.singleByte;
        bArr[0] = b10;
        update(bArr, 0, 1);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r10, int r11) {
        int r02 = this.bufferPos;
        int r12 = 512 - r02;
        if (r02 != 0 && r11 >= r12) {
            System.arraycopy(bArr, r10, this.buffer, r02, r12);
            for (int r03 = 0; r03 < 8; r03++) {
                this.S[r03].update(this.buffer, r03 * 64, 64);
            }
            r10 += r12;
            r11 -= r12;
            r02 = 0;
        }
        for (int r32 = 0; r32 < 8; r32++) {
            int r13 = (r32 * 64) + r10;
            for (int r52 = r11; r52 >= 512; r52 -= 512) {
                this.S[r32].update(bArr, r13, 64);
                r13 += 512;
            }
        }
        int r14 = r11 % 512;
        int r112 = (r11 - r14) + r10;
        if (r14 > 0) {
            System.arraycopy(bArr, r112, this.buffer, r02, r14);
        }
        this.bufferPos = r02 + r14;
    }
}
