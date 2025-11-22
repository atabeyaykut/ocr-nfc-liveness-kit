package org.bouncycastle.pqc.legacy.crypto.gmss.util;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes2.dex */
public class WinternitzOTSignature {
    private int checksumsize;
    private GMSSRandom gmssRandom;
    private int keysize;
    private int mdsize;
    private Digest messDigestOTS;
    private int messagesize;
    private byte[][] privateKeyOTS;
    private int w;

    public WinternitzOTSignature(byte[] bArr, Digest digest, int r42) {
        this.w = r42;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        this.mdsize = this.messDigestOTS.getDigestSize();
        int r32 = (((r3 << 3) + r42) - 1) / r42;
        this.messagesize = r32;
        this.checksumsize = getLog((r32 << r42) + 1);
        int r33 = (((r3 + r42) - 1) / r42) + this.messagesize;
        this.keysize = r33;
        this.privateKeyOTS = new byte[r33][];
        int r34 = this.mdsize;
        byte[] bArr2 = new byte[r34];
        System.arraycopy(bArr, 0, bArr2, 0, r34);
        for (int r02 = 0; r02 < this.keysize; r02++) {
            this.privateKeyOTS[r02] = this.gmssRandom.nextSeed(bArr2);
        }
    }

    private void hashPrivateKeyBlock(int r42, int r52, byte[] bArr, int r72) {
        if (r52 < 1) {
            System.arraycopy(this.privateKeyOTS[r42], 0, bArr, r72, this.mdsize);
            return;
        }
        this.messDigestOTS.update(this.privateKeyOTS[r42], 0, this.mdsize);
        while (true) {
            this.messDigestOTS.doFinal(bArr, r72);
            r52--;
            if (r52 <= 0) {
                return;
            } else {
                this.messDigestOTS.update(bArr, r72, this.mdsize);
            }
        }
    }

    public int getLog(int r32) {
        int r02 = 1;
        int r12 = 2;
        while (r12 < r32) {
            r12 <<= 1;
            r02++;
        }
        return r02;
    }

    public byte[][] getPrivateKey() {
        return this.privateKeyOTS;
    }

    public byte[] getPublicKey() {
        int r02 = this.keysize * this.mdsize;
        byte[] bArr = new byte[r02];
        int r22 = (1 << this.w) - 1;
        int r52 = 0;
        for (int r42 = 0; r42 < this.keysize; r42++) {
            hashPrivateKeyBlock(r42, r22, bArr, r52);
            r52 += this.mdsize;
        }
        this.messDigestOTS.update(bArr, 0, r02);
        byte[] bArr2 = new byte[this.mdsize];
        this.messDigestOTS.doFinal(bArr2, 0);
        return bArr2;
    }

    public byte[] getSignature(byte[] bArr) {
        int r72;
        int r22 = this.keysize;
        int r32 = this.mdsize;
        byte[] bArr2 = new byte[r22 * r32];
        byte[] bArr3 = new byte[r32];
        int r73 = 0;
        this.messDigestOTS.update(bArr, 0, bArr.length);
        this.messDigestOTS.doFinal(bArr3, 0);
        int r12 = this.w;
        int r52 = 8;
        if (8 % r12 == 0) {
            int r53 = 8 / r12;
            int r13 = (1 << r12) - 1;
            int r92 = 0;
            int r10 = 0;
            for (int r6 = 0; r6 < r32; r6++) {
                for (int r11 = 0; r11 < r53; r11++) {
                    int r122 = bArr3[r6] & r13;
                    r92 += r122;
                    hashPrivateKeyBlock(r10, r122, bArr2, this.mdsize * r10);
                    bArr3[r6] = (byte) (bArr3[r6] >>> this.w);
                    r10++;
                }
            }
            int r33 = (this.messagesize << this.w) - r92;
            while (r73 < this.checksumsize) {
                hashPrivateKeyBlock(r10, r33 & r13, bArr2, this.mdsize * r10);
                int r42 = this.w;
                r33 >>>= r42;
                r10++;
                r73 += r42;
            }
        } else if (r12 < 8) {
            int r34 = this.mdsize / r12;
            int r14 = (1 << r12) - 1;
            int r62 = 0;
            int r112 = 0;
            int r123 = 0;
            int r132 = 0;
            while (r62 < r34) {
                long j10 = 0;
                for (int r142 = 0; r142 < this.w; r142++) {
                    j10 ^= (bArr3[r112] & 255) << (r142 << 3);
                    r112++;
                }
                long j11 = j10;
                int r143 = 0;
                while (r143 < r52) {
                    int r15 = ((int) j11) & r14;
                    r132 += r15;
                    hashPrivateKeyBlock(r123, r15, bArr2, this.mdsize * r123);
                    j11 >>>= this.w;
                    r123++;
                    r143++;
                    r52 = 8;
                }
                r62++;
                r52 = 8;
            }
            int r35 = this.mdsize % this.w;
            long j12 = 0;
            for (int r54 = 0; r54 < r35; r54++) {
                j12 ^= (bArr3[r112] & 255) << (r54 << 3);
                r112++;
            }
            int r36 = r35 << 3;
            int r43 = 0;
            while (r43 < r36) {
                int r55 = ((int) j12) & r14;
                r132 += r55;
                hashPrivateKeyBlock(r123, r55, bArr2, this.mdsize * r123);
                int r56 = this.w;
                j12 >>>= r56;
                r123++;
                r43 += r56;
            }
            int r37 = (this.messagesize << this.w) - r132;
            while (r73 < this.checksumsize) {
                hashPrivateKeyBlock(r123, r37 & r14, bArr2, this.mdsize * r123);
                int r44 = this.w;
                r37 >>>= r44;
                r123++;
                r73 += r44;
            }
        } else if (r12 < 57) {
            int r38 = this.mdsize;
            int r57 = (r38 << 3) - r12;
            int r16 = (1 << r12) - 1;
            byte[] bArr4 = new byte[r38];
            int r93 = 0;
            int r102 = 0;
            int r113 = 0;
            while (r93 <= r57) {
                int r144 = r93 >>> 3;
                int r152 = r93 % 8;
                r93 += this.w;
                int r133 = 0;
                long j13 = 0;
                while (r144 < ((r93 + 7) >>> 3)) {
                    j13 ^= (bArr3[r144] & 255) << (r133 << 3);
                    r133++;
                    r144++;
                    bArr3 = bArr3;
                    r57 = r57;
                }
                byte[] bArr5 = bArr3;
                int r21 = r57;
                long j14 = (j13 >>> r152) & r16;
                r113 = (int) (r113 + j14);
                System.arraycopy(this.privateKeyOTS[r102], 0, bArr4, 0, this.mdsize);
                while (j14 > 0) {
                    this.messDigestOTS.update(bArr4, 0, r38);
                    this.messDigestOTS.doFinal(bArr4, 0);
                    j14--;
                }
                int r45 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr2, r102 * r45, r45);
                r102++;
                bArr3 = bArr5;
                r57 = r21;
            }
            byte[] bArr6 = bArr3;
            int r46 = r93 >>> 3;
            if (r46 < this.mdsize) {
                int r94 = r93 % 8;
                int r58 = 0;
                long j15 = 0;
                while (true) {
                    r72 = this.mdsize;
                    if (r46 >= r72) {
                        break;
                    }
                    j15 ^= (bArr6[r46] & 255) << (r58 << 3);
                    r58++;
                    r46++;
                }
                long j16 = (j15 >>> r94) & r16;
                r113 = (int) (r113 + j16);
                System.arraycopy(this.privateKeyOTS[r102], 0, bArr4, 0, r72);
                while (j16 > 0) {
                    this.messDigestOTS.update(bArr4, 0, r38);
                    this.messDigestOTS.doFinal(bArr4, 0);
                    j16--;
                }
                int r47 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr2, r102 * r47, r47);
                r102++;
            }
            int r48 = (this.messagesize << this.w) - r113;
            int r134 = 0;
            while (r134 < this.checksumsize) {
                System.arraycopy(this.privateKeyOTS[r102], 0, bArr4, 0, this.mdsize);
                for (long j17 = r48 & r16; j17 > 0; j17--) {
                    this.messDigestOTS.update(bArr4, 0, r38);
                    this.messDigestOTS.doFinal(bArr4, 0);
                }
                int r59 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr2, r102 * r59, r59);
                int r510 = this.w;
                r48 >>>= r510;
                r102++;
                r134 += r510;
            }
        }
        return bArr2;
    }
}
