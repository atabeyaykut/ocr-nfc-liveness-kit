package org.bouncycastle.math.ec;

import android.support.v4.media.a;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Random;
import java.util.Set;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.math.Primes;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.ec.endo.ECEndomorphism;
import org.bouncycastle.math.ec.endo.GLVEndomorphism;
import org.bouncycastle.math.field.FiniteField;
import org.bouncycastle.math.field.FiniteFields;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Properties;

/* loaded from: classes2.dex */
public abstract class ECCurve {
    public static final int COORD_AFFINE = 0;
    public static final int COORD_HOMOGENEOUS = 1;
    public static final int COORD_JACOBIAN = 2;
    public static final int COORD_JACOBIAN_CHUDNOVSKY = 3;
    public static final int COORD_JACOBIAN_MODIFIED = 4;
    public static final int COORD_LAMBDA_AFFINE = 5;
    public static final int COORD_LAMBDA_PROJECTIVE = 6;
    public static final int COORD_SKEWED = 7;

    /* renamed from: a, reason: collision with root package name */
    protected ECFieldElement f11714a;

    /* renamed from: b, reason: collision with root package name */
    protected ECFieldElement f11715b;
    protected BigInteger cofactor;
    protected FiniteField field;
    protected BigInteger order;
    protected int coord = 0;
    protected ECEndomorphism endomorphism = null;
    protected ECMultiplier multiplier = null;

    public static abstract class AbstractF2m extends ECCurve {
        private BigInteger[] si;

        public AbstractF2m(int r12, int r22, int r32, int r42) {
            super(buildField(r12, r22, r32, r42));
            this.si = null;
            if (Properties.isOverrideSet("org.bouncycastle.ec.disable")) {
                throw new UnsupportedOperationException("F2M disabled by \"org.bouncycastle.ec.disable\"");
            }
            if (Properties.isOverrideSet("org.bouncycastle.ec.disable_f2m")) {
                throw new UnsupportedOperationException("F2M disabled by \"org.bouncycastle.ec.disable_f2m\"");
            }
        }

        private static FiniteField buildField(int r52, int r6, int r72, int r82) {
            if (r52 <= Properties.asInteger("org.bouncycastle.ec.max_f2m_field_size", 1142)) {
                return FiniteFields.getBinaryExtensionField((r72 | r82) == 0 ? new int[]{0, r6, r52} : new int[]{0, r6, r72, r82, r52});
            }
            throw new IllegalArgumentException(a.d("field size out of range: ", r52));
        }

        private static BigInteger implRandomFieldElementMult(SecureRandom secureRandom, int r32) {
            BigInteger bigIntegerCreateRandomBigInteger;
            do {
                bigIntegerCreateRandomBigInteger = BigIntegers.createRandomBigInteger(r32, secureRandom);
            } while (bigIntegerCreateRandomBigInteger.signum() <= 0);
            return bigIntegerCreateRandomBigInteger;
        }

        public static BigInteger inverse(int r12, int[] r22, BigInteger bigInteger) {
            return new LongArray(bigInteger).modInverse(r12, r22).toBigInteger();
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint createPoint(BigInteger bigInteger, BigInteger bigInteger2) {
            ECFieldElement eCFieldElementFromBigInteger = fromBigInteger(bigInteger);
            ECFieldElement eCFieldElementFromBigInteger2 = fromBigInteger(bigInteger2);
            int coordinateSystem = getCoordinateSystem();
            if (coordinateSystem == 5 || coordinateSystem == 6) {
                if (!eCFieldElementFromBigInteger.isZero()) {
                    eCFieldElementFromBigInteger2 = eCFieldElementFromBigInteger2.divide(eCFieldElementFromBigInteger).add(eCFieldElementFromBigInteger);
                } else if (!eCFieldElementFromBigInteger2.square().equals(getB())) {
                    throw new IllegalArgumentException();
                }
            }
            return createRawPoint(eCFieldElementFromBigInteger, eCFieldElementFromBigInteger2);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint decompressPoint(int r42, BigInteger bigInteger) {
            ECFieldElement eCFieldElementAdd;
            ECFieldElement eCFieldElementFromBigInteger = fromBigInteger(bigInteger);
            if (eCFieldElementFromBigInteger.isZero()) {
                eCFieldElementAdd = getB().sqrt();
            } else {
                ECFieldElement eCFieldElementSolveQuadraticEquation = solveQuadraticEquation(eCFieldElementFromBigInteger.square().invert().multiply(getB()).add(getA()).add(eCFieldElementFromBigInteger));
                if (eCFieldElementSolveQuadraticEquation != null) {
                    if (eCFieldElementSolveQuadraticEquation.testBitZero() != (r42 == 1)) {
                        eCFieldElementSolveQuadraticEquation = eCFieldElementSolveQuadraticEquation.addOne();
                    }
                    int coordinateSystem = getCoordinateSystem();
                    eCFieldElementAdd = (coordinateSystem == 5 || coordinateSystem == 6) ? eCFieldElementSolveQuadraticEquation.add(eCFieldElementFromBigInteger) : eCFieldElementSolveQuadraticEquation.multiply(eCFieldElementFromBigInteger);
                } else {
                    eCFieldElementAdd = null;
                }
            }
            if (eCFieldElementAdd != null) {
                return createRawPoint(eCFieldElementFromBigInteger, eCFieldElementAdd);
            }
            throw new IllegalArgumentException("Invalid point compression");
        }

        public synchronized BigInteger[] getSi() {
            if (this.si == null) {
                this.si = Tnaf.getSi(this);
            }
            return this.si;
        }

        public boolean isKoblitz() {
            return this.order != null && this.cofactor != null && this.f11715b.isOne() && (this.f11714a.isZero() || this.f11714a.isOne());
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public boolean isValidFieldElement(BigInteger bigInteger) {
            return bigInteger != null && bigInteger.signum() >= 0 && bigInteger.bitLength() <= getFieldSize();
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECFieldElement randomFieldElement(SecureRandom secureRandom) {
            return fromBigInteger(BigIntegers.createRandomBigInteger(getFieldSize(), secureRandom));
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECFieldElement randomFieldElementMult(SecureRandom secureRandom) {
            int fieldSize = getFieldSize();
            return fromBigInteger(implRandomFieldElementMult(secureRandom, fieldSize)).multiply(fromBigInteger(implRandomFieldElementMult(secureRandom, fieldSize)));
        }

        public ECFieldElement solveQuadraticEquation(ECFieldElement eCFieldElement) {
            ECFieldElement eCFieldElementAdd;
            ECFieldElement.AbstractF2m abstractF2m = (ECFieldElement.AbstractF2m) eCFieldElement;
            boolean zHasFastTrace = abstractF2m.hasFastTrace();
            if (zHasFastTrace && abstractF2m.trace() != 0) {
                return null;
            }
            int fieldSize = getFieldSize();
            if ((fieldSize & 1) != 0) {
                ECFieldElement eCFieldElementHalfTrace = abstractF2m.halfTrace();
                if (zHasFastTrace || eCFieldElementHalfTrace.square().add(eCFieldElementHalfTrace).add(eCFieldElement).isZero()) {
                    return eCFieldElementHalfTrace;
                }
                return null;
            }
            if (eCFieldElement.isZero()) {
                return eCFieldElement;
            }
            ECFieldElement eCFieldElementFromBigInteger = fromBigInteger(ECConstants.ZERO);
            Random random = new Random();
            do {
                ECFieldElement eCFieldElementFromBigInteger2 = fromBigInteger(new BigInteger(fieldSize, random));
                ECFieldElement eCFieldElementAdd2 = eCFieldElement;
                eCFieldElementAdd = eCFieldElementFromBigInteger;
                for (int r52 = 1; r52 < fieldSize; r52++) {
                    ECFieldElement eCFieldElementSquare = eCFieldElementAdd2.square();
                    eCFieldElementAdd = eCFieldElementAdd.square().add(eCFieldElementSquare.multiply(eCFieldElementFromBigInteger2));
                    eCFieldElementAdd2 = eCFieldElementSquare.add(eCFieldElement);
                }
                if (!eCFieldElementAdd2.isZero()) {
                    return null;
                }
            } while (eCFieldElementAdd.square().add(eCFieldElementAdd).isZero());
            return eCFieldElementAdd;
        }
    }

    public static abstract class AbstractFp extends ECCurve {
        public AbstractFp(BigInteger bigInteger) {
            super(FiniteFields.getPrimeField(bigInteger));
        }

        private static BigInteger implRandomFieldElement(SecureRandom secureRandom, BigInteger bigInteger) {
            BigInteger bigIntegerCreateRandomBigInteger;
            do {
                bigIntegerCreateRandomBigInteger = BigIntegers.createRandomBigInteger(bigInteger.bitLength(), secureRandom);
            } while (bigIntegerCreateRandomBigInteger.compareTo(bigInteger) >= 0);
            return bigIntegerCreateRandomBigInteger;
        }

        private static BigInteger implRandomFieldElementMult(SecureRandom secureRandom, BigInteger bigInteger) {
            while (true) {
                BigInteger bigIntegerCreateRandomBigInteger = BigIntegers.createRandomBigInteger(bigInteger.bitLength(), secureRandom);
                if (bigIntegerCreateRandomBigInteger.signum() > 0 && bigIntegerCreateRandomBigInteger.compareTo(bigInteger) < 0) {
                    return bigIntegerCreateRandomBigInteger;
                }
            }
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint decompressPoint(int r42, BigInteger bigInteger) {
            ECFieldElement eCFieldElementFromBigInteger = fromBigInteger(bigInteger);
            ECFieldElement eCFieldElementSqrt = eCFieldElementFromBigInteger.square().add(this.f11714a).multiply(eCFieldElementFromBigInteger).add(this.f11715b).sqrt();
            if (eCFieldElementSqrt == null) {
                throw new IllegalArgumentException("Invalid point compression");
            }
            if (eCFieldElementSqrt.testBitZero() != (r42 == 1)) {
                eCFieldElementSqrt = eCFieldElementSqrt.negate();
            }
            return createRawPoint(eCFieldElementFromBigInteger, eCFieldElementSqrt);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public boolean isValidFieldElement(BigInteger bigInteger) {
            return bigInteger != null && bigInteger.signum() >= 0 && bigInteger.compareTo(getField().getCharacteristic()) < 0;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECFieldElement randomFieldElement(SecureRandom secureRandom) {
            BigInteger characteristic = getField().getCharacteristic();
            return fromBigInteger(implRandomFieldElement(secureRandom, characteristic)).multiply(fromBigInteger(implRandomFieldElement(secureRandom, characteristic)));
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECFieldElement randomFieldElementMult(SecureRandom secureRandom) {
            BigInteger characteristic = getField().getCharacteristic();
            return fromBigInteger(implRandomFieldElementMult(secureRandom, characteristic)).multiply(fromBigInteger(implRandomFieldElementMult(secureRandom, characteristic)));
        }
    }

    public class Config {
        protected int coord;
        protected ECEndomorphism endomorphism;
        protected ECMultiplier multiplier;

        public Config(int r22, ECEndomorphism eCEndomorphism, ECMultiplier eCMultiplier) {
            this.coord = r22;
            this.endomorphism = eCEndomorphism;
            this.multiplier = eCMultiplier;
        }

        public ECCurve create() {
            if (!ECCurve.this.supportsCoordinateSystem(this.coord)) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            ECCurve eCCurveCloneCurve = ECCurve.this.cloneCurve();
            if (eCCurveCloneCurve == ECCurve.this) {
                throw new IllegalStateException("implementation returned current curve");
            }
            synchronized (eCCurveCloneCurve) {
                eCCurveCloneCurve.coord = this.coord;
                eCCurveCloneCurve.endomorphism = this.endomorphism;
                eCCurveCloneCurve.multiplier = this.multiplier;
            }
            return eCCurveCloneCurve;
        }

        public Config setCoordinateSystem(int r12) {
            this.coord = r12;
            return this;
        }

        public Config setEndomorphism(ECEndomorphism eCEndomorphism) {
            this.endomorphism = eCEndomorphism;
            return this;
        }

        public Config setMultiplier(ECMultiplier eCMultiplier) {
            this.multiplier = eCMultiplier;
            return this;
        }
    }

    public static class F2m extends AbstractF2m {
        private static final int F2M_DEFAULT_COORDS = 6;
        private ECPoint.F2m infinity;

        /* renamed from: k1, reason: collision with root package name */
        private int f11716k1;

        /* renamed from: k2, reason: collision with root package name */
        private int f11717k2;

        /* renamed from: k3, reason: collision with root package name */
        private int f11718k3;

        /* renamed from: m, reason: collision with root package name */
        private int f11719m;

        public F2m(int r10, int r11, int r12, int r13, BigInteger bigInteger, BigInteger bigInteger2) {
            this(r10, r11, r12, r13, bigInteger, bigInteger2, (BigInteger) null, (BigInteger) null);
        }

        public F2m(int r12, int r22, int r32, int r42, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(r12, r22, r32, r42);
            this.f11719m = r12;
            this.f11716k1 = r22;
            this.f11717k2 = r32;
            this.f11718k3 = r42;
            this.order = bigInteger3;
            this.cofactor = bigInteger4;
            this.infinity = new ECPoint.F2m(this, null, null);
            this.f11714a = fromBigInteger(bigInteger);
            this.f11715b = fromBigInteger(bigInteger2);
            this.coord = 6;
        }

        public F2m(int r12, int r22, int r32, int r42, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, BigInteger bigInteger, BigInteger bigInteger2) {
            super(r12, r22, r32, r42);
            this.f11719m = r12;
            this.f11716k1 = r22;
            this.f11717k2 = r32;
            this.f11718k3 = r42;
            this.order = bigInteger;
            this.cofactor = bigInteger2;
            this.infinity = new ECPoint.F2m(this, null, null);
            this.f11714a = eCFieldElement;
            this.f11715b = eCFieldElement2;
            this.coord = 6;
        }

        public F2m(int r10, int r11, BigInteger bigInteger, BigInteger bigInteger2) {
            this(r10, r11, 0, 0, bigInteger, bigInteger2, (BigInteger) null, (BigInteger) null);
        }

        public F2m(int r10, int r11, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            this(r10, r11, 0, 0, bigInteger, bigInteger2, bigInteger3, bigInteger4);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECCurve cloneCurve() {
            return new F2m(this.f11719m, this.f11716k1, this.f11717k2, this.f11718k3, this.f11714a, this.f11715b, this.order, this.cofactor);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int r92, final int r10) {
            final int r42 = (this.f11719m + 63) >>> 6;
            final int[] r6 = isTrinomial() ? new int[]{this.f11716k1} : new int[]{this.f11716k1, this.f11717k2, this.f11718k3};
            final long[] jArr = new long[r10 * r42 * 2];
            int r02 = 0;
            for (int r32 = 0; r32 < r10; r32++) {
                ECPoint eCPoint = eCPointArr[r92 + r32];
                ((ECFieldElement.F2m) eCPoint.getRawXCoord()).f11723x.copyTo(jArr, r02);
                int r03 = r02 + r42;
                ((ECFieldElement.F2m) eCPoint.getRawYCoord()).f11723x.copyTo(jArr, r03);
                r02 = r03 + r42;
            }
            return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.ECCurve.F2m.1
                private ECPoint createPoint(long[] jArr2, long[] jArr3) {
                    return F2m.this.createRawPoint(new ECFieldElement.F2m(F2m.this.f11719m, r6, new LongArray(jArr2)), new ECFieldElement.F2m(F2m.this.f11719m, r6, new LongArray(jArr3)));
                }

                @Override // org.bouncycastle.math.ec.ECLookupTable
                public int getSize() {
                    return r10;
                }

                @Override // org.bouncycastle.math.ec.ECLookupTable
                public ECPoint lookup(int r15) {
                    int r82;
                    long[] jArrCreate64 = Nat.create64(r42);
                    long[] jArrCreate642 = Nat.create64(r42);
                    int r43 = 0;
                    for (int r33 = 0; r33 < r10; r33++) {
                        long j10 = ((r33 ^ r15) - 1) >> 31;
                        int r72 = 0;
                        while (true) {
                            r82 = r42;
                            if (r72 < r82) {
                                long j11 = jArrCreate64[r72];
                                long[] jArr2 = jArr;
                                jArrCreate64[r72] = j11 ^ (jArr2[r43 + r72] & j10);
                                jArrCreate642[r72] = jArrCreate642[r72] ^ (jArr2[(r82 + r43) + r72] & j10);
                                r72++;
                            }
                        }
                        r43 += r82 * 2;
                    }
                    return createPoint(jArrCreate64, jArrCreate642);
                }

                @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
                public ECPoint lookupVar(int r82) {
                    long[] jArrCreate64 = Nat.create64(r42);
                    long[] jArrCreate642 = Nat.create64(r42);
                    int r83 = r82 * r42 * 2;
                    int r22 = 0;
                    while (true) {
                        int r33 = r42;
                        if (r22 >= r33) {
                            return createPoint(jArrCreate64, jArrCreate642);
                        }
                        long[] jArr2 = jArr;
                        jArrCreate64[r22] = jArr2[r83 + r22];
                        jArrCreate642[r22] = jArr2[r33 + r83 + r22];
                        r22++;
                    }
                }
            };
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECMultiplier createDefaultMultiplier() {
            return isKoblitz() ? new WTauNafMultiplier() : super.createDefaultMultiplier();
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            return new ECPoint.F2m(this, eCFieldElement, eCFieldElement2);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
            return new ECPoint.F2m(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECFieldElement fromBigInteger(BigInteger bigInteger) {
            if (bigInteger != null && bigInteger.signum() >= 0) {
                int r02 = bigInteger.bitLength();
                int r12 = this.f11719m;
                if (r02 <= r12) {
                    int r03 = this.f11717k2;
                    int r22 = this.f11718k3;
                    return new ECFieldElement.F2m(r12, (r03 | r22) == 0 ? new int[]{this.f11716k1} : new int[]{this.f11716k1, r03, r22}, new LongArray(bigInteger));
                }
            }
            throw new IllegalArgumentException("x value invalid in F2m field element");
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public int getFieldSize() {
            return this.f11719m;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint getInfinity() {
            return this.infinity;
        }

        public int getK1() {
            return this.f11716k1;
        }

        public int getK2() {
            return this.f11717k2;
        }

        public int getK3() {
            return this.f11718k3;
        }

        public int getM() {
            return this.f11719m;
        }

        public boolean isTrinomial() {
            return this.f11717k2 == 0 && this.f11718k3 == 0;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public boolean supportsCoordinateSystem(int r32) {
            return r32 == 0 || r32 == 1 || r32 == 6;
        }
    }

    public static class Fp extends AbstractFp {
        private static final int FP_DEFAULT_COORDS = 4;
        private static final Set<BigInteger> knownQs = Collections.synchronizedSet(new HashSet());
        private static final BigIntegers.Cache validatedQs = new BigIntegers.Cache();
        ECPoint.Fp infinity;

        /* renamed from: q, reason: collision with root package name */
        BigInteger f11720q;

        /* renamed from: r, reason: collision with root package name */
        BigInteger f11721r;

        public Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            this(bigInteger, bigInteger2, bigInteger3, null, null);
        }

        public Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
            this(bigInteger, bigInteger2, bigInteger3, bigInteger4, bigInteger5, false);
        }

        public Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, boolean z10) {
            super(bigInteger);
            if (z10) {
                this.f11720q = bigInteger;
                knownQs.add(bigInteger);
            } else {
                if (!knownQs.contains(bigInteger)) {
                    BigIntegers.Cache cache = validatedQs;
                    if (!cache.contains(bigInteger)) {
                        int r02 = Properties.asInteger("org.bouncycastle.ec.fp_max_size", 1042);
                        int r12 = Properties.asInteger("org.bouncycastle.ec.fp_certainty", 100);
                        int r22 = bigInteger.bitLength();
                        if (r02 < r22) {
                            throw new IllegalArgumentException("Fp q value out of range");
                        }
                        if (Primes.hasAnySmallFactors(bigInteger) || !Primes.isMRProbablePrime(bigInteger, CryptoServicesRegistrar.getSecureRandom(), ECCurve.getNumberOfIterations(r22, r12))) {
                            throw new IllegalArgumentException("Fp q value not prime");
                        }
                        cache.add(bigInteger);
                    }
                }
                this.f11720q = bigInteger;
            }
            this.f11721r = ECFieldElement.Fp.calculateResidue(bigInteger);
            this.infinity = new ECPoint.Fp(this, null, null);
            this.f11714a = fromBigInteger(bigInteger2);
            this.f11715b = fromBigInteger(bigInteger3);
            this.order = bigInteger4;
            this.cofactor = bigInteger5;
            this.coord = 4;
        }

        public Fp(BigInteger bigInteger, BigInteger bigInteger2, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(bigInteger);
            this.f11720q = bigInteger;
            this.f11721r = bigInteger2;
            this.infinity = new ECPoint.Fp(this, null, null);
            this.f11714a = eCFieldElement;
            this.f11715b = eCFieldElement2;
            this.order = bigInteger3;
            this.cofactor = bigInteger4;
            this.coord = 4;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECCurve cloneCurve() {
            return new Fp(this.f11720q, this.f11721r, this.f11714a, this.f11715b, this.order, this.cofactor);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            return new ECPoint.Fp(this, eCFieldElement, eCFieldElement2);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
            return new ECPoint.Fp(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECFieldElement fromBigInteger(BigInteger bigInteger) {
            if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(this.f11720q) >= 0) {
                throw new IllegalArgumentException("x value invalid for Fp field element");
            }
            return new ECFieldElement.Fp(this.f11720q, this.f11721r, bigInteger);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public int getFieldSize() {
            return this.f11720q.bitLength();
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint getInfinity() {
            return this.infinity;
        }

        public BigInteger getQ() {
            return this.f11720q;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint importPoint(ECPoint eCPoint) {
            int coordinateSystem;
            return (this == eCPoint.getCurve() || getCoordinateSystem() != 2 || eCPoint.isInfinity() || !((coordinateSystem = eCPoint.getCurve().getCoordinateSystem()) == 2 || coordinateSystem == 3 || coordinateSystem == 4)) ? super.importPoint(eCPoint) : new ECPoint.Fp(this, fromBigInteger(eCPoint.f11727x.toBigInteger()), fromBigInteger(eCPoint.f11728y.toBigInteger()), new ECFieldElement[]{fromBigInteger(eCPoint.zs[0].toBigInteger())});
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public boolean supportsCoordinateSystem(int r32) {
            return r32 == 0 || r32 == 1 || r32 == 2 || r32 == 4;
        }
    }

    public ECCurve(FiniteField finiteField) {
        this.field = finiteField;
    }

    public static int[] getAllCoordinateSystems() {
        return new int[]{0, 1, 2, 3, 4, 5, 6, 7};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getNumberOfIterations(int r42, int r52) {
        if (r42 >= 1536) {
            if (r52 <= 100) {
                return 3;
            }
            if (r52 <= 128) {
                return 4;
            }
            return 4 + (((r52 - 128) + 1) / 2);
        }
        if (r42 >= 1024) {
            if (r52 <= 100) {
                return 4;
            }
            if (r52 <= 112) {
                return 5;
            }
            return (((r52 - 112) + 1) / 2) + 5;
        }
        if (r42 < 512) {
            if (r52 <= 80) {
                return 40;
            }
            return 40 + (((r52 - 80) + 1) / 2);
        }
        if (r52 <= 80) {
            return 5;
        }
        if (r52 <= 100) {
            return 7;
        }
        return 7 + (((r52 - 100) + 1) / 2);
    }

    public void checkPoint(ECPoint eCPoint) {
        if (eCPoint == null || this != eCPoint.getCurve()) {
            throw new IllegalArgumentException("'point' must be non-null and on this curve");
        }
    }

    public void checkPoints(ECPoint[] eCPointArr) {
        checkPoints(eCPointArr, 0, eCPointArr.length);
    }

    public void checkPoints(ECPoint[] eCPointArr, int r42, int r52) {
        if (eCPointArr == null) {
            throw new IllegalArgumentException("'points' cannot be null");
        }
        if (r42 < 0 || r52 < 0 || r42 > eCPointArr.length - r52) {
            throw new IllegalArgumentException("invalid range specified for 'points'");
        }
        for (int r02 = 0; r02 < r52; r02++) {
            ECPoint eCPoint = eCPointArr[r42 + r02];
            if (eCPoint != null && this != eCPoint.getCurve()) {
                throw new IllegalArgumentException("'points' entries must be null or on this curve");
            }
        }
    }

    public abstract ECCurve cloneCurve();

    public synchronized Config configure() {
        return new Config(this.coord, this.endomorphism, this.multiplier);
    }

    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int r14, final int r15) {
        final int fieldSize = (getFieldSize() + 7) >>> 3;
        final byte[] bArr = new byte[r15 * fieldSize * 2];
        int r42 = 0;
        for (int r32 = 0; r32 < r15; r32++) {
            ECPoint eCPoint = eCPointArr[r14 + r32];
            byte[] byteArray = eCPoint.getRawXCoord().toBigInteger().toByteArray();
            byte[] byteArray2 = eCPoint.getRawYCoord().toBigInteger().toByteArray();
            int r82 = 1;
            int r72 = byteArray.length > fieldSize ? 1 : 0;
            int length = byteArray.length - r72;
            if (byteArray2.length <= fieldSize) {
                r82 = 0;
            }
            int length2 = byteArray2.length - r82;
            int r43 = r42 + fieldSize;
            System.arraycopy(byteArray, r72, bArr, r43 - length, length);
            r42 = r43 + fieldSize;
            System.arraycopy(byteArray2, r82, bArr, r42 - length2, length2);
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.ECCurve.1
            private ECPoint createPoint(byte[] bArr2, byte[] bArr3) {
                ECCurve eCCurve = ECCurve.this;
                return eCCurve.createRawPoint(eCCurve.fromBigInteger(new BigInteger(1, bArr2)), ECCurve.this.fromBigInteger(new BigInteger(1, bArr3)));
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return r15;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int r12) {
                int r73;
                int r02 = fieldSize;
                byte[] bArr2 = new byte[r02];
                byte[] bArr3 = new byte[r02];
                int r44 = 0;
                for (int r33 = 0; r33 < r15; r33++) {
                    int r52 = ((r33 ^ r12) - 1) >> 31;
                    int r6 = 0;
                    while (true) {
                        r73 = fieldSize;
                        if (r6 < r73) {
                            byte b10 = bArr2[r6];
                            byte[] bArr4 = bArr;
                            bArr2[r6] = (byte) (b10 ^ (bArr4[r44 + r6] & r52));
                            bArr3[r6] = (byte) ((bArr4[(r73 + r44) + r6] & r52) ^ bArr3[r6]);
                            r6++;
                        }
                    }
                    r44 += r73 * 2;
                }
                return createPoint(bArr2, bArr3);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int r73) {
                int r02 = fieldSize;
                byte[] bArr2 = new byte[r02];
                byte[] bArr3 = new byte[r02];
                int r74 = r73 * r02 * 2;
                int r03 = 0;
                while (true) {
                    int r33 = fieldSize;
                    if (r03 >= r33) {
                        return createPoint(bArr2, bArr3);
                    }
                    byte[] bArr4 = bArr;
                    bArr2[r03] = bArr4[r74 + r03];
                    bArr3[r03] = bArr4[r33 + r74 + r03];
                    r03++;
                }
            }
        };
    }

    public ECMultiplier createDefaultMultiplier() {
        ECEndomorphism eCEndomorphism = this.endomorphism;
        return eCEndomorphism instanceof GLVEndomorphism ? new GLVMultiplier(this, (GLVEndomorphism) eCEndomorphism) : new WNafL2RMultiplier();
    }

    public ECPoint createPoint(BigInteger bigInteger, BigInteger bigInteger2) {
        return createRawPoint(fromBigInteger(bigInteger), fromBigInteger(bigInteger2));
    }

    public abstract ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2);

    public abstract ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr);

    public ECPoint decodePoint(byte[] bArr) {
        ECPoint infinity;
        int fieldSize = (getFieldSize() + 7) / 8;
        byte b10 = bArr[0];
        if (b10 != 0) {
            if (b10 == 2 || b10 == 3) {
                if (bArr.length != fieldSize + 1) {
                    throw new IllegalArgumentException("Incorrect length for compressed encoding");
                }
                infinity = decompressPoint(b10 & 1, BigIntegers.fromUnsignedByteArray(bArr, 1, fieldSize));
                if (!infinity.implIsValid(true, true)) {
                    throw new IllegalArgumentException("Invalid point");
                }
            } else if (b10 != 4) {
                if (b10 != 6 && b10 != 7) {
                    throw new IllegalArgumentException("Invalid point encoding 0x" + Integer.toString(b10, 16));
                }
                if (bArr.length != (fieldSize * 2) + 1) {
                    throw new IllegalArgumentException("Incorrect length for hybrid encoding");
                }
                BigInteger bigIntegerFromUnsignedByteArray = BigIntegers.fromUnsignedByteArray(bArr, 1, fieldSize);
                BigInteger bigIntegerFromUnsignedByteArray2 = BigIntegers.fromUnsignedByteArray(bArr, fieldSize + 1, fieldSize);
                if (bigIntegerFromUnsignedByteArray2.testBit(0) != (b10 == 7)) {
                    throw new IllegalArgumentException("Inconsistent Y coordinate in hybrid encoding");
                }
                infinity = validatePoint(bigIntegerFromUnsignedByteArray, bigIntegerFromUnsignedByteArray2);
            } else {
                if (bArr.length != (fieldSize * 2) + 1) {
                    throw new IllegalArgumentException("Incorrect length for uncompressed encoding");
                }
                infinity = validatePoint(BigIntegers.fromUnsignedByteArray(bArr, 1, fieldSize), BigIntegers.fromUnsignedByteArray(bArr, fieldSize + 1, fieldSize));
            }
        } else {
            if (bArr.length != 1) {
                throw new IllegalArgumentException("Incorrect length for infinity encoding");
            }
            infinity = getInfinity();
        }
        if (b10 == 0 || !infinity.isInfinity()) {
            return infinity;
        }
        throw new IllegalArgumentException("Invalid infinity encoding");
    }

    public abstract ECPoint decompressPoint(int r12, BigInteger bigInteger);

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof ECCurve) && equals((ECCurve) obj));
    }

    public boolean equals(ECCurve eCCurve) {
        return this == eCCurve || (eCCurve != null && getField().equals(eCCurve.getField()) && getA().toBigInteger().equals(eCCurve.getA().toBigInteger()) && getB().toBigInteger().equals(eCCurve.getB().toBigInteger()));
    }

    public abstract ECFieldElement fromBigInteger(BigInteger bigInteger);

    public ECFieldElement getA() {
        return this.f11714a;
    }

    public ECFieldElement getB() {
        return this.f11715b;
    }

    public BigInteger getCofactor() {
        return this.cofactor;
    }

    public int getCoordinateSystem() {
        return this.coord;
    }

    public ECEndomorphism getEndomorphism() {
        return this.endomorphism;
    }

    public FiniteField getField() {
        return this.field;
    }

    public abstract int getFieldSize();

    public abstract ECPoint getInfinity();

    public ECMultiplier getMultiplier() {
        if (this.multiplier == null) {
            this.multiplier = createDefaultMultiplier();
        }
        return this.multiplier;
    }

    public BigInteger getOrder() {
        return this.order;
    }

    public PreCompInfo getPreCompInfo(ECPoint eCPoint, String str) {
        Hashtable hashtable;
        PreCompInfo preCompInfo;
        checkPoint(eCPoint);
        synchronized (eCPoint) {
            hashtable = eCPoint.preCompTable;
        }
        if (hashtable == null) {
            return null;
        }
        synchronized (hashtable) {
            preCompInfo = (PreCompInfo) hashtable.get(str);
        }
        return preCompInfo;
    }

    public int hashCode() {
        return (getField().hashCode() ^ Integers.rotateLeft(getA().toBigInteger().hashCode(), 8)) ^ Integers.rotateLeft(getB().toBigInteger().hashCode(), 16);
    }

    public ECPoint importPoint(ECPoint eCPoint) {
        if (this == eCPoint.getCurve()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return getInfinity();
        }
        ECPoint eCPointNormalize = eCPoint.normalize();
        return createPoint(eCPointNormalize.getXCoord().toBigInteger(), eCPointNormalize.getYCoord().toBigInteger());
    }

    public abstract boolean isValidFieldElement(BigInteger bigInteger);

    public void normalizeAll(ECPoint[] eCPointArr) {
        normalizeAll(eCPointArr, 0, eCPointArr.length, null);
    }

    public void normalizeAll(ECPoint[] eCPointArr, int r10, int r11, ECFieldElement eCFieldElement) {
        checkPoints(eCPointArr, r10, r11);
        int coordinateSystem = getCoordinateSystem();
        if (coordinateSystem == 0 || coordinateSystem == 5) {
            if (eCFieldElement != null) {
                throw new IllegalArgumentException("'iso' not valid for affine coordinates");
            }
            return;
        }
        ECFieldElement[] eCFieldElementArr = new ECFieldElement[r11];
        int[] r12 = new int[r11];
        int r42 = 0;
        for (int r32 = 0; r32 < r11; r32++) {
            int r52 = r10 + r32;
            ECPoint eCPoint = eCPointArr[r52];
            if (eCPoint != null && (eCFieldElement != null || !eCPoint.isNormalized())) {
                eCFieldElementArr[r42] = eCPoint.getZCoord(0);
                r12[r42] = r52;
                r42++;
            }
        }
        if (r42 == 0) {
            return;
        }
        ECAlgorithms.montgomeryTrick(eCFieldElementArr, 0, r42, eCFieldElement);
        for (int r22 = 0; r22 < r42; r22++) {
            int r102 = r12[r22];
            eCPointArr[r102] = eCPointArr[r102].normalize(eCFieldElementArr[r22]);
        }
    }

    public PreCompInfo precompute(ECPoint eCPoint, String str, PreCompCallback preCompCallback) {
        Hashtable hashtable;
        PreCompInfo preCompInfoPrecompute;
        checkPoint(eCPoint);
        synchronized (eCPoint) {
            hashtable = eCPoint.preCompTable;
            if (hashtable == null) {
                hashtable = new Hashtable(4);
                eCPoint.preCompTable = hashtable;
            }
        }
        synchronized (hashtable) {
            PreCompInfo preCompInfo = (PreCompInfo) hashtable.get(str);
            preCompInfoPrecompute = preCompCallback.precompute(preCompInfo);
            if (preCompInfoPrecompute != preCompInfo) {
                hashtable.put(str, preCompInfoPrecompute);
            }
        }
        return preCompInfoPrecompute;
    }

    public abstract ECFieldElement randomFieldElement(SecureRandom secureRandom);

    public abstract ECFieldElement randomFieldElementMult(SecureRandom secureRandom);

    public boolean supportsCoordinateSystem(int r12) {
        return r12 == 0;
    }

    public ECPoint validatePoint(BigInteger bigInteger, BigInteger bigInteger2) {
        ECPoint eCPointCreatePoint = createPoint(bigInteger, bigInteger2);
        if (eCPointCreatePoint.isValid()) {
            return eCPointCreatePoint;
        }
        throw new IllegalArgumentException("Invalid point coordinates");
    }
}
