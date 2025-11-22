package org.bouncycastle.pqc.crypto.gemss;

import java.security.SecureRandom;
import java.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class Pointer {
    protected long[] array;
    protected int cp;

    public Pointer() {
        this.cp = 0;
    }

    public Pointer(int r12) {
        this.array = new long[r12];
        this.cp = 0;
    }

    public Pointer(Pointer pointer) {
        this.array = pointer.array;
        this.cp = pointer.cp;
    }

    public Pointer(Pointer pointer, int r32) {
        this.array = pointer.array;
        this.cp = pointer.cp + r32;
    }

    public void changeIndex(int r12) {
        this.cp = r12;
    }

    public void changeIndex(Pointer pointer) {
        this.array = pointer.array;
        this.cp = pointer.cp;
    }

    public void changeIndex(Pointer pointer, int r32) {
        this.array = pointer.array;
        this.cp = pointer.cp + r32;
    }

    public void copyFrom(int r32, Pointer pointer, int r52, int r6) {
        System.arraycopy(pointer.array, pointer.cp + r52, this.array, this.cp + r32, r6);
    }

    public void copyFrom(Pointer pointer, int r52) {
        System.arraycopy(pointer.array, pointer.cp, this.array, this.cp, r52);
    }

    public void fill(int r10, byte[] bArr, int r12, int r13) {
        long[] jArr;
        int r32;
        int r02 = this.cp + r10;
        int r102 = 0;
        int r14 = 0;
        while (true) {
            jArr = this.array;
            if (r02 >= jArr.length || (r32 = r14 + 8) > r13) {
                break;
            }
            jArr[r02] = Pack.littleEndianToLong(bArr, r12);
            r12 += 8;
            r02++;
            r14 = r32;
        }
        if (r14 >= r13 || r02 >= jArr.length) {
            return;
        }
        jArr[r02] = 0;
        while (r102 < 8 && r14 < r13) {
            long[] jArr2 = this.array;
            jArr2[r02] = jArr2[r02] | ((bArr[r12] & 255) << (r102 << 3));
            r102++;
            r12++;
            r14++;
        }
    }

    public void fillRandom(int r22, SecureRandom secureRandom, int r42) {
        byte[] bArr = new byte[r42];
        secureRandom.nextBytes(bArr);
        fill(r22, bArr, 0, r42);
    }

    public long get() {
        return this.array[this.cp];
    }

    public long get(int r42) {
        return this.array[this.cp + r42];
    }

    public long[] getArray() {
        return this.array;
    }

    public int getD_for_not0_or_plus(int r12, int r13) {
        int r02 = this.cp;
        int r14 = 0;
        long jORBITS_UINT = 0;
        while (r13 > 0) {
            int r52 = r02 + 1;
            long j10 = this.array[r02];
            int r03 = 1;
            while (r03 < r12) {
                j10 |= this.array[r52];
                r03++;
                r52++;
            }
            jORBITS_UINT |= GeMSSUtils.ORBITS_UINT(j10);
            r14 = (int) (r14 + jORBITS_UINT);
            r13--;
            r02 = r52;
        }
        return r14;
    }

    public long getDotProduct(int r10, Pointer pointer, int r12, int r13) {
        int r102 = r10 + this.cp;
        int r122 = r12 + pointer.cp;
        int r14 = r102 + 1;
        int r02 = r122 + 1;
        long j10 = this.array[r102] & pointer.array[r122];
        int r103 = 1;
        while (r103 < r13) {
            j10 ^= this.array[r14] & pointer.array[r02];
            r103++;
            r02++;
            r14++;
        }
        return j10;
    }

    public int getIndex() {
        return this.cp;
    }

    public int getLength() {
        return this.array.length - this.cp;
    }

    public void indexReset() {
        this.cp = 0;
    }

    public int is0_gf2n(int r6, int r72) {
        long j10 = get(r6);
        for (int r22 = 1; r22 < r72; r22++) {
            j10 |= get(r6 + r22);
        }
        return (int) GeMSSUtils.NORBITS_UINT(j10);
    }

    public int isEqual_nocst_gf2(Pointer pointer, int r11) {
        int r02 = pointer.cp;
        int r12 = this.cp;
        int r32 = 0;
        while (r32 < r11) {
            int r52 = r12 + 1;
            int r42 = r02 + 1;
            if (this.array[r12] != pointer.array[r02]) {
                return 0;
            }
            r32++;
            r02 = r42;
            r12 = r52;
        }
        return 1;
    }

    public void move(int r22) {
        this.cp += r22;
    }

    public void moveIncremental() {
        this.cp++;
    }

    public int searchDegree(int r22, int r32, int r42) {
        while (is0_gf2n(r22 * r42, r42) != 0 && r22 >= r32) {
            r22--;
        }
        return r22;
    }

    public void set(int r32, long j10) {
        this.array[this.cp + r32] = j10;
    }

    public void set(long j10) {
        this.array[this.cp] = j10;
    }

    public void set1_gf2n(int r6, int r72) {
        int r02 = this.cp + r6;
        int r12 = r02 + 1;
        this.array[r02] = 1;
        int r62 = 1;
        while (r62 < r72) {
            this.array[r12] = 0;
            r62++;
            r12++;
        }
    }

    public void setAnd(int r52, long j10) {
        long[] jArr = this.array;
        int r12 = this.cp + r52;
        jArr[r12] = jArr[r12] & j10;
    }

    public void setAnd(long j10) {
        long[] jArr = this.array;
        int r12 = this.cp;
        jArr[r12] = j10 & jArr[r12];
    }

    public void setClear(int r52) {
        this.array[this.cp + r52] = 0;
    }

    public void setRangeClear(int r42, int r52) {
        int r43 = r42 + this.cp;
        Arrays.fill(this.array, r43, r52 + r43, 0L);
    }

    public void setRangeFromXor(int r10, Pointer pointer, int r12, Pointer pointer2, int r14, int r15) {
        int r102 = r10 + this.cp;
        int r122 = r12 + pointer.cp;
        int r142 = r14 + pointer2.cp;
        int r02 = 0;
        while (r02 < r15) {
            this.array[r102] = pointer.array[r122] ^ pointer2.array[r142];
            r02++;
            r102++;
            r142++;
            r122++;
        }
    }

    public void setRangeFromXor(Pointer pointer, Pointer pointer2, int r15) {
        int r02 = this.cp;
        int r12 = pointer.cp;
        int r22 = pointer2.cp;
        int r32 = 0;
        while (r32 < r15) {
            this.array[r02] = pointer.array[r12] ^ pointer2.array[r22];
            r32++;
            r02++;
            r22++;
            r12++;
        }
    }

    public void setRangeFromXorAndMask_xor(Pointer pointer, Pointer pointer2, long j10, int r21) {
        int r32 = this.cp;
        int r42 = pointer.cp;
        int r52 = pointer2.cp;
        int r6 = 0;
        while (r6 < r21) {
            long[] jArr = this.array;
            long[] jArr2 = pointer.array;
            long j11 = jArr2[r42];
            long[] jArr3 = pointer2.array;
            long j12 = (j11 ^ jArr3[r52]) & j10;
            jArr[r32] = j12;
            jArr2[r42] = j12 ^ jArr2[r42];
            jArr3[r52] = jArr3[r52] ^ jArr[r32];
            r6++;
            r52++;
            r32++;
            r42++;
        }
    }

    public void setRangePointerUnion(PointerUnion pointerUnion, int r14) {
        int r02 = pointerUnion.remainder;
        if (r02 == 0) {
            System.arraycopy(pointerUnion.array, pointerUnion.cp, this.array, this.cp, r14);
            return;
        }
        int r12 = (8 - r02) << 3;
        int r03 = r02 << 3;
        int r22 = this.cp;
        int r32 = pointerUnion.cp;
        int r42 = 0;
        while (r42 < r14) {
            long[] jArr = this.array;
            long[] jArr2 = pointerUnion.array;
            long j10 = jArr2[r32] >>> r03;
            r32++;
            jArr[r22] = j10 ^ (jArr2[r32] << r12);
            r42++;
            r22++;
        }
    }

    public void setRangePointerUnion(PointerUnion pointerUnion, int r21, int r22) {
        int r32 = r22 & 63;
        int r42 = 64 - r32;
        int r52 = this.cp;
        int r6 = pointerUnion.cp;
        int r72 = pointerUnion.remainder;
        int r82 = 0;
        if (r72 == 0) {
            while (r82 < r21) {
                long[] jArr = this.array;
                long[] jArr2 = pointerUnion.array;
                long j10 = jArr2[r6] >>> r32;
                r6++;
                jArr[r52] = j10 ^ (jArr2[r6] << r42);
                r82++;
                r52++;
            }
            return;
        }
        int r92 = r72 << 3;
        int r73 = (8 - r72) << 3;
        while (r82 < r21) {
            long[] jArr3 = this.array;
            long[] jArr4 = pointerUnion.array;
            long j11 = jArr4[r6] >>> r92;
            r6++;
            long j12 = jArr4[r6];
            jArr3[r52] = ((j11 | (j12 << r73)) >>> r32) ^ (((j12 >>> r92) | (jArr4[r6 + 1] << r73)) << r42);
            r82++;
            r52++;
        }
    }

    public void setRangePointerUnion_Check(PointerUnion pointerUnion, int r21, int r22) {
        int r32 = r22 & 63;
        int r42 = 64 - r32;
        int r52 = this.cp;
        int r6 = pointerUnion.cp;
        int r72 = pointerUnion.remainder;
        int r82 = 0;
        if (r72 == 0) {
            while (r82 < r21) {
                long[] jArr = pointerUnion.array;
                if (r6 >= jArr.length - 1) {
                    break;
                }
                long[] jArr2 = this.array;
                long j10 = jArr[r6] >>> r32;
                r6++;
                jArr2[r52] = j10 ^ (jArr[r6] << r42);
                r82++;
                r52++;
            }
            if (r82 < r21) {
                this.array[r52] = pointerUnion.array[r6] >>> r32;
                return;
            }
            return;
        }
        int r92 = r72 << 3;
        int r73 = (8 - r72) << 3;
        while (r82 < r21) {
            long[] jArr3 = pointerUnion.array;
            if (r6 >= jArr3.length - 2) {
                break;
            }
            long[] jArr4 = this.array;
            long j11 = jArr3[r6] >>> r92;
            r6++;
            long j12 = jArr3[r6];
            jArr4[r52] = ((j11 | (j12 << r73)) >>> r32) ^ (((j12 >>> r92) | (jArr3[r6 + 1] << r73)) << r42);
            r82++;
            r52++;
        }
        if (r82 < r21) {
            long[] jArr5 = this.array;
            long[] jArr6 = pointerUnion.array;
            long j13 = jArr6[r6] >>> r92;
            long j14 = jArr6[r6 + 1];
            jArr5[r52] = ((j14 >>> r92) << r42) ^ (((j14 << r73) | j13) >>> r32);
        }
    }

    public void setRangeRotate(int r10, Pointer pointer, int r12, int r13, int r14) {
        int r02 = 64 - r14;
        int r102 = r10 + this.cp;
        int r122 = r12 + pointer.cp;
        int r15 = 0;
        while (r15 < r13) {
            long[] jArr = this.array;
            long[] jArr2 = pointer.array;
            long j10 = jArr2[r122] >>> r02;
            r122++;
            jArr[r102] = j10 ^ (jArr2[r122] << r14);
            r15++;
            r102++;
        }
    }

    public int setRange_xi(long j10, int r10, int r11) {
        int r02 = 0;
        while (r02 < r11) {
            this.array[this.cp + r10] = -((j10 >>> r02) & 1);
            r02++;
            r10++;
        }
        return r10;
    }

    public void setXor(int r52, long j10) {
        long[] jArr = this.array;
        int r12 = this.cp + r52;
        jArr[r12] = jArr[r12] ^ j10;
    }

    public void setXor(long j10) {
        long[] jArr = this.array;
        int r12 = this.cp;
        jArr[r12] = j10 ^ jArr[r12];
    }

    public void setXorMatrix(Pointer pointer, int r14, int r15) {
        int r02 = this.cp;
        for (int r22 = 0; r22 < r15; r22++) {
            int r42 = r02;
            int r32 = 0;
            while (r32 < r14) {
                long[] jArr = this.array;
                long j10 = jArr[r42];
                long[] jArr2 = pointer.array;
                int r10 = pointer.cp;
                pointer.cp = r10 + 1;
                jArr[r42] = j10 ^ jArr2[r10];
                r32++;
                r42++;
            }
        }
        this.cp += r14;
    }

    public void setXorMatrix_NoMove(Pointer pointer, int r14, int r15) {
        int r02 = this.cp;
        for (int r22 = 0; r22 < r15; r22++) {
            int r42 = r02;
            int r32 = 0;
            while (r32 < r14) {
                long[] jArr = this.array;
                long j10 = jArr[r42];
                long[] jArr2 = pointer.array;
                int r10 = pointer.cp;
                pointer.cp = r10 + 1;
                jArr[r42] = j10 ^ jArr2[r10];
                r32++;
                r42++;
            }
        }
    }

    public void setXorRange(int r10, Pointer pointer, int r12, int r13) {
        int r102 = r10 + this.cp;
        int r122 = r12 + pointer.cp;
        int r02 = 0;
        while (r02 < r13) {
            long[] jArr = this.array;
            jArr[r102] = jArr[r102] ^ pointer.array[r122];
            r02++;
            r102++;
            r122++;
        }
    }

    public void setXorRange(int r18, PointerUnion pointerUnion, int r20, int r21) {
        int r32 = r18 + this.cp;
        int r42 = r20 + pointerUnion.cp;
        int r52 = pointerUnion.remainder;
        int r6 = 0;
        if (r52 == 0) {
            while (r6 < r21) {
                long[] jArr = this.array;
                jArr[r32] = jArr[r32] ^ pointerUnion.array[r42];
                r6++;
                r32++;
                r42++;
            }
            return;
        }
        int r72 = r52 << 3;
        int r53 = (8 - r52) << 3;
        while (r6 < r21) {
            long[] jArr2 = this.array;
            long j10 = jArr2[r32];
            long[] jArr3 = pointerUnion.array;
            long j11 = jArr3[r42] >>> r72;
            r42++;
            jArr2[r32] = j10 ^ (j11 | (jArr3[r42] << r53));
            r6++;
            r32++;
        }
    }

    public void setXorRange(Pointer pointer, int r13) {
        int r02 = this.cp;
        int r12 = pointer.cp;
        int r22 = 0;
        while (r22 < r13) {
            long[] jArr = this.array;
            jArr[r02] = jArr[r02] ^ pointer.array[r12];
            r22++;
            r02++;
            r12++;
        }
    }

    public void setXorRange(Pointer pointer, int r12, int r13) {
        int r02 = this.cp;
        int r122 = r12 + pointer.cp;
        int r14 = 0;
        while (r14 < r13) {
            long[] jArr = this.array;
            jArr[r02] = jArr[r02] ^ pointer.array[r122];
            r14++;
            r02++;
            r122++;
        }
    }

    public void setXorRangeAndMask(Pointer pointer, int r13, long j10) {
        int r02 = this.cp;
        int r12 = pointer.cp;
        int r22 = 0;
        while (r22 < r13) {
            long[] jArr = this.array;
            jArr[r02] = jArr[r02] ^ (pointer.array[r12] & j10);
            r22++;
            r02++;
            r12++;
        }
    }

    public void setXorRangeAndMaskMove(Pointer pointer, int r11, long j10) {
        int r02 = this.cp;
        int r12 = 0;
        while (r12 < r11) {
            long[] jArr = this.array;
            long j11 = jArr[r02];
            long[] jArr2 = pointer.array;
            int r72 = pointer.cp;
            pointer.cp = r72 + 1;
            jArr[r02] = j11 ^ (jArr2[r72] & j10);
            r12++;
            r02++;
        }
    }

    public void setXorRangeXor(int r19, Pointer pointer, int r21, Pointer pointer2, int r23, int r24) {
        int r32 = r19 + this.cp;
        int r42 = r21 + pointer.cp;
        int r52 = r23 + pointer2.cp;
        int r6 = 0;
        while (r6 < r24) {
            long[] jArr = this.array;
            jArr[r32] = (pointer.array[r42] ^ pointer2.array[r52]) ^ jArr[r32];
            r6++;
            r32++;
            r52++;
            r42++;
        }
    }

    public void setXorRange_SelfMove(Pointer pointer, int r12) {
        int r02 = pointer.cp;
        int r13 = 0;
        while (r13 < r12) {
            long[] jArr = this.array;
            int r32 = this.cp;
            this.cp = r32 + 1;
            jArr[r32] = jArr[r32] ^ pointer.array[r02];
            r13++;
            r02++;
        }
    }

    public void swap(Pointer pointer) {
        long[] jArr = pointer.array;
        int r12 = pointer.cp;
        pointer.array = this.array;
        pointer.cp = this.cp;
        this.array = jArr;
        this.cp = r12;
    }

    public byte[] toBytes(int r6) {
        byte[] bArr = new byte[r6];
        for (int r12 = 0; r12 < r6; r12++) {
            bArr[r12] = (byte) (this.array[this.cp + (r12 >>> 3)] >>> ((r12 & 7) << 3));
        }
        return bArr;
    }
}
