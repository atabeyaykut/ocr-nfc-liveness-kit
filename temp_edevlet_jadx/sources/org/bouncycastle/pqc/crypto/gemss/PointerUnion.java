package org.bouncycastle.pqc.crypto.gemss;

import java.security.SecureRandom;

/* loaded from: classes2.dex */
class PointerUnion extends Pointer {
    protected int remainder;

    public PointerUnion(int r32) {
        super((r32 >>> 3) + ((r32 & 7) != 0 ? 1 : 0));
        this.remainder = 0;
    }

    public PointerUnion(Pointer pointer) {
        super(pointer);
        this.remainder = 0;
    }

    public PointerUnion(PointerUnion pointerUnion) {
        super(pointerUnion);
        this.remainder = pointerUnion.remainder;
    }

    public PointerUnion(byte[] bArr) {
        super((bArr.length >> 3) + ((bArr.length & 7) != 0 ? 1 : 0));
        int r02 = 0;
        for (int r12 = 0; r02 < bArr.length && r12 < this.array.length; r12++) {
            int r32 = 0;
            while (r32 < 8 && r02 < bArr.length) {
                long[] jArr = this.array;
                jArr[r12] = jArr[r12] | ((bArr[r02] & 255) << (r32 << 3));
                r32++;
                r02++;
            }
        }
        this.remainder = 0;
    }

    public void changeIndex(PointerUnion pointerUnion) {
        this.array = pointerUnion.array;
        this.cp = pointerUnion.cp;
        this.remainder = pointerUnion.remainder;
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void fill(int r11, byte[] bArr, int r13, int r14) {
        int r02 = this.remainder;
        if (r02 != 0) {
            int r12 = this.cp + r11;
            long[] jArr = this.array;
            jArr[r12] = jArr[r12] & (~((-1) << (r02 << 3)));
            int r22 = 0;
            while (r02 < 8 && r22 < r14) {
                long[] jArr2 = this.array;
                jArr2[r12] = jArr2[r12] | ((bArr[r13] & 255) << (r02 << 3));
                r13++;
                r22++;
                r02++;
            }
            r11++;
            r14 -= 8 - this.remainder;
        }
        super.fill(r11, bArr, r13, r14);
    }

    public void fillBytes(int r10, byte[] bArr, int r12, int r13) {
        int r102 = r10 + this.remainder;
        int r02 = this.cp + (r102 >>> 3);
        int r103 = r102 & 7;
        if (r103 != 0) {
            long[] jArr = this.array;
            jArr[r02] = jArr[r02] & (~((-1) << (r103 << 3)));
            int r14 = 0;
            while (r103 < 8 && r14 < r13) {
                long[] jArr2 = this.array;
                jArr2[r02] = jArr2[r02] | ((bArr[r12] & 255) << (r103 << 3));
                r12++;
                r14++;
                r103++;
            }
            r02++;
            r13 -= r14;
        }
        super.fill(r02 - this.cp, bArr, r12, r13);
    }

    public void fillRandomBytes(int r22, SecureRandom secureRandom, int r42) {
        byte[] bArr = new byte[r42];
        secureRandom.nextBytes(bArr);
        fillBytes(r22, bArr, 0, r42);
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public long get() {
        int r02 = this.remainder;
        if (r02 == 0) {
            return this.array[this.cp];
        }
        long[] jArr = this.array;
        int r22 = this.cp;
        return (jArr[r22 + 1] << ((8 - r02) << 3)) | (jArr[r22] >>> (r02 << 3));
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public long get(int r82) {
        int r02 = this.remainder;
        if (r02 == 0) {
            return this.array[this.cp + r82];
        }
        long[] jArr = this.array;
        int r22 = this.cp;
        return (jArr[(r22 + r82) + 1] << ((8 - r02) << 3)) | (jArr[r22 + r82] >>> (r02 << 3));
    }

    public byte getByte() {
        return (byte) (this.array[this.cp] >>> (this.remainder << 3));
    }

    public byte getByte(int r42) {
        int r02 = this.cp;
        int r12 = this.remainder;
        return (byte) (this.array[r02 + ((r42 + r12) >>> 3)] >>> (((r12 + r42) & 7) << 3));
    }

    public long getWithCheck() {
        int r02 = this.cp;
        long[] jArr = this.array;
        if (r02 >= jArr.length) {
            return 0L;
        }
        int r22 = this.remainder;
        if (r22 == 0) {
            return jArr[r02];
        }
        if (r02 == jArr.length - 1) {
            return jArr[r02] >>> (r22 << 3);
        }
        return (jArr[r02 + 1] << ((8 - r22) << 3)) | (jArr[r02] >>> (r22 << 3));
    }

    public long getWithCheck(int r72) {
        int r73 = r72 + this.cp;
        long[] jArr = this.array;
        if (r73 >= jArr.length) {
            return 0L;
        }
        int r12 = this.remainder;
        if (r12 == 0) {
            return jArr[r73];
        }
        if (r73 == jArr.length - 1) {
            return jArr[r73] >>> (r12 << 3);
        }
        return (jArr[r73 + 1] << ((8 - r12) << 3)) | (jArr[r73] >>> (r12 << 3));
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void indexReset() {
        this.cp = 0;
        this.remainder = 0;
    }

    public void moveNextByte() {
        int r02 = this.remainder + 1;
        this.cp += r02 >>> 3;
        this.remainder = r02 & 7;
    }

    public void moveNextBytes(int r32) {
        int r02 = this.remainder + r32;
        this.cp += r02 >>> 3;
        this.remainder = r02 & 7;
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void set(int r15, long j10) {
        int r12 = this.remainder;
        if (r12 == 0) {
            super.setXor(r15, j10);
            return;
        }
        int r22 = r12 << 3;
        int r13 = (8 - r12) << 3;
        long[] jArr = this.array;
        int r42 = this.cp;
        jArr[r42 + r15] = (j10 << r22) | (jArr[r42 + r15] & ((-1) >>> r13));
        jArr[r42 + r15 + 1] = (((-1) << r22) & jArr[r42 + r15 + 1]) | (j10 >>> r13);
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void setAnd(int r15, long j10) {
        int r12 = this.remainder;
        if (r12 == 0) {
            super.setAnd(r15, j10);
            return;
        }
        int r22 = r12 << 3;
        int r13 = (8 - r12) << 3;
        long[] jArr = this.array;
        int r42 = this.cp;
        int r52 = r42 + r15;
        jArr[r52] = jArr[r52] & ((j10 << r22) | ((-1) >>> r13));
        int r43 = r42 + r15 + 1;
        jArr[r43] = (((-1) << r22) | (j10 >>> r13)) & jArr[r43];
    }

    public void setAndByte(int r72, long j10) {
        int r73 = r72 + this.remainder + (this.cp << 3);
        int r02 = r73 >>> 3;
        long[] jArr = this.array;
        int r74 = (r73 & 7) << 3;
        jArr[r02] = (((j10 & 255) << r74) | (~(255 << r74))) & jArr[r02];
    }

    public void setAndThenXorByte(int r92, long j10, long j11) {
        int r93 = r92 + this.remainder + (this.cp << 3);
        int r02 = r93 >>> 3;
        long[] jArr = this.array;
        int r94 = (r93 & 7) << 3;
        long j12 = (((j10 & 255) << r94) | (~(255 << r94))) & jArr[r02];
        jArr[r02] = j12;
        jArr[r02] = j12 ^ ((j11 & 255) << r94);
    }

    public void setByte(int r92) {
        long[] jArr = this.array;
        int r12 = this.cp;
        long j10 = r92 & 255;
        int r93 = this.remainder;
        jArr[r12] = (j10 << (r93 << 3)) | (jArr[r12] & ((-1) >>> ((8 - r93) << 3)));
    }

    public void setByteIndex(int r22) {
        this.remainder = r22 & 7;
        this.cp = r22 >>> 3;
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void setRangeClear(int r10, int r11) {
        int r02 = this.remainder;
        if (r02 == 0) {
            super.setRangeClear(r10, r11);
            return;
        }
        long[] jArr = this.array;
        int r22 = this.cp + r10;
        jArr[r22] = jArr[r22] & ((-1) >>> ((8 - r02) << 3));
        super.setRangeClear(r10 + 1, r11);
        long[] jArr2 = this.array;
        int r03 = this.cp + r11 + 1;
        jArr2[r03] = jArr2[r03] & ((-1) << (this.remainder << 3));
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void setXor(int r92, long j10) {
        int r02 = this.remainder;
        if (r02 == 0) {
            super.setXor(r92, j10);
            return;
        }
        long[] jArr = this.array;
        int r22 = this.cp;
        int r32 = r22 + r92;
        jArr[r32] = jArr[r32] ^ (j10 << (r02 << 3));
        int r23 = r22 + r92 + 1;
        jArr[r23] = (j10 >>> ((8 - r02) << 3)) ^ jArr[r23];
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void setXor(long j10) {
        int r02 = this.remainder;
        if (r02 == 0) {
            super.setXor(j10);
            return;
        }
        long[] jArr = this.array;
        int r22 = this.cp;
        jArr[r22] = jArr[r22] ^ (j10 << (r02 << 3));
        int r23 = r22 + 1;
        jArr[r23] = (j10 >>> ((8 - r02) << 3)) ^ jArr[r23];
    }

    public void setXorByte(int r92) {
        long[] jArr = this.array;
        int r12 = this.cp;
        jArr[r12] = jArr[r12] ^ ((r92 & 255) << (this.remainder << 3));
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void setXorRangeAndMask(Pointer pointer, int r18, long j10) {
        int r22 = this.remainder;
        if (r22 == 0) {
            super.setXorRangeAndMask(pointer, r18, j10);
            return;
        }
        int r32 = this.cp;
        int r42 = pointer.cp;
        int r52 = r22 << 3;
        int r23 = (8 - r22) << 3;
        int r6 = 0;
        while (r6 < r18) {
            int r92 = r42 + 1;
            long j11 = pointer.array[r42] & j10;
            long[] jArr = this.array;
            jArr[r32] = jArr[r32] ^ (j11 << r52);
            r32++;
            jArr[r32] = (j11 >>> r23) ^ jArr[r32];
            r6++;
            r42 = r92;
        }
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public byte[] toBytes(int r72) {
        byte[] bArr = new byte[r72];
        int r12 = this.remainder;
        while (true) {
            int r22 = this.remainder;
            if (r12 >= r72 + r22) {
                return bArr;
            }
            bArr[r12 - r22] = (byte) (this.array[this.cp + (r12 >>> 3)] >>> ((r12 & 7) << 3));
            r12++;
        }
    }

    public int toBytesMove(byte[] bArr, int r10, int r11) {
        int r12 = 0;
        while (r12 < r11) {
            int r22 = r10 + 1;
            long[] jArr = this.array;
            int r42 = this.cp;
            long j10 = jArr[r42];
            int r72 = this.remainder + 1;
            this.remainder = r72;
            bArr[r10] = (byte) (j10 >>> (r3 << 3));
            if (r72 == 8) {
                this.remainder = 0;
                this.cp = r42 + 1;
            }
            r12++;
            r10 = r22;
        }
        return r10;
    }
}
