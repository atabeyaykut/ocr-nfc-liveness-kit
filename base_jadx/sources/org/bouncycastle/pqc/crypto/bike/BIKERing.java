package org.bouncycastle.pqc.crypto.bike;

import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class BIKERing {
    private static final int PERMUTATION_CUTOFF = 64;
    private final int bits;
    private final Map<Integer, Integer> halfPowers;
    private final int size;
    private final int sizeExt;

    public BIKERing(int r42) {
        HashMap map = new HashMap();
        this.halfPowers = map;
        if (((-65535) & r42) != 1) {
            throw new IllegalArgumentException();
        }
        this.bits = r42;
        int r12 = (r42 + 63) >>> 6;
        this.size = r12;
        this.sizeExt = r12 * 2;
        generateHalfPowersInv(map, r42);
    }

    private static int generateHalfPower(int r6, int r72, int r82) {
        int r02 = 1;
        while (r82 >= 32) {
            r02 = (int) ((((BodyPartID.bodyIdMax & (r72 * r02)) * r6) + r02) >>> 32);
            r82 -= 32;
        }
        if (r82 <= 0) {
            return r02;
        }
        return (int) ((((BodyPartID.bodyIdMax & ((r72 * r02) & ((-1) >>> (-r82)))) * r6) + r02) >>> r82);
    }

    private static void generateHalfPowersInv(Map<Integer, Integer> map, int r92) {
        int r52;
        int r02 = r92 - 2;
        int r12 = 32 - Integers.numberOfLeadingZeros(r02);
        int r22 = Mod.inverse32(-r92);
        for (int r42 = 1; r42 < r12; r42++) {
            int r53 = 1 << (r42 - 1);
            if (r53 >= 64 && !map.containsKey(Integers.valueOf(r53))) {
                map.put(Integers.valueOf(r53), Integers.valueOf(generateHalfPower(r92, r22, r53)));
            }
            int r54 = 1 << r42;
            if ((r02 & r54) != 0 && (r52 = (r54 - 1) & r02) >= 64 && !map.containsKey(Integers.valueOf(r52))) {
                map.put(Integers.valueOf(r52), Integers.valueOf(generateHalfPower(r92, r22, r52)));
            }
        }
    }

    private static int implModAdd(int r02, int r12, int r22) {
        int r13 = (r12 + r22) - r02;
        return r13 + (r02 & (r13 >> 31));
    }

    private static void implMulwAcc(long[] jArr, long j10, long j11, long[] jArr2, int r19) {
        long j12 = j10;
        jArr[1] = j11;
        for (int r32 = 2; r32 < 16; r32 += 2) {
            long j13 = jArr[r32 >>> 1] << 1;
            jArr[r32] = j13;
            jArr[r32 + 1] = j13 ^ j11;
        }
        int r33 = (int) j12;
        long j14 = jArr[r33 & 15] ^ (jArr[(r33 >>> 4) & 15] << 4);
        long j15 = 0;
        int r52 = 56;
        do {
            int r10 = (int) (j12 >>> r52);
            long j16 = (jArr[(r10 >>> 4) & 15] << 4) ^ jArr[r10 & 15];
            j14 ^= j16 << r52;
            j15 ^= j16 >>> (-r52);
            r52 -= 8;
        } while (r52 > 0);
        for (int r53 = 0; r53 < 7; r53++) {
            j12 = (j12 & (-72340172838076674L)) >>> 1;
            j15 ^= ((j11 << r53) >> 63) & j12;
        }
        jArr2[r19] = jArr2[r19] ^ j14;
        int r02 = r19 + 1;
        jArr2[r02] = jArr2[r02] ^ j15;
    }

    private void implPermute(long[] jArr, int r22, long[] jArr2) {
        int r12 = this.bits;
        int r23 = this.halfPowers.get(Integers.valueOf(r22)).intValue();
        int r32 = implModAdd(r12, r23, r23);
        int r42 = implModAdd(r12, r32, r32);
        int r52 = implModAdd(r12, r42, r42);
        int r6 = r12 - r52;
        int r24 = implModAdd(r12, r6, r23);
        int r72 = implModAdd(r12, r6, r32);
        int r33 = implModAdd(r12, r24, r32);
        int r82 = implModAdd(r12, r6, r42);
        int r92 = implModAdd(r12, r24, r42);
        int r10 = implModAdd(r12, r72, r42);
        int r43 = implModAdd(r12, r33, r42);
        int r122 = 0;
        while (true) {
            int r13 = this.size;
            if (r122 >= r13) {
                int r132 = r13 - 1;
                jArr2[r132] = jArr2[r132] & ((-1) >>> (-r12));
                return;
            }
            long j10 = 0;
            for (int r15 = 0; r15 < 64; r15 += 8) {
                r6 = implModAdd(r12, r6, r52);
                r24 = implModAdd(r12, r24, r52);
                r72 = implModAdd(r12, r72, r52);
                r33 = implModAdd(r12, r33, r52);
                r82 = implModAdd(r12, r82, r52);
                r92 = implModAdd(r12, r92, r52);
                r10 = implModAdd(r12, r10, r52);
                r43 = implModAdd(r12, r43, r52);
                j10 = j10 | (((jArr[r6 >>> 6] >>> r6) & 1) << (r15 + 0)) | (((jArr[r24 >>> 6] >>> r24) & 1) << (r15 + 1)) | (((jArr[r72 >>> 6] >>> r72) & 1) << (r15 + 2)) | (((jArr[r33 >>> 6] >>> r33) & 1) << (r15 + 3)) | (((jArr[r82 >>> 6] >>> r82) & 1) << (r15 + 4)) | (((jArr[r92 >>> 6] >>> r92) & 1) << (r15 + 5)) | (((jArr[r10 >>> 6] >>> r10) & 1) << (r15 + 6)) | (((jArr[r43 >>> 6] >>> r43) & 1) << (r15 + 7));
            }
            jArr2[r122] = j10;
            r122++;
        }
    }

    private void implSquare(long[] jArr, long[] jArr2) {
        Interleave.expand64To128(jArr, 0, this.size, jArr2, 0);
    }

    public void add(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int r02 = 0; r02 < this.size; r02++) {
            jArr3[r02] = jArr[r02] ^ jArr2[r02];
        }
    }

    public void addTo(long[] jArr, long[] jArr2) {
        for (int r02 = 0; r02 < this.size; r02++) {
            jArr2[r02] = jArr2[r02] ^ jArr[r02];
        }
    }

    public void copy(long[] jArr, long[] jArr2) {
        for (int r02 = 0; r02 < this.size; r02++) {
            jArr2[r02] = jArr[r02];
        }
    }

    public long[] create() {
        return new long[this.size];
    }

    public long[] createExt() {
        return new long[this.sizeExt];
    }

    public void decodeBytes(byte[] bArr, long[] jArr) {
        int r02 = this.bits & 63;
        Pack.littleEndianToLong(bArr, 0, jArr, 0, this.size - 1);
        byte[] bArr2 = new byte[8];
        System.arraycopy(bArr, (this.size - 1) << 3, bArr2, 0, (r02 + 7) >>> 3);
        jArr[this.size - 1] = Pack.littleEndianToLong(bArr2, 0);
    }

    public byte[] encodeBitsTransposed(long[] jArr) {
        byte[] bArr = new byte[this.bits];
        bArr[0] = (byte) (jArr[0] & 1);
        int r12 = 1;
        while (true) {
            int r22 = this.bits;
            if (r12 >= r22) {
                return bArr;
            }
            bArr[r22 - r12] = (byte) ((jArr[r12 >>> 6] >>> (r12 & 63)) & 1);
            r12++;
        }
    }

    public void encodeBytes(long[] jArr, byte[] bArr) {
        int r02 = this.bits & 63;
        Pack.longToLittleEndian(jArr, 0, this.size - 1, bArr, 0);
        byte[] bArr2 = new byte[8];
        Pack.longToLittleEndian(jArr[this.size - 1], bArr2, 0);
        System.arraycopy(bArr2, 0, bArr, (this.size - 1) << 3, (r02 + 7) >>> 3);
    }

    public int getSize() {
        return this.size;
    }

    public int getSizeExt() {
        return this.sizeExt;
    }

    public void implMultiplyAcc(long[] jArr, long[] jArr2, long[] jArr3) {
        int r42;
        long[] jArr4 = new long[16];
        int r82 = 0;
        for (int r92 = 0; r92 < this.size; r92++) {
            implMulwAcc(jArr4, jArr[r92], jArr2[r92], jArr3, r92 << 1);
        }
        long j10 = jArr3[0];
        long j11 = jArr3[1];
        for (int r6 = 1; r6 < this.size; r6++) {
            int r72 = r6 << 1;
            j10 ^= jArr3[r72];
            jArr3[r6] = j10 ^ j11;
            j11 ^= jArr3[r72 + 1];
        }
        long j12 = j10 ^ j11;
        while (true) {
            r42 = this.size;
            if (r82 >= r42) {
                break;
            }
            jArr3[r42 + r82] = jArr3[r82] ^ j12;
            r82++;
        }
        int r83 = r42 - 1;
        for (int r93 = 1; r93 < r83 * 2; r93++) {
            int r12 = Math.min(r83, r93);
            int r11 = r93 - r12;
            for (int r10 = r12; r11 < r10; r10--) {
                implMulwAcc(jArr4, jArr[r11] ^ jArr[r10], jArr2[r11] ^ jArr2[r10], jArr3, r93);
                r11++;
            }
        }
    }

    public void inv(long[] jArr, long[] jArr2) {
        long[] jArrCreate = create();
        long[] jArrCreate2 = create();
        long[] jArrCreate3 = create();
        copy(jArr, jArrCreate);
        copy(jArr, jArrCreate3);
        int r92 = this.bits - 2;
        int r32 = 32 - Integers.numberOfLeadingZeros(r92);
        for (int r52 = 1; r52 < r32; r52++) {
            squareN(jArrCreate, 1 << (r52 - 1), jArrCreate2);
            multiply(jArrCreate, jArrCreate2, jArrCreate);
            int r6 = 1 << r52;
            if ((r92 & r6) != 0) {
                squareN(jArrCreate, (r6 - 1) & r92, jArrCreate2);
                multiply(jArrCreate3, jArrCreate2, jArrCreate3);
            }
        }
        square(jArrCreate3, jArr2);
    }

    public void multiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrCreateExt = createExt();
        implMultiplyAcc(jArr, jArr2, jArrCreateExt);
        reduce(jArrCreateExt, jArr3);
    }

    public void reduce(long[] jArr, long[] jArr2) {
        int r42 = 64 - (this.bits & 63);
        int r32 = this.size;
        Nat.shiftUpBits64(r32, jArr, r32, r42, jArr[r32 - 1], jArr2, 0);
        addTo(jArr, jArr2);
        int r12 = this.size - 1;
        jArr2[r12] = jArr2[r12] & ((-1) >>> r42);
    }

    public void square(long[] jArr, long[] jArr2) {
        long[] jArrCreateExt = createExt();
        implSquare(jArr, jArrCreateExt);
        reduce(jArrCreateExt, jArr2);
    }

    public void squareN(long[] jArr, int r32, long[] jArr2) {
        if (r32 >= 64) {
            implPermute(jArr, r32, jArr2);
            return;
        }
        long[] jArrCreateExt = createExt();
        implSquare(jArr, jArrCreateExt);
        while (true) {
            reduce(jArrCreateExt, jArr2);
            r32--;
            if (r32 <= 0) {
                return;
            } else {
                implSquare(jArr2, jArrCreateExt);
            }
        }
    }
}
