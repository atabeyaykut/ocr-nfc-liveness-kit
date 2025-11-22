package org.bouncycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DSAExt;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECKeyParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.math.ec.ECAlgorithms;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.ec.FixedPointCombMultiplier;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes2.dex */
public class ECDSASigner implements ECConstants, DSAExt {
    private final DSAKCalculator kCalculator;
    private ECKeyParameters key;
    private SecureRandom random;

    public ECDSASigner() {
        this.kCalculator = new RandomDSAKCalculator();
    }

    public ECDSASigner(DSAKCalculator dSAKCalculator) {
        this.kCalculator = dSAKCalculator;
    }

    public BigInteger calculateE(BigInteger bigInteger, byte[] bArr) {
        int r42 = bigInteger.bitLength();
        int length = bArr.length * 8;
        BigInteger bigInteger2 = new BigInteger(1, bArr);
        return r42 < length ? bigInteger2.shiftRight(length - r42) : bigInteger2;
    }

    public ECMultiplier createBasePointMultiplier() {
        return new FixedPointCombMultiplier();
    }

    @Override // org.bouncycastle.crypto.DSA
    public BigInteger[] generateSignature(byte[] bArr) {
        ECDomainParameters parameters = this.key.getParameters();
        BigInteger n10 = parameters.getN();
        BigInteger bigIntegerCalculateE = calculateE(n10, bArr);
        BigInteger d10 = ((ECPrivateKeyParameters) this.key).getD();
        if (this.kCalculator.isDeterministic()) {
            this.kCalculator.init(n10, d10, bArr);
        } else {
            this.kCalculator.init(n10, this.random);
        }
        ECMultiplier eCMultiplierCreateBasePointMultiplier = createBasePointMultiplier();
        while (true) {
            BigInteger bigIntegerNextK = this.kCalculator.nextK();
            BigInteger bigIntegerMod = eCMultiplierCreateBasePointMultiplier.multiply(parameters.getG(), bigIntegerNextK).normalize().getAffineXCoord().toBigInteger().mod(n10);
            BigInteger bigInteger = ECConstants.ZERO;
            if (!bigIntegerMod.equals(bigInteger)) {
                BigInteger bigIntegerMod2 = BigIntegers.modOddInverse(n10, bigIntegerNextK).multiply(bigIntegerCalculateE.add(d10.multiply(bigIntegerMod))).mod(n10);
                if (!bigIntegerMod2.equals(bigInteger)) {
                    return new BigInteger[]{bigIntegerMod, bigIntegerMod2};
                }
            }
        }
    }

    public ECFieldElement getDenominator(int r32, ECPoint eCPoint) {
        if (r32 != 1) {
            if (r32 == 2 || r32 == 3 || r32 == 4) {
                return eCPoint.getZCoord(0).square();
            }
            if (r32 != 6 && r32 != 7) {
                return null;
            }
        }
        return eCPoint.getZCoord(0);
    }

    @Override // org.bouncycastle.crypto.DSAExt
    public BigInteger getOrder() {
        return this.key.getParameters().getN();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    @Override // org.bouncycastle.crypto.DSA
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void init(boolean r3, org.bouncycastle.crypto.CipherParameters r4) {
        /*
            r2 = this;
            if (r3 == 0) goto L18
            boolean r0 = r4 instanceof org.bouncycastle.crypto.params.ParametersWithRandom
            if (r0 == 0) goto L15
            org.bouncycastle.crypto.params.ParametersWithRandom r4 = (org.bouncycastle.crypto.params.ParametersWithRandom) r4
            org.bouncycastle.crypto.CipherParameters r0 = r4.getParameters()
            org.bouncycastle.crypto.params.ECPrivateKeyParameters r0 = (org.bouncycastle.crypto.params.ECPrivateKeyParameters) r0
            r2.key = r0
            java.security.SecureRandom r4 = r4.getRandom()
            goto L1d
        L15:
            org.bouncycastle.crypto.params.ECPrivateKeyParameters r4 = (org.bouncycastle.crypto.params.ECPrivateKeyParameters) r4
            goto L1a
        L18:
            org.bouncycastle.crypto.params.ECPublicKeyParameters r4 = (org.bouncycastle.crypto.params.ECPublicKeyParameters) r4
        L1a:
            r2.key = r4
            r4 = 0
        L1d:
            java.lang.String r0 = "ECDSA"
            org.bouncycastle.crypto.params.ECKeyParameters r1 = r2.key
            org.bouncycastle.crypto.CryptoServiceProperties r0 = org.bouncycastle.crypto.signers.Utils.getDefaultProperties(r0, r1, r3)
            org.bouncycastle.crypto.CryptoServicesRegistrar.checkConstraints(r0)
            if (r3 == 0) goto L34
            org.bouncycastle.crypto.signers.DSAKCalculator r3 = r2.kCalculator
            boolean r3 = r3.isDeterministic()
            if (r3 != 0) goto L34
            r3 = 1
            goto L35
        L34:
            r3 = 0
        L35:
            java.security.SecureRandom r3 = r2.initSecureRandom(r3, r4)
            r2.random = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.signers.ECDSASigner.init(boolean, org.bouncycastle.crypto.CipherParameters):void");
    }

    public SecureRandom initSecureRandom(boolean z10, SecureRandom secureRandom) {
        if (z10) {
            return CryptoServicesRegistrar.getSecureRandom(secureRandom);
        }
        return null;
    }

    @Override // org.bouncycastle.crypto.DSA
    public boolean verifySignature(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger cofactor;
        ECFieldElement denominator;
        ECDomainParameters parameters = this.key.getParameters();
        BigInteger n10 = parameters.getN();
        BigInteger bigIntegerCalculateE = calculateE(n10, bArr);
        BigInteger bigInteger3 = ECConstants.ONE;
        if (bigInteger.compareTo(bigInteger3) < 0 || bigInteger.compareTo(n10) >= 0 || bigInteger2.compareTo(bigInteger3) < 0 || bigInteger2.compareTo(n10) >= 0) {
            return false;
        }
        BigInteger bigIntegerModOddInverseVar = BigIntegers.modOddInverseVar(n10, bigInteger2);
        ECPoint eCPointSumOfTwoMultiplies = ECAlgorithms.sumOfTwoMultiplies(parameters.getG(), bigIntegerCalculateE.multiply(bigIntegerModOddInverseVar).mod(n10), ((ECPublicKeyParameters) this.key).getQ(), bigInteger.multiply(bigIntegerModOddInverseVar).mod(n10));
        if (eCPointSumOfTwoMultiplies.isInfinity()) {
            return false;
        }
        ECCurve curve = eCPointSumOfTwoMultiplies.getCurve();
        if (curve == null || (cofactor = curve.getCofactor()) == null || cofactor.compareTo(ECConstants.EIGHT) > 0 || (denominator = getDenominator(curve.getCoordinateSystem(), eCPointSumOfTwoMultiplies)) == null || denominator.isZero()) {
            return eCPointSumOfTwoMultiplies.normalize().getAffineXCoord().toBigInteger().mod(n10).equals(bigInteger);
        }
        ECFieldElement xCoord = eCPointSumOfTwoMultiplies.getXCoord();
        while (curve.isValidFieldElement(bigInteger)) {
            if (curve.fromBigInteger(bigInteger).multiply(denominator).equals(xCoord)) {
                return true;
            }
            bigInteger = bigInteger.add(n10);
        }
        return false;
    }
}
