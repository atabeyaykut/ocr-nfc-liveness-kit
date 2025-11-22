package org.bouncycastle.pqc.legacy.crypto.gmss;

import androidx.browser.browseractions.a;
import androidx.camera.camera2.internal.c;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class GMSSRootSig {
    private long big8;
    private int checksum;
    private int counter;
    private GMSSRandom gmssRandom;
    private byte[] hash;
    private int height;
    private int ii;

    /* renamed from: k, reason: collision with root package name */
    private int f11983k;
    private int keysize;
    private int mdsize;
    private Digest messDigestOTS;
    private int messagesize;
    private byte[] privateKeyOTS;

    /* renamed from: r, reason: collision with root package name */
    private int f11984r;
    private byte[] seed;
    private byte[] sign;
    private int steps;
    private int test;
    private long test8;
    private int w;

    public GMSSRootSig(Digest digest, int r42, int r52) {
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        this.mdsize = this.messDigestOTS.getDigestSize();
        this.w = r42;
        this.height = r52;
        this.f11983k = (1 << r42) - 1;
        this.messagesize = (int) Math.ceil((r3 << 3) / r42);
    }

    public GMSSRootSig(Digest digest, byte[][] bArr, int[] r17) {
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        this.counter = r17[0];
        this.test = r17[1];
        this.ii = r17[2];
        this.f11984r = r17[3];
        this.steps = r17[4];
        this.keysize = r17[5];
        this.height = r17[6];
        this.w = r17[7];
        this.checksum = r17[8];
        this.mdsize = this.messDigestOTS.getDigestSize();
        int r11 = this.w;
        this.f11983k = (1 << r11) - 1;
        this.messagesize = (int) Math.ceil((r10 << 3) / r11);
        this.privateKeyOTS = bArr[0];
        this.seed = bArr[1];
        this.hash = bArr[2];
        this.sign = bArr[3];
        byte[] bArr2 = bArr[4];
        this.test8 = ((bArr2[1] & 255) << 8) | (bArr2[0] & 255) | ((bArr2[2] & 255) << 16) | ((bArr2[3] & 255) << 24) | ((bArr2[4] & 255) << 32) | ((bArr2[5] & 255) << 40) | ((bArr2[6] & 255) << 48) | ((bArr2[7] & 255) << 56);
        this.big8 = (bArr2[8] & 255) | ((bArr2[9] & 255) << 8) | ((bArr2[10] & 255) << 16) | ((bArr2[11] & 255) << 24) | ((bArr2[12] & 255) << 32) | ((bArr2[13] & 255) << 40) | ((bArr2[14] & 255) << 48) | ((bArr2[15] & 255) << 56);
    }

    private void oneStep() {
        long j10;
        int r02 = this.w;
        if (8 % r02 == 0) {
            int r03 = this.test;
            if (r03 == 0) {
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
                int r04 = this.ii;
                if (r04 < this.mdsize) {
                    byte[] bArr = this.hash;
                    byte b10 = bArr[r04];
                    this.test = this.f11983k & b10;
                    bArr[r04] = (byte) (b10 >>> this.w);
                } else {
                    int r05 = this.checksum;
                    this.test = this.f11983k & r05;
                    this.checksum = r05 >>> this.w;
                }
            } else if (r03 > 0) {
                Digest digest = this.messDigestOTS;
                byte[] bArr2 = this.privateKeyOTS;
                digest.update(bArr2, 0, bArr2.length);
                byte[] bArr3 = new byte[this.messDigestOTS.getDigestSize()];
                this.privateKeyOTS = bArr3;
                this.messDigestOTS.doFinal(bArr3, 0);
                this.test--;
            }
            if (this.test == 0) {
                byte[] bArr4 = this.privateKeyOTS;
                byte[] bArr5 = this.sign;
                int r42 = this.counter;
                int r52 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr5, r42 * r52, r52);
                int r06 = this.counter + 1;
                this.counter = r06;
                if (r06 % (8 / this.w) == 0) {
                    this.ii++;
                    return;
                }
                return;
            }
            return;
        }
        if (r02 < 8) {
            int r12 = this.test;
            if (r12 == 0) {
                int r13 = this.counter;
                if (r13 % 8 == 0) {
                    int r22 = this.ii;
                    int r6 = this.mdsize;
                    if (r22 < r6) {
                        this.big8 = 0L;
                        if (r13 < ((r6 / r02) << 3)) {
                            for (int r07 = 0; r07 < this.w; r07++) {
                                long j11 = this.big8;
                                byte[] bArr6 = this.hash;
                                int r53 = this.ii;
                                this.big8 = j11 ^ ((bArr6[r53] & 255) << (r07 << 3));
                                this.ii = r53 + 1;
                            }
                        } else {
                            for (int r08 = 0; r08 < this.mdsize % this.w; r08++) {
                                long j12 = this.big8;
                                byte[] bArr7 = this.hash;
                                int r54 = this.ii;
                                this.big8 = j12 ^ ((bArr7[r54] & 255) << (r08 << 3));
                                this.ii = r54 + 1;
                            }
                        }
                    }
                }
                if (this.counter == this.messagesize) {
                    this.big8 = this.checksum;
                }
                this.test = (int) (this.big8 & this.f11983k);
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
            } else if (r12 > 0) {
                Digest digest2 = this.messDigestOTS;
                byte[] bArr8 = this.privateKeyOTS;
                digest2.update(bArr8, 0, bArr8.length);
                byte[] bArr9 = new byte[this.messDigestOTS.getDigestSize()];
                this.privateKeyOTS = bArr9;
                this.messDigestOTS.doFinal(bArr9, 0);
                this.test--;
            }
            if (this.test != 0) {
                return;
            }
            byte[] bArr10 = this.privateKeyOTS;
            byte[] bArr11 = this.sign;
            int r23 = this.counter;
            int r43 = this.mdsize;
            System.arraycopy(bArr10, 0, bArr11, r23 * r43, r43);
            this.big8 >>>= this.w;
        } else {
            if (r02 >= 57) {
                return;
            }
            long j13 = this.test8;
            if (j13 == 0) {
                this.big8 = 0L;
                this.ii = 0;
                int r14 = this.f11984r;
                int r24 = r14 % 8;
                int r62 = r14 >>> 3;
                int r72 = this.mdsize;
                if (r62 < r72) {
                    if (r14 <= (r72 << 3) - r02) {
                        int r15 = r14 + r02;
                        this.f11984r = r15;
                        r72 = (r15 + 7) >>> 3;
                    } else {
                        this.f11984r = r14 + r02;
                    }
                    while (true) {
                        j10 = this.big8;
                        if (r62 >= r72) {
                            break;
                        }
                        int r82 = this.hash[r62] & 255;
                        int r92 = this.ii;
                        this.big8 = j10 ^ (r82 << (r92 << 3));
                        this.ii = r92 + 1;
                        r62++;
                    }
                    long j14 = j10 >>> r24;
                    this.big8 = j14;
                    this.test8 = j14 & this.f11983k;
                } else {
                    int r16 = this.checksum;
                    this.test8 = this.f11983k & r16;
                    this.checksum = r16 >>> r02;
                }
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
            } else if (j13 > 0) {
                Digest digest3 = this.messDigestOTS;
                byte[] bArr12 = this.privateKeyOTS;
                digest3.update(bArr12, 0, bArr12.length);
                byte[] bArr13 = new byte[this.messDigestOTS.getDigestSize()];
                this.privateKeyOTS = bArr13;
                this.messDigestOTS.doFinal(bArr13, 0);
                this.test8--;
            }
            if (this.test8 != 0) {
                return;
            }
            byte[] bArr14 = this.privateKeyOTS;
            byte[] bArr15 = this.sign;
            int r25 = this.counter;
            int r44 = this.mdsize;
            System.arraycopy(bArr14, 0, bArr15, r25 * r44, r44);
        }
        this.counter++;
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

    public byte[] getSig() {
        return this.sign;
    }

    public byte[][] getStatByte() {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 5, this.mdsize);
        bArr[0] = this.privateKeyOTS;
        bArr[1] = this.seed;
        bArr[2] = this.hash;
        bArr[3] = this.sign;
        bArr[4] = getStatLong();
        return bArr;
    }

    public int[] getStatInt() {
        return new int[]{this.counter, this.test, this.ii, this.f11984r, this.steps, this.keysize, this.height, this.w, this.checksum};
    }

    public byte[] getStatLong() {
        long j10 = this.test8;
        long j11 = this.big8;
        return new byte[]{(byte) (j10 & 255), (byte) ((j10 >> 8) & 255), (byte) ((j10 >> 16) & 255), (byte) ((j10 >> 24) & 255), (byte) ((j10 >> 32) & 255), (byte) ((j10 >> 40) & 255), (byte) ((j10 >> 48) & 255), (byte) ((j10 >> 56) & 255), (byte) (j11 & 255), (byte) ((j11 >> 8) & 255), (byte) ((j11 >> 16) & 255), (byte) ((j11 >> 24) & 255), (byte) ((j11 >> 32) & 255), (byte) ((j11 >> 40) & 255), (byte) ((j11 >> 48) & 255), (byte) ((j11 >> 56) & 255)};
    }

    public void initSign(byte[] bArr, byte[] bArr2) {
        int r72;
        int r73;
        this.hash = new byte[this.mdsize];
        this.messDigestOTS.update(bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[this.messDigestOTS.getDigestSize()];
        this.hash = bArr3;
        this.messDigestOTS.doFinal(bArr3, 0);
        int r12 = this.mdsize;
        byte[] bArr4 = new byte[r12];
        System.arraycopy(this.hash, 0, bArr4, 0, r12);
        int log = getLog((this.messagesize << this.w) + 1);
        int r52 = this.w;
        int r6 = 8;
        if (8 % r52 == 0) {
            int r62 = 8 / r52;
            r72 = 0;
            for (int r53 = 0; r53 < this.mdsize; r53++) {
                for (int r10 = 0; r10 < r62; r10++) {
                    byte b10 = bArr4[r53];
                    r72 += this.f11983k & b10;
                    bArr4[r53] = (byte) (b10 >>> this.w);
                }
            }
            int r22 = (this.messagesize << this.w) - r72;
            this.checksum = r22;
            int r54 = 0;
            while (r54 < log) {
                r72 += this.f11983k & r22;
                int r63 = this.w;
                r22 >>>= r63;
                r54 += r63;
            }
        } else if (r52 < 8) {
            int r74 = this.mdsize / r52;
            int r55 = 0;
            int r102 = 0;
            int r11 = 0;
            while (r55 < r74) {
                long j10 = 0;
                for (int r122 = 0; r122 < this.w; r122++) {
                    j10 ^= (bArr4[r102] & 255) << (r122 << 3);
                    r102++;
                }
                int r82 = 0;
                while (r82 < r6) {
                    r11 += (int) (this.f11983k & j10);
                    j10 >>>= this.w;
                    r82++;
                    r74 = r74;
                    r6 = 8;
                }
                r55++;
                r6 = 8;
            }
            int r56 = this.mdsize % this.w;
            long j11 = 0;
            for (int r64 = 0; r64 < r56; r64++) {
                j11 ^= (bArr4[r102] & 255) << (r64 << 3);
                r102++;
            }
            int r23 = r56 << 3;
            int r57 = 0;
            while (r57 < r23) {
                r11 += (int) (this.f11983k & j11);
                int r65 = this.w;
                j11 >>>= r65;
                r57 += r65;
            }
            int r24 = (this.messagesize << this.w) - r11;
            this.checksum = r24;
            r72 = r11;
            int r58 = 0;
            while (r58 < log) {
                r72 += this.f11983k & r24;
                int r66 = this.w;
                r24 >>>= r66;
                r58 += r66;
            }
        } else if (r52 < 57) {
            int r59 = 0;
            int r67 = 0;
            while (true) {
                r73 = this.mdsize;
                int r92 = this.w;
                if (r59 > (r73 << 3) - r92) {
                    break;
                }
                int r83 = r59 % 8;
                r59 += r92;
                long j12 = 0;
                int r123 = 0;
                for (int r75 = r59 >>> 3; r75 < ((r59 + 7) >>> 3); r75++) {
                    j12 ^= (bArr4[r75] & 255) << (r123 << 3);
                    r123++;
                }
                r67 = (int) (r67 + ((j12 >>> r83) & this.f11983k));
            }
            int r84 = r59 >>> 3;
            if (r84 < r73) {
                int r510 = r59 % 8;
                int r76 = 0;
                long j13 = 0;
                while (r84 < this.mdsize) {
                    j13 ^= (bArr4[r84] & 255) << (r76 << 3);
                    r76++;
                    r84++;
                }
                r67 = (int) (r67 + ((j13 >>> r510) & this.f11983k));
            }
            int r25 = (this.messagesize << this.w) - r67;
            this.checksum = r25;
            r72 = r67;
            int r511 = 0;
            while (r511 < log) {
                r72 += this.f11983k & r25;
                int r68 = this.w;
                r25 >>>= r68;
                r511 += r68;
            }
        } else {
            r72 = 0;
        }
        this.keysize = this.messagesize + ((int) Math.ceil(log / this.w));
        this.steps = (int) Math.ceil((r2 + r72) / (1 << this.height));
        int r13 = this.keysize;
        int r26 = this.mdsize;
        this.sign = new byte[r13 * r26];
        this.counter = 0;
        this.test = 0;
        this.ii = 0;
        this.test8 = 0L;
        this.f11984r = 0;
        this.privateKeyOTS = new byte[r26];
        byte[] bArr5 = new byte[r26];
        this.seed = bArr5;
        System.arraycopy(bArr, 0, bArr5, 0, r26);
    }

    public String toString() {
        String strH = "" + this.big8 + "  ";
        int[] statInt = getStatInt();
        byte[][] statByte = getStatByte();
        for (int r52 = 0; r52 < 9; r52++) {
            strH = a.b(androidx.constraintlayout.core.a.e(strH), statInt[r52], " ");
        }
        for (int r22 = 0; r22 < 5; r22++) {
            strH = c.h(androidx.constraintlayout.core.a.e(strH), new String(Hex.encode(statByte[r22])), " ");
        }
        return strH;
    }

    public boolean updateSign() {
        for (int r12 = 0; r12 < this.steps; r12++) {
            if (this.counter < this.keysize) {
                oneStep();
            }
            if (this.counter == this.keysize) {
                return true;
            }
        }
        return false;
    }
}
