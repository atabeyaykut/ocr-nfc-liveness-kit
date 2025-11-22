package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.util.Integers;

/* loaded from: classes2.dex */
public class DHPublicKeyParameters extends DHKeyParameters {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    /* renamed from: y, reason: collision with root package name */
    private BigInteger f11611y;

    public DHPublicKeyParameters(BigInteger bigInteger, DHParameters dHParameters) {
        super(false, dHParameters);
        this.f11611y = validate(bigInteger, dHParameters);
    }

    private static int legendre(BigInteger bigInteger, BigInteger bigInteger2) {
        int r02 = bigInteger2.bitLength();
        int[] r72 = Nat.fromBigInteger(r02, bigInteger);
        int[] r82 = Nat.fromBigInteger(r02, bigInteger2);
        int length = r82.length;
        int r22 = 0;
        while (true) {
            int r32 = r72[0];
            if (r32 == 0) {
                Nat.shiftDownWord(length, r72, 0);
            } else {
                int r33 = Integers.numberOfTrailingZeros(r32);
                if (r33 > 0) {
                    Nat.shiftDownBits(length, r72, r33, 0);
                    int r42 = r82[0];
                    r22 ^= (r33 << 1) & (r42 ^ (r42 >>> 1));
                }
                int r34 = Nat.compare(length, r72, r82);
                if (r34 == 0) {
                    break;
                }
                if (r34 < 0) {
                    r22 ^= r72[0] & r82[0];
                    int[] r6 = r82;
                    r82 = r72;
                    r72 = r6;
                }
                while (true) {
                    int r35 = length - 1;
                    if (r72[r35] != 0) {
                        break;
                    }
                    length = r35;
                }
                Nat.sub(length, r72, r82, r72);
            }
        }
        if (Nat.isOne(length, r82)) {
            return 1 - (r22 & 2);
        }
        return 0;
    }

    private BigInteger validate(BigInteger bigInteger, DHParameters dHParameters) {
        if (bigInteger == null) {
            throw new NullPointerException("y value cannot be null");
        }
        BigInteger p10 = dHParameters.getP();
        BigInteger bigInteger2 = TWO;
        if (bigInteger.compareTo(bigInteger2) < 0 || bigInteger.compareTo(p10.subtract(bigInteger2)) > 0) {
            throw new IllegalArgumentException("invalid DH public key");
        }
        BigInteger q10 = dHParameters.getQ();
        if (q10 == null) {
            return bigInteger;
        }
        if (p10.testBit(0) && p10.bitLength() - 1 == q10.bitLength() && p10.shiftRight(1).equals(q10)) {
            if (1 == legendre(bigInteger, p10)) {
                return bigInteger;
            }
        } else if (ONE.equals(bigInteger.modPow(q10, p10))) {
            return bigInteger;
        }
        throw new IllegalArgumentException("Y value does not appear to be in correct group");
    }

    @Override // org.bouncycastle.crypto.params.DHKeyParameters
    public boolean equals(Object obj) {
        return (obj instanceof DHPublicKeyParameters) && ((DHPublicKeyParameters) obj).getY().equals(this.f11611y) && super.equals(obj);
    }

    public BigInteger getY() {
        return this.f11611y;
    }

    @Override // org.bouncycastle.crypto.params.DHKeyParameters
    public int hashCode() {
        return this.f11611y.hashCode() ^ super.hashCode();
    }
}
