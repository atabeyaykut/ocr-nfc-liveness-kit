package org.bouncycastle.jcajce.provider.asymmetric.edec;

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
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.KeyEncoder;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.agreement.XDHBasicAgreement;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.engines.DESedeEngine;
import org.bouncycastle.crypto.engines.IESEngine;
import org.bouncycastle.crypto.generators.EphemeralKeyPairGenerator;
import org.bouncycastle.crypto.generators.KDF2BytesGenerator;
import org.bouncycastle.crypto.generators.X25519KeyPairGenerator;
import org.bouncycastle.crypto.generators.X448KeyPairGenerator;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ECKeyParameters;
import org.bouncycastle.crypto.params.IESWithCipherParameters;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.X25519PrivateKeyParameters;
import org.bouncycastle.crypto.params.X25519PublicKeyParameters;
import org.bouncycastle.crypto.params.X448PublicKeyParameters;
import org.bouncycastle.crypto.parsers.XIESPublicKeyParser;
import org.bouncycastle.crypto.util.DigestFactory;
import org.bouncycastle.jcajce.interfaces.XDHKey;
import org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi;
import org.bouncycastle.jcajce.provider.asymmetric.util.IESUtil;
import org.bouncycastle.jcajce.provider.util.BadBlockException;
import org.bouncycastle.jcajce.spec.XDHParameterSpec;
import org.bouncycastle.jcajce.util.BCJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.spec.IESParameterSpec;
import org.bouncycastle.util.Strings;

/* loaded from: classes2.dex */
public class IESCipher extends BaseCipherSpi {
    private ByteArrayOutputStream buffer;
    private boolean dhaesMode;
    private IESEngine engine;
    private AlgorithmParameters engineParam;
    private IESParameterSpec engineSpec;
    private final JcaJceHelper helper;
    private int ivLength;
    private AsymmetricKeyParameter key;
    private AsymmetricKeyParameter otherKeyParameter;
    private SecureRandom random;
    private int state;

    public static class XIES extends IESCipher {
        public XIES() {
            this(DigestFactory.createSHA1(), DigestFactory.createSHA1());
        }

        public XIES(Digest digest, Digest digest2) {
            super(new IESEngine(new XDHBasicAgreement(), new KDF2BytesGenerator(digest), new HMac(digest2)));
        }
    }

    public static class XIESwithAESCBC extends XIESwithCipher {
        public XIESwithAESCBC() {
            super(CBCBlockCipher.newInstance(AESEngine.newInstance()), 16);
        }
    }

    public static class XIESwithCipher extends IESCipher {
        public XIESwithCipher(BlockCipher blockCipher, int r42) {
            this(blockCipher, r42, DigestFactory.createSHA1(), DigestFactory.createSHA1());
        }

        public XIESwithCipher(BlockCipher blockCipher, int r52, Digest digest, Digest digest2) {
            super(new IESEngine(new XDHBasicAgreement(), new KDF2BytesGenerator(digest), new HMac(digest2), new PaddedBufferedBlockCipher(blockCipher)), r52);
        }
    }

    public static class XIESwithDESedeCBC extends XIESwithCipher {
        public XIESwithDESedeCBC() {
            super(CBCBlockCipher.newInstance(new DESedeEngine()), 8);
        }
    }

    public static class XIESwithSHA256 extends XIES {
        public XIESwithSHA256() {
            super(DigestFactory.createSHA256(), DigestFactory.createSHA256());
        }
    }

    public static class XIESwithSHA256andAESCBC extends XIESwithCipher {
        public XIESwithSHA256andAESCBC() {
            super(CBCBlockCipher.newInstance(AESEngine.newInstance()), 16, DigestFactory.createSHA256(), DigestFactory.createSHA256());
        }
    }

    public static class XIESwithSHA256andDESedeCBC extends XIESwithCipher {
        public XIESwithSHA256andDESedeCBC() {
            super(CBCBlockCipher.newInstance(new DESedeEngine()), 8, DigestFactory.createSHA256(), DigestFactory.createSHA256());
        }
    }

    public static class XIESwithSHA384 extends XIES {
        public XIESwithSHA384() {
            super(DigestFactory.createSHA384(), DigestFactory.createSHA384());
        }
    }

    public static class XIESwithSHA384andAESCBC extends XIESwithCipher {
        public XIESwithSHA384andAESCBC() {
            super(CBCBlockCipher.newInstance(AESEngine.newInstance()), 16, DigestFactory.createSHA384(), DigestFactory.createSHA384());
        }
    }

    public static class XIESwithSHA384andDESedeCBC extends XIESwithCipher {
        public XIESwithSHA384andDESedeCBC() {
            super(CBCBlockCipher.newInstance(new DESedeEngine()), 8, DigestFactory.createSHA384(), DigestFactory.createSHA384());
        }
    }

    public static class XIESwithSHA512 extends XIES {
        public XIESwithSHA512() {
            super(DigestFactory.createSHA512(), DigestFactory.createSHA512());
        }
    }

    public static class XIESwithSHA512andAESCBC extends XIESwithCipher {
        public XIESwithSHA512andAESCBC() {
            super(CBCBlockCipher.newInstance(AESEngine.newInstance()), 16, DigestFactory.createSHA512(), DigestFactory.createSHA512());
        }
    }

    public static class XIESwithSHA512andDESedeCBC extends XIESwithCipher {
        public XIESwithSHA512andDESedeCBC() {
            super(CBCBlockCipher.newInstance(new DESedeEngine()), 8, DigestFactory.createSHA512(), DigestFactory.createSHA512());
        }
    }

    public IESCipher(IESEngine iESEngine) {
        this.helper = new BCJcaJceHelper();
        this.state = -1;
        this.buffer = new ByteArrayOutputStream();
        this.engineParam = null;
        this.engineSpec = null;
        this.dhaesMode = false;
        this.otherKeyParameter = null;
        this.engine = iESEngine;
        this.ivLength = 0;
    }

    public IESCipher(IESEngine iESEngine, int r42) {
        this.helper = new BCJcaJceHelper();
        this.state = -1;
        this.buffer = new ByteArrayOutputStream();
        this.engineParam = null;
        this.engineSpec = null;
        this.dhaesMode = false;
        this.otherKeyParameter = null;
        this.engine = iESEngine;
        this.ivLength = r42;
    }

    @Override // javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int r22, int r32, byte[] bArr2, int r52) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        byte[] bArrEngineDoFinal = engineDoFinal(bArr, r22, r32);
        System.arraycopy(bArrEngineDoFinal, 0, bArr2, r52, bArrEngineDoFinal.length);
        return bArrEngineDoFinal.length;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int r92, int r10) throws BadPaddingException, IllegalBlockSizeException {
        if (r10 != 0) {
            this.buffer.write(bArr, r92, r10);
        }
        byte[] byteArray = this.buffer.toByteArray();
        this.buffer.reset();
        CipherParameters iESWithCipherParameters = new IESWithCipherParameters(this.engineSpec.getDerivationV(), this.engineSpec.getEncodingV(), this.engineSpec.getMacKeySize(), this.engineSpec.getCipherKeySize());
        byte[] nonce = this.engineSpec.getNonce();
        if (nonce != null) {
            iESWithCipherParameters = new ParametersWithIV(iESWithCipherParameters, nonce);
        }
        AsymmetricKeyParameter asymmetricKeyParameter = this.otherKeyParameter;
        if (asymmetricKeyParameter != null) {
            try {
                int r42 = this.state;
                if (r42 == 1 || r42 == 3) {
                    this.engine.init(true, asymmetricKeyParameter, this.key, iESWithCipherParameters);
                } else {
                    this.engine.init(false, this.key, asymmetricKeyParameter, iESWithCipherParameters);
                }
                return this.engine.processBlock(byteArray, 0, byteArray.length);
            } catch (Exception e10) {
                throw new BadBlockException("unable to process block", e10);
            }
        }
        AsymmetricKeyParameter asymmetricKeyParameter2 = this.key;
        final boolean z10 = (asymmetricKeyParameter2 instanceof X25519PublicKeyParameters) || (asymmetricKeyParameter2 instanceof X25519PrivateKeyParameters);
        int r52 = z10 ? 256 : 448;
        int r6 = this.state;
        if (r6 == 1 || r6 == 3) {
            AsymmetricCipherKeyPairGenerator x25519KeyPairGenerator = z10 ? new X25519KeyPairGenerator() : new X448KeyPairGenerator();
            x25519KeyPairGenerator.init(new KeyGenerationParameters(this.random, r52));
            try {
                this.engine.init(this.key, iESWithCipherParameters, new EphemeralKeyPairGenerator(x25519KeyPairGenerator, new KeyEncoder() { // from class: org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher.1
                    @Override // org.bouncycastle.crypto.KeyEncoder
                    public byte[] getEncoded(AsymmetricKeyParameter asymmetricKeyParameter3) {
                        return z10 ? ((X25519PublicKeyParameters) asymmetricKeyParameter3).getEncoded() : ((X448PublicKeyParameters) asymmetricKeyParameter3).getEncoded();
                    }
                }));
                return this.engine.processBlock(byteArray, 0, byteArray.length);
            } catch (Exception e11) {
                throw new BadBlockException("unable to process block", e11);
            }
        }
        if (r6 != 2 && r6 != 4) {
            throw new IllegalStateException("cipher not initialised");
        }
        try {
            this.engine.init(asymmetricKeyParameter2, iESWithCipherParameters, new XIESPublicKeyParser(z10));
            return this.engine.processBlock(byteArray, 0, byteArray.length);
        } catch (InvalidCipherTextException e12) {
            throw new BadBlockException("unable to process block", e12);
        }
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi, javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        BufferedBlockCipher cipher = this.engine.getCipher();
        if (cipher == null) {
            return 0;
        }
        return cipher.getBlockSize();
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi, javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        IESParameterSpec iESParameterSpec = this.engineSpec;
        if (iESParameterSpec != null) {
            return iESParameterSpec.getNonce();
        }
        return null;
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi, javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        if (!(key instanceof XDHKey)) {
            throw new IllegalArgumentException("not an XDH key");
        }
        String algorithm = ((XDHKey) key).getAlgorithm();
        if (XDHParameterSpec.X25519.equalsIgnoreCase(algorithm)) {
            return 256;
        }
        if (XDHParameterSpec.X448.equalsIgnoreCase(algorithm)) {
            return 448;
        }
        throw new IllegalArgumentException(b.e("unknown XDH key algorithm ", algorithm));
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

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi, javax.crypto.CipherSpi
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        boolean z10;
        String upperCase = Strings.toUpperCase(str);
        if (upperCase.equals("NONE")) {
            z10 = false;
        } else {
            if (!upperCase.equals("DHAES")) {
                throw new IllegalArgumentException(b.e("can't support mode ", str));
            }
            z10 = true;
        }
        this.dhaesMode = z10;
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi, javax.crypto.CipherSpi
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        String upperCase = Strings.toUpperCase(str);
        if (!upperCase.equals("NOPADDING") && !upperCase.equals("PKCS5PADDING") && !upperCase.equals("PKCS7PADDING")) {
            throw new NoSuchPaddingException("padding not available with IESCipher");
        }
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

    @Override // javax.crypto.CipherSpi
    public void engineInit(int r32, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        IESParameterSpec iESParameterSpecGuessParameterSpec;
        AsymmetricKeyParameter asymmetricKeyParameterGeneratePublicKeyParameter;
        this.otherKeyParameter = null;
        if (algorithmParameterSpec == null && this.ivLength == 0) {
            iESParameterSpecGuessParameterSpec = IESUtil.guessParameterSpec(this.engine.getCipher(), null);
        } else {
            if (!(algorithmParameterSpec instanceof IESParameterSpec)) {
                throw new InvalidAlgorithmParameterException("must be passed IES parameters");
            }
            iESParameterSpecGuessParameterSpec = (IESParameterSpec) algorithmParameterSpec;
        }
        this.engineSpec = iESParameterSpecGuessParameterSpec;
        byte[] nonce = this.engineSpec.getNonce();
        int r02 = this.ivLength;
        if (r02 != 0 && (nonce == null || nonce.length != r02)) {
            throw new InvalidAlgorithmParameterException(androidx.browser.browseractions.a.b(new StringBuilder("NONCE in IES Parameters needs to be "), this.ivLength, " bytes long"));
        }
        if (r32 == 1 || r32 == 3) {
            if (!(key instanceof PublicKey)) {
                throw new InvalidKeyException("must be passed recipient's public XDH key for encryption");
            }
            asymmetricKeyParameterGeneratePublicKeyParameter = EdECUtil.generatePublicKeyParameter((PublicKey) key);
        } else {
            if (r32 != 2 && r32 != 4) {
                throw new InvalidKeyException("must be passed XDH key");
            }
            if (!(key instanceof PrivateKey)) {
                throw new InvalidKeyException("must be passed recipient's private XDH key for decryption");
            }
            asymmetricKeyParameterGeneratePublicKeyParameter = EdECUtil.generatePrivateKeyParameter((PrivateKey) key);
        }
        this.key = asymmetricKeyParameterGeneratePublicKeyParameter;
        this.random = secureRandom;
        this.state = r32;
        this.buffer.reset();
    }
}
