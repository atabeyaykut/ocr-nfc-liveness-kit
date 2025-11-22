package org.bouncycastle.pqc.legacy.math.linearalgebra;

import android.support.v4.media.a;
import androidx.core.location.LocationRequestCompat;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class GF2nONBElement extends GF2nElement {
    private static final int MAXLONG = 64;
    private int mBit;
    private int mLength;
    private long[] mPol;
    private static final long[] mBitmask = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824, 2147483648L, 4294967296L, 8589934592L, 17179869184L, 34359738368L, 68719476736L, 137438953472L, 274877906944L, 549755813888L, 1099511627776L, 2199023255552L, 4398046511104L, 8796093022208L, 17592186044416L, 35184372088832L, 70368744177664L, 140737488355328L, 281474976710656L, 562949953421312L, 1125899906842624L, 2251799813685248L, 4503599627370496L, 9007199254740992L, 18014398509481984L, 36028797018963968L, 72057594037927936L, 144115188075855872L, 288230376151711744L, 576460752303423488L, 1152921504606846976L, 2305843009213693952L, 4611686018427387904L, Long.MIN_VALUE};
    private static final long[] mMaxmask = {1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535, 131071, 262143, 524287, 1048575, 2097151, 4194303, 8388607, 16777215, 33554431, 67108863, 134217727, 268435455, 536870911, 1073741823, 2147483647L, BodyPartID.bodyIdMax, 8589934591L, 17179869183L, 34359738367L, 68719476735L, 137438953471L, 274877906943L, 549755813887L, 1099511627775L, 2199023255551L, 4398046511103L, 8796093022207L, 17592186044415L, 35184372088831L, 70368744177663L, 140737488355327L, 281474976710655L, 562949953421311L, 1125899906842623L, 2251799813685247L, 4503599627370495L, 9007199254740991L, 18014398509481983L, 36028797018963967L, 72057594037927935L, 144115188075855871L, 288230376151711743L, 576460752303423487L, 1152921504606846975L, 2305843009213693951L, 4611686018427387903L, LocationRequestCompat.PASSIVE_INTERVAL, -1};
    private static final int[] mIBY64 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5};

    public GF2nONBElement(GF2nONBElement gF2nONBElement) {
        GF2nField gF2nField = gF2nONBElement.mField;
        this.mField = gF2nField;
        this.mDegree = gF2nField.getDegree();
        this.mLength = ((GF2nONBField) this.mField).getONBLength();
        this.mBit = ((GF2nONBField) this.mField).getONBBit();
        this.mPol = new long[this.mLength];
        assign(gF2nONBElement.getElement());
    }

    public GF2nONBElement(GF2nONBField gF2nONBField, BigInteger bigInteger) {
        this.mField = gF2nONBField;
        this.mDegree = gF2nONBField.getDegree();
        this.mLength = gF2nONBField.getONBLength();
        this.mBit = gF2nONBField.getONBBit();
        this.mPol = new long[this.mLength];
        assign(bigInteger);
    }

    public GF2nONBElement(GF2nONBField gF2nONBField, SecureRandom secureRandom) {
        this.mField = gF2nONBField;
        this.mDegree = gF2nONBField.getDegree();
        this.mLength = gF2nONBField.getONBLength();
        this.mBit = gF2nONBField.getONBBit();
        int r6 = this.mLength;
        long[] jArr = new long[r6];
        this.mPol = jArr;
        if (r6 <= 1) {
            jArr[0] = secureRandom.nextLong();
            long[] jArr2 = this.mPol;
            jArr2[0] = jArr2[0] >>> (64 - this.mBit);
        } else {
            for (int r12 = 0; r12 < this.mLength - 1; r12++) {
                this.mPol[r12] = secureRandom.nextLong();
            }
            this.mPol[this.mLength - 1] = secureRandom.nextLong() >>> (64 - this.mBit);
        }
    }

    public GF2nONBElement(GF2nONBField gF2nONBField, byte[] bArr) {
        this.mField = gF2nONBField;
        this.mDegree = gF2nONBField.getDegree();
        this.mLength = gF2nONBField.getONBLength();
        this.mBit = gF2nONBField.getONBBit();
        this.mPol = new long[this.mLength];
        assign(bArr);
    }

    private GF2nONBElement(GF2nONBField gF2nONBField, long[] jArr) {
        this.mField = gF2nONBField;
        this.mDegree = gF2nONBField.getDegree();
        this.mLength = gF2nONBField.getONBLength();
        this.mBit = gF2nONBField.getONBBit();
        this.mPol = jArr;
    }

    public static GF2nONBElement ONE(GF2nONBField gF2nONBField) {
        int oNBLength = gF2nONBField.getONBLength();
        long[] jArr = new long[oNBLength];
        int r22 = 0;
        while (true) {
            int r32 = oNBLength - 1;
            if (r22 >= r32) {
                jArr[r32] = mMaxmask[gF2nONBField.getONBBit() - 1];
                return new GF2nONBElement(gF2nONBField, jArr);
            }
            jArr[r22] = -1;
            r22++;
        }
    }

    public static GF2nONBElement ZERO(GF2nONBField gF2nONBField) {
        return new GF2nONBElement(gF2nONBField, new long[gF2nONBField.getONBLength()]);
    }

    private void assign(BigInteger bigInteger) {
        assign(bigInteger.toByteArray());
    }

    private void assign(byte[] bArr) {
        this.mPol = new long[this.mLength];
        for (int r02 = 0; r02 < bArr.length; r02++) {
            long[] jArr = this.mPol;
            int r22 = r02 >>> 3;
            jArr[r22] = jArr[r22] | ((bArr[(bArr.length - 1) - r02] & 255) << ((r02 & 7) << 3));
        }
    }

    private void assign(long[] jArr) {
        System.arraycopy(jArr, 0, this.mPol, 0, this.mLength);
    }

    private long[] getElement() {
        long[] jArr = this.mPol;
        long[] jArr2 = new long[jArr.length];
        System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        return jArr2;
    }

    private long[] getElementReverseOrder() {
        long[] jArr = new long[this.mPol.length];
        int r12 = 0;
        while (true) {
            if (r12 >= this.mDegree) {
                return jArr;
            }
            if (testBit((r2 - r12) - 1)) {
                int r22 = r12 >>> 6;
                jArr[r22] = jArr[r22] | mBitmask[r12 & 63];
            }
            r12++;
        }
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GFElement
    public GFElement add(GFElement gFElement) throws RuntimeException {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.addToThis(gFElement);
        return gF2nONBElement;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GFElement
    public void addToThis(GFElement gFElement) throws RuntimeException {
        if (!(gFElement instanceof GF2nONBElement)) {
            throw new RuntimeException();
        }
        GF2nONBElement gF2nONBElement = (GF2nONBElement) gFElement;
        if (!this.mField.equals(gF2nONBElement.mField)) {
            throw new RuntimeException();
        }
        for (int r02 = 0; r02 < this.mLength; r02++) {
            long[] jArr = this.mPol;
            jArr[r02] = jArr[r02] ^ gF2nONBElement.mPol[r02];
        }
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nElement
    public void assignOne() {
        int r02 = 0;
        while (true) {
            int r12 = this.mLength;
            if (r02 >= r12 - 1) {
                this.mPol[r12 - 1] = mMaxmask[this.mBit - 1];
                return;
            } else {
                this.mPol[r02] = -1;
                r02++;
            }
        }
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nElement
    public void assignZero() {
        this.mPol = new long[this.mLength];
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nElement, org.bouncycastle.pqc.legacy.math.linearalgebra.GFElement
    public Object clone() {
        return new GF2nONBElement(this);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GFElement
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GF2nONBElement)) {
            return false;
        }
        GF2nONBElement gF2nONBElement = (GF2nONBElement) obj;
        for (int r12 = 0; r12 < this.mLength; r12++) {
            if (this.mPol[r12] != gF2nONBElement.mPol[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GFElement
    public int hashCode() {
        return Arrays.hashCode(this.mPol);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nElement
    public GF2nElement increase() throws RuntimeException {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.increaseThis();
        return gF2nONBElement;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nElement
    public void increaseThis() throws RuntimeException {
        addToThis(ONE((GF2nONBField) this.mField));
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GFElement
    public GFElement invert() throws RuntimeException {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.invertThis();
        return gF2nONBElement;
    }

    public void invertThis() throws RuntimeException {
        if (isZero()) {
            throw new ArithmeticException();
        }
        int r02 = 31;
        boolean z10 = false;
        while (!z10 && r02 >= 0) {
            if (((this.mDegree - 1) & mBitmask[r02]) != 0) {
                z10 = true;
            }
            r02--;
        }
        ZERO((GF2nONBField) this.mField);
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        int r52 = 1;
        for (int r03 = (r02 + 1) - 1; r03 >= 0; r03--) {
            GF2nElement gF2nElement = (GF2nElement) gF2nONBElement.clone();
            for (int r72 = 1; r72 <= r52; r72++) {
                gF2nElement.squareThis();
            }
            gF2nONBElement.multiplyThisBy(gF2nElement);
            r52 <<= 1;
            if (((this.mDegree - 1) & mBitmask[r03]) != 0) {
                gF2nONBElement.squareThis();
                gF2nONBElement.multiplyThisBy(this);
                r52++;
            }
        }
        gF2nONBElement.squareThis();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GFElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isOne() {
        /*
            r8 = this;
            r0 = 1
            r1 = 0
            r2 = 0
            r3 = 1
        L4:
            int r4 = r8.mLength
            int r5 = r4 + (-1)
            if (r2 >= r5) goto L20
            if (r3 == 0) goto L20
            if (r3 == 0) goto L1c
            long[] r3 = r8.mPol
            r4 = r3[r2]
            r6 = -1
            long r3 = r4 & r6
            int r5 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r5 != 0) goto L1c
            r3 = 1
            goto L1d
        L1c:
            r3 = 0
        L1d:
            int r2 = r2 + 1
            goto L4
        L20:
            if (r3 == 0) goto L3c
            if (r3 == 0) goto L3a
            long[] r2 = r8.mPol
            int r4 = r4 - r0
            r3 = r2[r4]
            long[] r2 = org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nONBElement.mMaxmask
            int r5 = r8.mBit
            int r6 = r5 + (-1)
            r6 = r2[r6]
            long r3 = r3 & r6
            int r5 = r5 - r0
            r5 = r2[r5]
            int r2 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r2 != 0) goto L3a
            goto L3b
        L3a:
            r0 = 0
        L3b:
            r3 = r0
        L3c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nONBElement.isOne():boolean");
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GFElement
    public boolean isZero() {
        boolean z10 = true;
        for (int r22 = 0; r22 < this.mLength && z10; r22++) {
            z10 = z10 && (this.mPol[r22] & (-1)) == 0;
        }
        return z10;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GFElement
    public GFElement multiply(GFElement gFElement) throws RuntimeException {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.multiplyThisBy(gFElement);
        return gF2nONBElement;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GFElement
    public void multiplyThisBy(GFElement gFElement) throws RuntimeException {
        char c10;
        boolean z10;
        char c11;
        boolean z11;
        if (!(gFElement instanceof GF2nONBElement)) {
            throw new RuntimeException("The elements have different representation: not yet implemented");
        }
        GF2nONBElement gF2nONBElement = (GF2nONBElement) gFElement;
        if (!this.mField.equals(gF2nONBElement.mField)) {
            throw new RuntimeException();
        }
        if (equals(gFElement)) {
            squareThis();
            return;
        }
        long[] jArr = this.mPol;
        long[] jArr2 = gF2nONBElement.mPol;
        int r32 = this.mLength;
        long[] jArr3 = new long[r32];
        int[][] r52 = ((GF2nONBField) this.mField).mMult;
        int r33 = r32 - 1;
        int r72 = this.mBit - 1;
        long[] jArr4 = mBitmask;
        long j10 = jArr4[63];
        long j11 = jArr4[r72];
        char c12 = 0;
        int r13 = 0;
        while (r13 < this.mDegree) {
            int r14 = 0;
            boolean z12 = false;
            while (r14 < this.mDegree) {
                int[] r6 = mIBY64;
                int r18 = r6[r14];
                int[] r20 = r52[r14];
                int r21 = r20[c12];
                int r22 = r6[r21];
                int r212 = r21 & 63;
                long j12 = jArr[r18];
                long[] jArr5 = mBitmask;
                if ((j12 & jArr5[r14 & 63]) != 0) {
                    if ((jArr2[r22] & jArr5[r212]) != 0) {
                        z12 = !z12;
                    }
                    int r92 = r20[1];
                    if (r92 != -1) {
                        if ((jArr2[r6[r92]] & jArr5[r92 & 63]) != 0) {
                            z12 = !z12;
                        }
                    }
                }
                r14++;
                c12 = 0;
            }
            int r62 = mIBY64[r13];
            int r93 = r13 & 63;
            if (z12) {
                jArr3[r62] = jArr3[r62] ^ mBitmask[r93];
            }
            if (this.mLength > 1) {
                boolean z13 = (jArr[r33] & 1) == 1;
                int r94 = r33 - 1;
                int r12 = r94;
                while (r12 >= 0) {
                    long j13 = jArr[r12];
                    boolean z14 = (j13 & 1) != 0;
                    long j14 = j13 >>> 1;
                    jArr[r12] = j14;
                    if (z13) {
                        jArr[r12] = j14 ^ j10;
                    }
                    r12--;
                    z13 = z14;
                }
                long j15 = jArr[r33] >>> 1;
                jArr[r33] = j15;
                if (z13) {
                    jArr[r33] = j15 ^ j11;
                }
                boolean z15 = (jArr2[r33] & 1) == 1;
                while (r94 >= 0) {
                    long j16 = jArr2[r94];
                    boolean z16 = (j16 & 1) != 0;
                    long j17 = j16 >>> 1;
                    jArr2[r94] = j17;
                    if (z15) {
                        jArr2[r94] = j17 ^ j10;
                    }
                    r94--;
                    z15 = z16;
                }
                long j18 = jArr2[r33] >>> 1;
                jArr2[r33] = j18;
                if (z15) {
                    jArr2[r33] = j18 ^ j11;
                }
            } else {
                long j19 = jArr[0];
                if ((j19 & 1) == 1) {
                    c10 = 1;
                    z10 = true;
                } else {
                    c10 = 1;
                    z10 = false;
                }
                long j20 = j19 >>> c10;
                jArr[0] = j20;
                if (z10) {
                    jArr[0] = j20 ^ j11;
                }
                long j21 = jArr2[0];
                if ((j21 & 1) == 1) {
                    c11 = 1;
                    z11 = true;
                } else {
                    c11 = 1;
                    z11 = false;
                }
                long j22 = j21 >>> c11;
                jArr2[0] = j22;
                if (z11) {
                    jArr2[0] = j22 ^ j11;
                }
            }
            r13++;
            c12 = 0;
        }
        assign(jArr3);
    }

    public void reverseOrder() {
        this.mPol = getElementReverseOrder();
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nElement
    public GF2nElement solveQuadraticEquation() throws RuntimeException {
        int r11;
        if (trace() == 1) {
            throw new RuntimeException();
        }
        long j10 = mBitmask[63];
        long[] jArr = new long[this.mLength];
        int r82 = 0;
        long j11 = 0;
        while (true) {
            r11 = this.mLength;
            if (r82 >= r11 - 1) {
                break;
            }
            for (int r112 = 1; r112 < 64; r112++) {
                long[] jArr2 = mBitmask;
                long j12 = jArr2[r112];
                long j13 = this.mPol[r82];
                if (((j12 & j13) == 0 || (j11 & jArr2[r112 - 1]) == 0) && ((j13 & j12) != 0 || (jArr2[r112 - 1] & j11) != 0)) {
                    j11 ^= j12;
                }
            }
            jArr[r82] = j11;
            long j14 = j11 & j10;
            j11 = ((j14 == 0 || (1 & this.mPol[r82 + 1]) != 1) && !(j14 == 0 && (1 & this.mPol[r82 + 1]) == 0)) ? 1L : 0L;
            r82++;
        }
        int r32 = 63 & this.mDegree;
        long j15 = this.mPol[r11 - 1];
        for (int r42 = 1; r42 < r32; r42++) {
            long[] jArr3 = mBitmask;
            long j16 = jArr3[r42];
            if (((j16 & j15) == 0 || (jArr3[r42 - 1] & j11) == 0) && ((j16 & j15) != 0 || (jArr3[r42 - 1] & j11) != 0)) {
                j11 ^= j16;
            }
        }
        jArr[this.mLength - 1] = j11;
        return new GF2nONBElement((GF2nONBField) this.mField, jArr);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nElement
    public GF2nElement square() {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.squareThis();
        return gF2nONBElement;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nElement
    public GF2nElement squareRoot() {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.squareRootThis();
        return gF2nONBElement;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nElement
    public void squareRootThis() {
        long[] element = getElement();
        int r22 = this.mLength - 1;
        int r42 = this.mBit - 1;
        long j10 = mBitmask[63];
        boolean z10 = (element[0] & 1) != 0;
        int r92 = r22;
        while (r92 >= 0) {
            long j11 = element[r92];
            boolean z11 = (j11 & 1) != 0;
            long j12 = j11 >>> 1;
            element[r92] = j12;
            if (z10) {
                if (r92 == r22) {
                    element[r92] = j12 ^ mBitmask[r42];
                } else {
                    element[r92] = j12 ^ j10;
                }
            }
            r92--;
            z10 = z11;
        }
        assign(element);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nElement
    public void squareThis() {
        long[] element = getElement();
        int r22 = this.mLength - 1;
        int r42 = this.mBit - 1;
        long[] jArr = mBitmask;
        long j10 = jArr[63];
        boolean z10 = (element[r22] & jArr[r42]) != 0;
        int r92 = 0;
        while (r92 < r22) {
            long j11 = element[r92];
            boolean z11 = (j11 & j10) != 0;
            long j12 = j11 << 1;
            element[r92] = j12;
            if (z10) {
                element[r92] = 1 ^ j12;
            }
            r92++;
            z10 = z11;
        }
        long j13 = element[r22];
        long[] jArr2 = mBitmask;
        boolean z12 = (jArr2[r42] & j13) != 0;
        long j14 = j13 << 1;
        element[r22] = j14;
        if (z10) {
            element[r22] = j14 ^ 1;
        }
        if (z12) {
            element[r22] = jArr2[r42 + 1] ^ element[r22];
        }
        assign(element);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nElement
    public boolean testBit(int r72) {
        return r72 >= 0 && r72 <= this.mDegree && (this.mPol[r72 >>> 6] & mBitmask[r72 & 63]) != 0;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nElement
    public boolean testRightmostBit() {
        return (this.mPol[this.mLength - 1] & mBitmask[this.mBit - 1]) != 0;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GFElement
    public byte[] toByteArray() {
        int r02 = ((this.mDegree - 1) >> 3) + 1;
        byte[] bArr = new byte[r02];
        for (int r22 = 0; r22 < r02; r22++) {
            int r42 = (r22 & 7) << 3;
            bArr[(r02 - r22) - 1] = (byte) ((this.mPol[r22 >>> 3] & (255 << r42)) >>> r42);
        }
        return bArr;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GFElement
    public BigInteger toFlexiBigInt() {
        return new BigInteger(1, toByteArray());
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GFElement
    public String toString() {
        return toString(16);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GFElement
    public String toString(int r13) {
        long[] element = getElement();
        int r12 = this.mBit;
        String strF = "";
        if (r13 == 2) {
            while (true) {
                r12--;
                if (r12 < 0) {
                    break;
                }
                strF = (element[element.length + (-1)] & (1 << r12)) == 0 ? a.f(strF, "0") : a.f(strF, "1");
            }
            for (int length = element.length - 2; length >= 0; length--) {
                for (int r32 = 63; r32 >= 0; r32--) {
                    long j10 = element[length] & mBitmask[r32];
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(strF);
                    if (j10 == 0) {
                        sb2.append("0");
                    } else {
                        sb2.append("1");
                    }
                    strF = sb2.toString();
                }
            }
        } else if (r13 == 16) {
            char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
            int length2 = element.length;
            while (true) {
                length2--;
                if (length2 < 0) {
                    break;
                }
                StringBuilder sbE = androidx.constraintlayout.core.a.e(strF);
                sbE.append(cArr[((int) (element[length2] >>> 60)) & 15]);
                StringBuilder sbE2 = androidx.constraintlayout.core.a.e(sbE.toString());
                sbE2.append(cArr[((int) (element[length2] >>> 56)) & 15]);
                StringBuilder sbE3 = androidx.constraintlayout.core.a.e(sbE2.toString());
                sbE3.append(cArr[((int) (element[length2] >>> 52)) & 15]);
                StringBuilder sbE4 = androidx.constraintlayout.core.a.e(sbE3.toString());
                sbE4.append(cArr[((int) (element[length2] >>> 48)) & 15]);
                StringBuilder sbE5 = androidx.constraintlayout.core.a.e(sbE4.toString());
                sbE5.append(cArr[((int) (element[length2] >>> 44)) & 15]);
                StringBuilder sbE6 = androidx.constraintlayout.core.a.e(sbE5.toString());
                sbE6.append(cArr[((int) (element[length2] >>> 40)) & 15]);
                StringBuilder sbE7 = androidx.constraintlayout.core.a.e(sbE6.toString());
                sbE7.append(cArr[((int) (element[length2] >>> 36)) & 15]);
                StringBuilder sbE8 = androidx.constraintlayout.core.a.e(sbE7.toString());
                sbE8.append(cArr[((int) (element[length2] >>> 32)) & 15]);
                StringBuilder sbE9 = androidx.constraintlayout.core.a.e(sbE8.toString());
                sbE9.append(cArr[((int) (element[length2] >>> 28)) & 15]);
                StringBuilder sbE10 = androidx.constraintlayout.core.a.e(sbE9.toString());
                sbE10.append(cArr[((int) (element[length2] >>> 24)) & 15]);
                StringBuilder sbE11 = androidx.constraintlayout.core.a.e(sbE10.toString());
                sbE11.append(cArr[((int) (element[length2] >>> 20)) & 15]);
                StringBuilder sbE12 = androidx.constraintlayout.core.a.e(sbE11.toString());
                sbE12.append(cArr[((int) (element[length2] >>> 16)) & 15]);
                StringBuilder sbE13 = androidx.constraintlayout.core.a.e(sbE12.toString());
                sbE13.append(cArr[((int) (element[length2] >>> 12)) & 15]);
                StringBuilder sbE14 = androidx.constraintlayout.core.a.e(sbE13.toString());
                sbE14.append(cArr[((int) (element[length2] >>> 8)) & 15]);
                StringBuilder sbE15 = androidx.constraintlayout.core.a.e(sbE14.toString());
                sbE15.append(cArr[((int) (element[length2] >>> 4)) & 15]);
                StringBuilder sbE16 = androidx.constraintlayout.core.a.e(sbE15.toString());
                sbE16.append(cArr[((int) element[length2]) & 15]);
                strF = a.f(sbE16.toString(), " ");
            }
        }
        return strF;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nElement
    public int trace() {
        int r02 = this.mLength - 1;
        int r32 = 0;
        for (int r22 = 0; r22 < r02; r22++) {
            for (int r6 = 0; r6 < 64; r6++) {
                if ((this.mPol[r22] & mBitmask[r6]) != 0) {
                    r32 ^= 1;
                }
            }
        }
        int r23 = this.mBit;
        for (int r12 = 0; r12 < r23; r12++) {
            if ((this.mPol[r02] & mBitmask[r12]) != 0) {
                r32 ^= 1;
            }
        }
        return r32;
    }
}
