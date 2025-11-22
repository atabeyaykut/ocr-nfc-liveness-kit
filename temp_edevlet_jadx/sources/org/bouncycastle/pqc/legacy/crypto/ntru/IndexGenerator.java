package org.bouncycastle.pqc.legacy.crypto.ntru;

import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class IndexGenerator {
    private int N;
    private BitString buf;

    /* renamed from: c, reason: collision with root package name */
    private int f12020c;
    private int hLen;
    private Digest hashAlg;
    private boolean initialized;
    private int minCallsR;
    private byte[] seed;
    private int totLen = 0;
    private int remLen = 0;
    private int counter = 0;

    public static class BitString {
        byte[] bytes = new byte[4];
        int lastByteBits;
        int numBytes;

        public void appendBits(byte b10) {
            int r02 = this.numBytes;
            byte[] bArr = this.bytes;
            if (r02 == bArr.length) {
                this.bytes = IndexGenerator.copyOf(bArr, bArr.length * 2);
            }
            int r03 = this.numBytes;
            if (r03 == 0) {
                this.numBytes = 1;
                this.bytes[0] = b10;
                this.lastByteBits = 8;
                return;
            }
            int r22 = this.lastByteBits;
            if (r22 == 8) {
                byte[] bArr2 = this.bytes;
                this.numBytes = r03 + 1;
                bArr2[r03] = b10;
                return;
            }
            byte[] bArr3 = this.bytes;
            int r42 = r03 - 1;
            int r72 = b10 & 255;
            bArr3[r42] = (byte) ((r72 << r22) | bArr3[r42]);
            this.numBytes = r03 + 1;
            bArr3[r03] = (byte) (r72 >> (8 - r22));
        }

        public void appendBits(byte[] bArr) {
            for (int r02 = 0; r02 != bArr.length; r02++) {
                appendBits(bArr[r02]);
            }
        }

        public byte[] getBytes() {
            return Arrays.clone(this.bytes);
        }

        public int getLeadingAsInt(int r42) {
            int r02 = (((this.numBytes - 1) * 8) + this.lastByteBits) - r42;
            int r43 = r02 / 8;
            int r03 = r02 % 8;
            int r12 = (this.bytes[r43] & 255) >>> r03;
            int r04 = 8 - r03;
            while (true) {
                r43++;
                if (r43 >= this.numBytes) {
                    return r12;
                }
                r12 |= (this.bytes[r43] & 255) << r04;
                r04 += 8;
            }
        }

        public BitString getTrailing(int r6) {
            int r32;
            BitString bitString = new BitString();
            int r12 = (r6 + 7) / 8;
            bitString.numBytes = r12;
            bitString.bytes = new byte[r12];
            int r13 = 0;
            while (true) {
                r32 = bitString.numBytes;
                if (r13 >= r32) {
                    break;
                }
                bitString.bytes[r13] = this.bytes[r13];
                r13++;
            }
            int r62 = r6 % 8;
            bitString.lastByteBits = r62;
            if (r62 == 0) {
                bitString.lastByteBits = 8;
            } else {
                int r63 = 32 - r62;
                byte[] bArr = bitString.bytes;
                bArr[r32 - 1] = (byte) ((bArr[r32 - 1] << r63) >>> r63);
            }
            return bitString;
        }
    }

    public IndexGenerator(byte[] bArr, NTRUEncryptionParameters nTRUEncryptionParameters) {
        this.seed = bArr;
        this.N = nTRUEncryptionParameters.N;
        this.f12020c = nTRUEncryptionParameters.f12026c;
        this.minCallsR = nTRUEncryptionParameters.minCallsR;
        Digest digest = nTRUEncryptionParameters.hashAlg;
        this.hashAlg = digest;
        this.hLen = digest.getDigestSize();
        this.initialized = false;
    }

    private void appendHash(BitString bitString, byte[] bArr) {
        Digest digest = this.hashAlg;
        byte[] bArr2 = this.seed;
        digest.update(bArr2, 0, bArr2.length);
        putInt(this.hashAlg, this.counter);
        this.hashAlg.doFinal(bArr, 0);
        bitString.appendBits(bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] copyOf(byte[] bArr, int r32) {
        byte[] bArr2 = new byte[r32];
        if (r32 >= bArr.length) {
            r32 = bArr.length;
        }
        System.arraycopy(bArr, 0, bArr2, 0, r32);
        return bArr2;
    }

    private void putInt(Digest digest, int r32) {
        digest.update((byte) (r32 >> 24));
        digest.update((byte) (r32 >> 16));
        digest.update((byte) (r32 >> 8));
        digest.update((byte) r32);
    }

    public int nextIndex() {
        int leadingAsInt;
        int r22;
        int r42;
        int r32;
        if (!this.initialized) {
            this.buf = new BitString();
            byte[] bArr = new byte[this.hashAlg.getDigestSize()];
            while (true) {
                int r23 = this.counter;
                r32 = this.minCallsR;
                if (r23 >= r32) {
                    break;
                }
                appendHash(this.buf, bArr);
                this.counter++;
            }
            int r33 = r32 * 8 * this.hLen;
            this.totLen = r33;
            this.remLen = r33;
            this.initialized = true;
        }
        do {
            this.totLen += this.f12020c;
            BitString trailing = this.buf.getTrailing(this.remLen);
            int r24 = this.remLen;
            int r34 = this.f12020c;
            if (r24 < r34) {
                int r35 = r34 - r24;
                int r25 = this.counter;
                int r43 = this.hLen;
                int r52 = (((r35 + r43) - 1) / r43) + r25;
                byte[] bArr2 = new byte[this.hashAlg.getDigestSize()];
                while (this.counter < r52) {
                    appendHash(trailing, bArr2);
                    this.counter++;
                    int r44 = this.hLen;
                    if (r35 > r44 * 8) {
                        r35 -= r44 * 8;
                    }
                }
                this.remLen = (this.hLen * 8) - r35;
                BitString bitString = new BitString();
                this.buf = bitString;
                bitString.appendBits(bArr2);
            } else {
                this.remLen = r24 - r34;
            }
            leadingAsInt = trailing.getLeadingAsInt(this.f12020c);
            r22 = this.f12020c;
            r42 = this.N;
        } while (leadingAsInt >= (1 << r22) - ((1 << r22) % r42));
        return leadingAsInt % r42;
    }
}
