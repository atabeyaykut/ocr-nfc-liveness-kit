package org.bouncycastle.jcajce.provider.asymmetric.ec;

import androidx.browser.browseractions.b;
import androidx.constraintlayout.core.a;
import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import org.bouncycastle.asn1.x9.X9IntegerConverter;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.EphemeralKeyPair;
import org.bouncycastle.crypto.KeyEncoder;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.agreement.ECDHCBasicAgreement;
import org.bouncycastle.crypto.engines.IESEngine;
import org.bouncycastle.crypto.generators.ECKeyPairGenerator;
import org.bouncycastle.crypto.generators.EphemeralKeyPairGenerator;
import org.bouncycastle.crypto.generators.KDF2BytesGenerator;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECKeyGenerationParameters;
import org.bouncycastle.crypto.params.ECKeyParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.KDFParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.util.DigestFactory;
import org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi;
import org.bouncycastle.jcajce.spec.IESKEMParameterSpec;
import org.bouncycastle.jcajce.util.BCJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.interfaces.ECKey;
import org.bouncycastle.jce.spec.IESParameterSpec;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class IESKEMCipher extends BaseCipherSpi {
    private static final X9IntegerConverter converter = new X9IntegerConverter();
    private final ECDHCBasicAgreement agreement;
    private IESEngine engine;
    private final Mac hMac;
    private int ivLength;
    private final KDF2BytesGenerator kdf;
    private AsymmetricKeyParameter key;
    private final int macKeyLength;
    private final int macLength;
    private SecureRandom random;
    private final JcaJceHelper helper = new BCJcaJceHelper();
    private int state = -1;
    private ByteArrayOutputStream buffer = new ByteArrayOutputStream();
    private AlgorithmParameters engineParam = null;
    private IESKEMParameterSpec engineSpec = null;
    private boolean dhaesMode = false;
    private AsymmetricKeyParameter otherKeyParameter = null;

    public static class KEM extends IESKEMCipher {
        public KEM(Digest digest, Digest digest2, int r92, int r10) {
            super(new ECDHCBasicAgreement(), new KDF2BytesGenerator(digest), new HMac(digest2), r92, r10);
        }
    }

    public static class KEMwithSHA256 extends KEM {
        public KEMwithSHA256() {
            super(DigestFactory.createSHA256(), DigestFactory.createSHA256(), 32, 16);
        }
    }

    public IESKEMCipher(ECDHCBasicAgreement eCDHCBasicAgreement, KDF2BytesGenerator kDF2BytesGenerator, Mac mac, int r6, int r72) {
        this.agreement = eCDHCBasicAgreement;
        this.kdf = kDF2BytesGenerator;
        this.hMac = mac;
        this.macKeyLength = r6;
        this.macLength = r72;
    }

    @Override // javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int r22, int r32, byte[] bArr2, int r52) throws IllegalStateException, DataLengthException, BadPaddingException, IllegalBlockSizeException, IllegalArgumentException, ShortBufferException {
        byte[] bArrEngineDoFinal = engineDoFinal(bArr, r22, r32);
        System.arraycopy(bArrEngineDoFinal, 0, bArr2, r52, bArrEngineDoFinal.length);
        return bArrEngineDoFinal.length;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int r11, int r12) throws IllegalStateException, DataLengthException, BadPaddingException, IllegalBlockSizeException, IllegalArgumentException {
        if (r12 != 0) {
            this.buffer.write(bArr, r11, r12);
        }
        this.buffer.toByteArray();
        this.buffer.reset();
        ECDomainParameters parameters = ((ECKeyParameters) this.key).getParameters();
        int r13 = this.state;
        if (r13 == 1 || r13 == 3) {
            ECKeyPairGenerator eCKeyPairGenerator = new ECKeyPairGenerator();
            eCKeyPairGenerator.init(new ECKeyGenerationParameters(parameters, this.random));
            final boolean zHasUsePointCompression = this.engineSpec.hasUsePointCompression();
            EphemeralKeyPair ephemeralKeyPairGenerate = new EphemeralKeyPairGenerator(eCKeyPairGenerator, new KeyEncoder() { // from class: org.bouncycastle.jcajce.provider.asymmetric.ec.IESKEMCipher.1
                @Override // org.bouncycastle.crypto.KeyEncoder
                public byte[] getEncoded(AsymmetricKeyParameter asymmetricKeyParameter) {
                    return ((ECPublicKeyParameters) asymmetricKeyParameter).getQ().getEncoded(zHasUsePointCompression);
                }
            }).generate();
            this.agreement.init(ephemeralKeyPairGenerate.getKeyPair().getPrivate());
            X9IntegerConverter x9IntegerConverter = converter;
            byte[] bArrIntegerToBytes = x9IntegerConverter.integerToBytes(this.agreement.calculateAgreement(this.key), x9IntegerConverter.getByteLength(parameters.getCurve()));
            int r22 = this.macKeyLength + r12;
            byte[] bArr2 = new byte[r22];
            this.kdf.init(new KDFParameters(bArrIntegerToBytes, this.engineSpec.getRecipientInfo()));
            this.kdf.generateBytes(bArr2, 0, r22);
            byte[] bArr3 = new byte[this.macLength + r12];
            for (int r52 = 0; r52 != r12; r52++) {
                bArr3[r52] = (byte) (bArr[r11 + r52] ^ bArr2[r52]);
            }
            KeyParameter keyParameter = new KeyParameter(bArr2, r12, r22 - r12);
            this.hMac.init(keyParameter);
            this.hMac.update(bArr3, 0, r12);
            byte[] bArr4 = new byte[this.hMac.getMacSize()];
            this.hMac.doFinal(bArr4, 0);
            Arrays.clear(keyParameter.getKey());
            Arrays.clear(bArr2);
            System.arraycopy(bArr4, 0, bArr3, r12, this.macLength);
            return Arrays.concatenate(ephemeralKeyPairGenerate.getEncodedPublicKey(), bArr3);
        }
        if (r13 != 2 && r13 != 4) {
            throw new IllegalStateException("cipher not initialised");
        }
        ECPrivateKeyParameters eCPrivateKeyParameters = (ECPrivateKeyParameters) this.key;
        ECCurve curve = eCPrivateKeyParameters.getParameters().getCurve();
        int fieldSize = (curve.getFieldSize() + 7) / 8;
        if (bArr[r11] == 4) {
            fieldSize *= 2;
        }
        int r72 = fieldSize + 1;
        int r23 = r12 - (this.macLength + r72);
        int r73 = r72 + r11;
        ECPoint eCPointDecodePoint = curve.decodePoint(Arrays.copyOfRange(bArr, r11, r73));
        this.agreement.init(this.key);
        X9IntegerConverter x9IntegerConverter2 = converter;
        byte[] bArrIntegerToBytes2 = x9IntegerConverter2.integerToBytes(this.agreement.calculateAgreement(new ECPublicKeyParameters(eCPointDecodePoint, eCPrivateKeyParameters.getParameters())), x9IntegerConverter2.getByteLength(parameters.getCurve()));
        int r14 = this.macKeyLength + r23;
        byte[] bArr5 = new byte[r14];
        this.kdf.init(new KDFParameters(bArrIntegerToBytes2, this.engineSpec.getRecipientInfo()));
        this.kdf.generateBytes(bArr5, 0, r14);
        byte[] bArr6 = new byte[r23];
        for (int r53 = 0; r53 != r23; r53++) {
            bArr6[r53] = (byte) (bArr[r73 + r53] ^ bArr5[r53]);
        }
        KeyParameter keyParameter2 = new KeyParameter(bArr5, r23, r14 - r23);
        this.hMac.init(keyParameter2);
        this.hMac.update(bArr, r73, r23);
        byte[] bArr7 = new byte[this.hMac.getMacSize()];
        this.hMac.doFinal(bArr7, 0);
        Arrays.clear(keyParameter2.getKey());
        Arrays.clear(bArr5);
        int r24 = this.macLength;
        if (Arrays.constantTimeAreEqual(r24, bArr7, 0, bArr, (r12 - r24) + r11)) {
            return bArr6;
        }
        throw new BadPaddingException("mac field");
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi, javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        return 0;
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi, javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        return null;
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi, javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        if (key instanceof ECKey) {
            return ((ECKey) key).getParameters().getCurve().getFieldSize();
        }
        throw new IllegalArgumentException("not an EC key");
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi, javax.crypto.CipherSpi
    public int engineGetOutputSize(int r92) {
        BufferedBlockCipher cipher;
        if (this.key == null) {
            throw new IllegalStateException("cipher not initialised");
        }
        int macSize = this.engine.getMac().getMacSize();
        int fieldSize = this.otherKeyParameter == null ? ((((ECKeyParameters) this.key).getParameters().getCurve().getFieldSize() + 7) / 8) * 2 : 0;
        int size = this.buffer.size() + r92;
        if (this.engine.getCipher() != null) {
            int r93 = this.state;
            if (r93 == 1 || r93 == 3) {
                cipher = this.engine.getCipher();
            } else {
                if (r93 != 2 && r93 != 4) {
                    throw new IllegalStateException("cipher not initialised");
                }
                cipher = this.engine.getCipher();
                size = (size - macSize) - fieldSize;
            }
            size = cipher.getOutputSize(size);
        }
        int r94 = this.state;
        if (r94 == 1 || r94 == 3) {
            return macSize + fieldSize + size;
        }
        if (r94 == 2 || r94 == 4) {
            return size;
        }
        throw new IllegalStateException("cipher not initialised");
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi, javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() throws InvalidParameterSpecException {
        if (this.engineParam == null && this.engineSpec != null) {
            try {
                AlgorithmParameters algorithmParametersCreateAlgorithmParameters = this.helper.createAlgorithmParameters("IES");
                this.engineParam = algorithmParametersCreateAlgorithmParameters;
                algorithmParametersCreateAlgorithmParameters.init(this.engineSpec);
            } catch (Exception e10) {
                throw new RuntimeException(e10.toString());
            }
        }
        return this.engineParam;
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int r22, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidParameterSpecException, InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec;
        if (algorithmParameters != null) {
            try {
                parameterSpec = algorithmParameters.getParameterSpec(IESParameterSpec.class);
            } catch (Exception e10) {
                throw new InvalidAlgorithmParameterException(a.b(e10, new StringBuilder("cannot recognise parameters: ")));
            }
        } else {
            parameterSpec = null;
        }
        this.engineParam = algorithmParameters;
        engineInit(r22, key, parameterSpec, secureRandom);
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int r22, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(r22, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e10) {
            throw new IllegalArgumentException("cannot handle supplied parameter spec: " + e10.getMessage());
        }
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int r22, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AsymmetricKeyParameter asymmetricKeyParameterGeneratePublicKeyParameter;
        this.otherKeyParameter = null;
        this.engineSpec = (IESKEMParameterSpec) algorithmParameterSpec;
        if (r22 == 1 || r22 == 3) {
            if (!(key instanceof PublicKey)) {
                throw new InvalidKeyException("must be passed recipient's public EC key for encryption");
            }
            asymmetricKeyParameterGeneratePublicKeyParameter = ECUtils.generatePublicKeyParameter((PublicKey) key);
        } else {
            if (r22 != 2 && r22 != 4) {
                throw new InvalidKeyException("must be passed EC key");
            }
            if (!(key instanceof PrivateKey)) {
                throw new InvalidKeyException("must be passed recipient's private EC key for decryption");
            }
            asymmetricKeyParameterGeneratePublicKeyParameter = ECUtils.generatePrivateKeyParameter((PrivateKey) key);
        }
        this.key = asymmetricKeyParameterGeneratePublicKeyParameter;
        this.random = secureRandom;
        this.state = r22;
        this.buffer.reset();
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi, javax.crypto.CipherSpi
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        throw new NoSuchAlgorithmException(b.e("can't support mode ", str));
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi, javax.crypto.CipherSpi
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        throw new NoSuchPaddingException("padding not available with IESCipher");
    }

    @Override // javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int r22, int r32, byte[] bArr2, int r52) {
        this.buffer.write(bArr, r22, r32);
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int r32, int r42) {
        this.buffer.write(bArr, r32, r42);
        return null;
    }
}
