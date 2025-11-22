package org.bouncycastle.pqc.legacy.crypto.gmss.util;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes2.dex */
public class WinternitzOTSVerify {
    private int mdsize;
    private Digest messDigestOTS;
    private int w;

    public WinternitzOTSVerify(Digest digest, int r22) {
        this.w = r22;
        this.messDigestOTS = digest;
        this.mdsize = digest.getDigestSize();
    }

    private void hashSignatureBlock(byte[] bArr, int r42, int r52, byte[] bArr2, int r72) {
        if (r52 < 1) {
            System.arraycopy(bArr, r42, bArr2, r72, this.mdsize);
            return;
        }
        this.messDigestOTS.update(bArr, r42, this.mdsize);
        while (true) {
            this.messDigestOTS.doFinal(bArr2, r72);
            r52--;
            if (r52 <= 0) {
                return;
            } else {
                this.messDigestOTS.update(bArr2, r72, this.mdsize);
            }
        }
    }

    public byte[] Verify(byte[] bArr, byte[] bArr2) {
        int r24;
        int r11;
        WinternitzOTSVerify winternitzOTSVerify = this;
        int r82 = winternitzOTSVerify.mdsize;
        byte[] bArr3 = new byte[r82];
        winternitzOTSVerify.messDigestOTS.update(bArr, 0, bArr.length);
        winternitzOTSVerify.messDigestOTS.doFinal(bArr3, 0);
        int r02 = winternitzOTSVerify.mdsize << 3;
        int r12 = winternitzOTSVerify.w;
        int r112 = ((r12 - 1) + r02) / r12;
        int log = winternitzOTSVerify.getLog((r112 << r12) + 1);
        int r03 = winternitzOTSVerify.w;
        int r22 = winternitzOTSVerify.mdsize;
        int r14 = r22 * ((((log + r03) - 1) / r03) + r112);
        if (r14 != bArr2.length) {
            return null;
        }
        byte[] bArr4 = new byte[r14];
        int r52 = 8;
        if (8 % r03 == 0) {
            int r53 = 8 / r03;
            int r16 = (1 << r03) - 1;
            int r04 = 0;
            int r13 = 0;
            int r42 = 0;
            while (r42 < r82) {
                int r17 = r13;
                int r32 = 0;
                while (r32 < r53) {
                    int r15 = bArr3[r42] & r16;
                    int r18 = r04 + r15;
                    int r05 = winternitzOTSVerify.mdsize;
                    int r19 = r42;
                    hashSignatureBlock(bArr2, r17 * r05, r16 - r15, bArr4, r17 * r05);
                    bArr3[r19] = (byte) (bArr3[r19] >>> winternitzOTSVerify.w);
                    r17++;
                    r32++;
                    r04 = r18;
                    r42 = r19;
                    r53 = r53;
                }
                r42++;
                r13 = r17;
            }
            int r83 = r13;
            int r92 = (r112 << winternitzOTSVerify.w) - r04;
            int r113 = 0;
            while (r113 < log) {
                int r110 = winternitzOTSVerify.mdsize;
                hashSignatureBlock(bArr2, r83 * r110, r16 - (r92 & r16), bArr4, r83 * r110);
                int r06 = winternitzOTSVerify.w;
                r92 >>>= r06;
                r83++;
                r113 += r06;
            }
        } else {
            long j10 = 0;
            if (r03 >= 8) {
                if (r03 < 57) {
                    int r33 = (r22 << 3) - r03;
                    int r07 = (1 << r03) - 1;
                    byte[] bArr5 = new byte[r22];
                    int r43 = 0;
                    int r54 = 0;
                    int r84 = 0;
                    while (r43 <= r33) {
                        int r10 = r43 >>> 3;
                        int r132 = r43 % 8;
                        int r20 = r33;
                        int r44 = r43 + winternitzOTSVerify.w;
                        int r34 = (r44 + 7) >>> 3;
                        long j11 = 0;
                        int r222 = 0;
                        while (r10 < r34) {
                            j11 ^= (bArr3[r10] & 255) << (r222 << 3);
                            r222++;
                            r10++;
                            r34 = r34;
                            r44 = r44;
                        }
                        int r27 = r44;
                        long j12 = j11 >>> r132;
                        int r102 = r14;
                        long j13 = r07;
                        long j14 = j12 & j13;
                        int r223 = r112;
                        r54 = (int) (r54 + j14);
                        int r103 = winternitzOTSVerify.mdsize;
                        System.arraycopy(bArr2, r84 * r103, bArr5, 0, r103);
                        for (long j15 = j14; j15 < j13; j15++) {
                            winternitzOTSVerify.messDigestOTS.update(bArr5, 0, r22);
                            winternitzOTSVerify.messDigestOTS.doFinal(bArr5, 0);
                        }
                        int r45 = winternitzOTSVerify.mdsize;
                        System.arraycopy(bArr5, 0, bArr4, r84 * r45, r45);
                        r84++;
                        r33 = r20;
                        r112 = r223;
                        r14 = r102;
                        r43 = r27;
                    }
                    int r224 = r112;
                    r24 = r14;
                    int r35 = r43 >>> 3;
                    if (r35 < winternitzOTSVerify.mdsize) {
                        int r46 = r43 % 8;
                        int r104 = 0;
                        while (true) {
                            r11 = winternitzOTSVerify.mdsize;
                            if (r35 >= r11) {
                                break;
                            }
                            j10 ^= (bArr3[r35] & 255) << (r104 << 3);
                            r104++;
                            r35++;
                        }
                        long j16 = r07;
                        long j17 = (j10 >>> r46) & j16;
                        r54 = (int) (r54 + j17);
                        System.arraycopy(bArr2, r84 * r11, bArr5, 0, r11);
                        while (j17 < j16) {
                            winternitzOTSVerify.messDigestOTS.update(bArr5, 0, r22);
                            winternitzOTSVerify.messDigestOTS.doFinal(bArr5, 0);
                            j17++;
                        }
                        int r36 = winternitzOTSVerify.mdsize;
                        System.arraycopy(bArr5, 0, bArr4, r84 * r36, r36);
                        r84++;
                    }
                    int r47 = (r224 << winternitzOTSVerify.w) - r54;
                    int r37 = 0;
                    while (r37 < log) {
                        int r55 = winternitzOTSVerify.mdsize;
                        System.arraycopy(bArr2, r84 * r55, bArr5, 0, r55);
                        for (long j18 = r47 & r07; j18 < r07; j18++) {
                            winternitzOTSVerify.messDigestOTS.update(bArr5, 0, r22);
                            winternitzOTSVerify.messDigestOTS.doFinal(bArr5, 0);
                        }
                        int r56 = winternitzOTSVerify.mdsize;
                        System.arraycopy(bArr5, 0, bArr4, r84 * r56, r56);
                        int r57 = winternitzOTSVerify.w;
                        r47 >>>= r57;
                        r84++;
                        r37 += r57;
                    }
                }
                winternitzOTSVerify.messDigestOTS.update(bArr4, 0, r24);
                byte[] bArr6 = new byte[winternitzOTSVerify.mdsize];
                winternitzOTSVerify.messDigestOTS.doFinal(bArr6, 0);
                return bArr6;
            }
            int r85 = r22 / r03;
            int r48 = (1 << r03) - 1;
            int r08 = 0;
            int r111 = 0;
            int r23 = 0;
            int r38 = 0;
            while (r38 < r85) {
                int r182 = r08;
                long j19 = 0;
                int r09 = 0;
                while (r09 < winternitzOTSVerify.w) {
                    j19 ^= (bArr3[r182] & 255) << (r09 << 3);
                    r182++;
                    r09++;
                    log = log;
                }
                int r225 = log;
                int r105 = r23;
                int r122 = 0;
                while (r122 < r52) {
                    int r010 = (int) (j19 & r48);
                    int r6 = r111 + r010;
                    int r114 = this.mdsize;
                    winternitzOTSVerify = this;
                    hashSignatureBlock(bArr2, r105 * r114, r48 - r010, bArr4, r105 * r114);
                    j19 >>>= winternitzOTSVerify.w;
                    r105++;
                    r122++;
                    r48 = r48;
                    r38 = r38;
                    r111 = r6;
                    r52 = 8;
                }
                r38++;
                r23 = r105;
                r08 = r182;
                log = r225;
                r52 = 8;
            }
            int r226 = log;
            int r133 = r48;
            int r39 = winternitzOTSVerify.mdsize % winternitzOTSVerify.w;
            int r49 = 0;
            while (r49 < r39) {
                j10 ^= (bArr3[r08] & 255) << (r49 << 3);
                r08++;
                r49++;
                r111 = r111;
                r23 = r23;
            }
            int r106 = r23;
            int r93 = r39 << 3;
            int r86 = 0;
            while (r86 < r93) {
                int r011 = (int) (j10 & r133);
                int r123 = r111 + r011;
                int r115 = winternitzOTSVerify.mdsize;
                hashSignatureBlock(bArr2, r106 * r115, r133 - r011, bArr4, r106 * r115);
                int r012 = winternitzOTSVerify.w;
                j10 >>>= r012;
                r106++;
                r86 += r012;
                r111 = r123;
            }
            int r87 = (r112 << winternitzOTSVerify.w) - r111;
            int r94 = 0;
            while (r94 < r226) {
                int r116 = winternitzOTSVerify.mdsize;
                hashSignatureBlock(bArr2, r106 * r116, r133 - (r87 & r133), bArr4, r106 * r116);
                int r013 = winternitzOTSVerify.w;
                r87 >>>= r013;
                r106++;
                r94 += r013;
            }
        }
        r24 = r14;
        winternitzOTSVerify.messDigestOTS.update(bArr4, 0, r24);
        byte[] bArr62 = new byte[winternitzOTSVerify.mdsize];
        winternitzOTSVerify.messDigestOTS.doFinal(bArr62, 0);
        return bArr62;
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

    public int getSignatureLength() {
        int digestSize = this.messDigestOTS.getDigestSize();
        int r22 = this.w;
        int r32 = ((r22 - 1) + (digestSize << 3)) / r22;
        int log = getLog((r32 << r22) + 1);
        return ((((log + r2) - 1) / this.w) + r32) * digestSize;
    }
}
