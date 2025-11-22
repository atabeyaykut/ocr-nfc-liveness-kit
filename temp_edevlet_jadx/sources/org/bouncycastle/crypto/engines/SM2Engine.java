package org.bouncycastle.crypto.engines;

import android.support.v4.media.a;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.constraints.ConstraintUtils;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.digests.SM3Digest;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECKeyParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.ec.FixedPointCombMultiplier;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.Bytes;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SM2Engine {
    private int curveLength;
    private final Digest digest;
    private ECKeyParameters ecKey;
    private ECDomainParameters ecParams;
    private boolean forEncryption;
    private final Mode mode;
    private SecureRandom random;

    /* renamed from: org.bouncycastle.crypto.engines.SM2Engine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$SM2Engine$Mode;

        static {
            int[] r02 = new int[Mode.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$SM2Engine$Mode = r02;
            try {
                r02[Mode.C1C3C2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public enum Mode {
        C1C2C3,
        C1C3C2
    }

    public SM2Engine() {
        this(new SM3Digest());
    }

    public SM2Engine(Digest digest) {
        this(digest, Mode.C1C2C3);
    }

    public SM2Engine(Digest digest, Mode mode) {
        if (mode == null) {
            throw new IllegalArgumentException("mode cannot be NULL");
        }
        this.digest = digest;
        this.mode = mode;
    }

    public SM2Engine(Mode mode) {
        this(new SM3Digest(), mode);
    }

    private void addFieldElement(Digest digest, ECFieldElement eCFieldElement) {
        byte[] bArrAsUnsignedByteArray = BigIntegers.asUnsignedByteArray(this.curveLength, eCFieldElement.toBigInteger());
        digest.update(bArrAsUnsignedByteArray, 0, bArrAsUnsignedByteArray.length);
    }

    private byte[] decrypt(byte[] bArr, int r12, int r13) throws InvalidCipherTextException {
        int r32;
        int r02 = (this.curveLength * 2) + 1;
        byte[] bArr2 = new byte[r02];
        System.arraycopy(bArr, r12, bArr2, 0, r02);
        ECPoint eCPointDecodePoint = this.ecParams.getCurve().decodePoint(bArr2);
        if (eCPointDecodePoint.multiply(this.ecParams.getH()).isInfinity()) {
            throw new InvalidCipherTextException("[h]C1 at infinity");
        }
        ECPoint eCPointNormalize = eCPointDecodePoint.multiply(((ECPrivateKeyParameters) this.ecKey).getD()).normalize();
        int digestSize = this.digest.getDigestSize();
        int r132 = (r13 - r02) - digestSize;
        byte[] bArr3 = new byte[r132];
        Mode mode = this.mode;
        Mode mode2 = Mode.C1C3C2;
        if (mode == mode2) {
            System.arraycopy(bArr, r12 + r02 + digestSize, bArr3, 0, r132);
        } else {
            System.arraycopy(bArr, r12 + r02, bArr3, 0, r132);
        }
        kdf(this.digest, eCPointNormalize, bArr3);
        int digestSize2 = this.digest.getDigestSize();
        byte[] bArr4 = new byte[digestSize2];
        addFieldElement(this.digest, eCPointNormalize.getAffineXCoord());
        this.digest.update(bArr3, 0, r132);
        addFieldElement(this.digest, eCPointNormalize.getAffineYCoord());
        this.digest.doFinal(bArr4, 0);
        if (this.mode == mode2) {
            r32 = 0;
            for (int r133 = 0; r133 != digestSize2; r133++) {
                r32 |= bArr4[r133] ^ bArr[(r12 + r02) + r133];
            }
        } else {
            r32 = 0;
            for (int r72 = 0; r72 != digestSize2; r72++) {
                r32 |= bArr4[r72] ^ bArr[a.a(r12, r02, r132, r72)];
            }
        }
        Arrays.fill(bArr2, (byte) 0);
        Arrays.fill(bArr4, (byte) 0);
        if (r32 == 0) {
            return bArr3;
        }
        Arrays.fill(bArr3, (byte) 0);
        throw new InvalidCipherTextException("invalid cipher text");
    }

    private byte[] encrypt(byte[] bArr, int r92, int r10) throws InvalidCipherTextException {
        byte[] encoded;
        ECPoint eCPointNormalize;
        byte[] bArr2 = new byte[r10];
        System.arraycopy(bArr, r92, bArr2, 0, r10);
        ECMultiplier eCMultiplierCreateBasePointMultiplier = createBasePointMultiplier();
        do {
            BigInteger bigIntegerNextK = nextK();
            encoded = eCMultiplierCreateBasePointMultiplier.multiply(this.ecParams.getG(), bigIntegerNextK).normalize().getEncoded(false);
            eCPointNormalize = ((ECPublicKeyParameters) this.ecKey).getQ().multiply(bigIntegerNextK).normalize();
            kdf(this.digest, eCPointNormalize, bArr2);
        } while (notEncrypted(bArr2, bArr, r92));
        byte[] bArr3 = new byte[this.digest.getDigestSize()];
        addFieldElement(this.digest, eCPointNormalize.getAffineXCoord());
        this.digest.update(bArr, r92, r10);
        addFieldElement(this.digest, eCPointNormalize.getAffineYCoord());
        this.digest.doFinal(bArr3, 0);
        return AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SM2Engine$Mode[this.mode.ordinal()] != 1 ? Arrays.concatenate(encoded, bArr2, bArr3) : Arrays.concatenate(encoded, bArr3, bArr2);
    }

    private void kdf(Digest digest, ECPoint eCPoint, byte[] bArr) {
        Memoable memoable;
        Memoable memoableCopy;
        int digestSize = digest.getDigestSize();
        byte[] bArr2 = new byte[Math.max(4, digestSize)];
        if (digest instanceof Memoable) {
            addFieldElement(digest, eCPoint.getAffineXCoord());
            addFieldElement(digest, eCPoint.getAffineYCoord());
            memoable = (Memoable) digest;
            memoableCopy = memoable.copy();
        } else {
            memoable = null;
            memoableCopy = null;
        }
        int r6 = 0;
        int r72 = 0;
        while (r6 < bArr.length) {
            if (memoable != null) {
                memoable.reset(memoableCopy);
            } else {
                addFieldElement(digest, eCPoint.getAffineXCoord());
                addFieldElement(digest, eCPoint.getAffineYCoord());
            }
            r72++;
            Pack.intToBigEndian(r72, bArr2, 0);
            digest.update(bArr2, 0, 4);
            digest.doFinal(bArr2, 0);
            int r82 = Math.min(digestSize, bArr.length - r6);
            Bytes.xorTo(r82, bArr2, 0, bArr, r6);
            r6 += r82;
        }
    }

    private BigInteger nextK() {
        int r02 = this.ecParams.getN().bitLength();
        while (true) {
            BigInteger bigIntegerCreateRandomBigInteger = BigIntegers.createRandomBigInteger(r02, this.random);
            if (!bigIntegerCreateRandomBigInteger.equals(BigIntegers.ZERO) && bigIntegerCreateRandomBigInteger.compareTo(this.ecParams.getN()) < 0) {
                return bigIntegerCreateRandomBigInteger;
            }
        }
    }

    private boolean notEncrypted(byte[] bArr, byte[] bArr2, int r72) {
        for (int r12 = 0; r12 != bArr.length; r12++) {
            if (bArr[r12] != bArr2[r72 + r12]) {
                return false;
            }
        }
        return true;
    }

    public ECMultiplier createBasePointMultiplier() {
        return new FixedPointCombMultiplier();
    }

    public int getOutputSize(int r42) {
        return this.digest.getDigestSize() + androidx.camera.core.impl.a.d(this.curveLength, 2, 1, r42);
    }

    public void init(boolean z10, CipherParameters cipherParameters) {
        this.forEncryption = z10;
        if (z10) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            ECKeyParameters eCKeyParameters = (ECKeyParameters) parametersWithRandom.getParameters();
            this.ecKey = eCKeyParameters;
            this.ecParams = eCKeyParameters.getParameters();
            if (((ECPublicKeyParameters) this.ecKey).getQ().multiply(this.ecParams.getH()).isInfinity()) {
                throw new IllegalArgumentException("invalid key: [h]Q at infinity");
            }
            this.random = parametersWithRandom.getRandom();
        } else {
            ECKeyParameters eCKeyParameters2 = (ECKeyParameters) cipherParameters;
            this.ecKey = eCKeyParameters2;
            this.ecParams = eCKeyParameters2.getParameters();
        }
        this.curveLength = (this.ecParams.getCurve().getFieldSize() + 7) / 8;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties("SM2", ConstraintUtils.bitsOfSecurityFor(this.ecParams.getCurve()), this.ecKey, Utils.getPurpose(z10)));
    }

    public byte[] processBlock(byte[] bArr, int r42, int r52) throws InvalidCipherTextException {
        if (r42 + r52 > bArr.length || r52 == 0) {
            throw new DataLengthException("input buffer too short");
        }
        return this.forEncryption ? encrypt(bArr, r42, r52) : decrypt(bArr, r42, r52);
    }
}
