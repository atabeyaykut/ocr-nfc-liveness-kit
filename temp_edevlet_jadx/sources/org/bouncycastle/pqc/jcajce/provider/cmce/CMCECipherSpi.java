package org.bouncycastle.pqc.jcajce.provider.cmce;

import androidx.browser.browseractions.a;
import androidx.browser.browseractions.b;
import androidx.camera.camera2.internal.c;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.DestroyFailedException;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.SecretWithEncapsulation;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.jcajce.spec.KEMParameterSpec;
import org.bouncycastle.jcajce.spec.KTSParameterSpec;
import org.bouncycastle.pqc.crypto.cmce.CMCEKEMExtractor;
import org.bouncycastle.pqc.crypto.cmce.CMCEKEMGenerator;
import org.bouncycastle.pqc.crypto.cmce.CMCEParameters;
import org.bouncycastle.pqc.jcajce.provider.util.WrapUtil;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Exceptions;
import org.bouncycastle.util.Strings;

/* loaded from: classes2.dex */
class CMCECipherSpi extends CipherSpi {
    private final String algorithmName;
    private CMCEParameters cmceParameters;
    private AlgorithmParameters engineParams;
    private CMCEKEMGenerator kemGen;
    private KTSParameterSpec kemParameterSpec;
    private BCCMCEPrivateKey unwrapKey;
    private BCCMCEPublicKey wrapKey;

    public static class Base extends CMCECipherSpi {
        public Base() throws NoSuchAlgorithmException {
            super("CMCE");
        }
    }

    public static class MCE348864 extends CMCECipherSpi {
        public MCE348864() throws NoSuchAlgorithmException {
            super(CMCEParameters.mceliece348864r3);
        }
    }

    public static class MCE460896 extends CMCECipherSpi {
        public MCE460896() throws NoSuchAlgorithmException {
            super(CMCEParameters.mceliece460896r3);
        }
    }

    public static class MCE6688128 extends CMCECipherSpi {
        public MCE6688128() throws NoSuchAlgorithmException {
            super(CMCEParameters.mceliece6688128r3);
        }
    }

    public static class MCE6960119 extends CMCECipherSpi {
        public MCE6960119() throws NoSuchAlgorithmException {
            super(CMCEParameters.mceliece6960119r3);
        }
    }

    public static class MCE8192128 extends CMCECipherSpi {
        public MCE8192128() throws NoSuchAlgorithmException {
            super(CMCEParameters.mceliece8192128r3);
        }
    }

    public CMCECipherSpi(String str) {
        this.algorithmName = str;
    }

    public CMCECipherSpi(CMCEParameters cMCEParameters) {
        this.cmceParameters = cMCEParameters;
        this.algorithmName = Strings.toUpperCase(cMCEParameters.getName());
    }

    @Override // javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int r22, int r32, byte[] bArr2, int r52) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int r22, int r32) throws BadPaddingException, IllegalBlockSizeException {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        return null;
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        return 2048;
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetOutputSize(int r12) {
        return -1;
    }

    @Override // javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() throws NoSuchAlgorithmException, InvalidParameterSpecException, NoSuchProviderException {
        if (this.engineParams == null) {
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(this.algorithmName, "BCPQC");
                this.engineParams = algorithmParameters;
                algorithmParameters.init(this.kemParameterSpec);
            } catch (Exception e10) {
                throw Exceptions.illegalStateException(e10.toString(), e10);
            }
        }
        return this.engineParams;
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int r22, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidParameterSpecException, InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec;
        if (algorithmParameters != null) {
            try {
                parameterSpec = algorithmParameters.getParameterSpec(KEMParameterSpec.class);
            } catch (Exception unused) {
                throw new InvalidAlgorithmParameterException("can't handle parameter " + algorithmParameters.toString());
            }
        } else {
            parameterSpec = null;
        }
        engineInit(r22, key, parameterSpec, secureRandom);
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int r22, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(r22, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e10) {
            throw Exceptions.illegalArgumentException(e10.getMessage(), e10);
        }
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int r22, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        KTSParameterSpec kEMParameterSpec;
        if (algorithmParameterSpec == null) {
            kEMParameterSpec = new KEMParameterSpec("AES-KWP");
        } else {
            if (!(algorithmParameterSpec instanceof KTSParameterSpec)) {
                throw new InvalidAlgorithmParameterException(c.h(new StringBuilder(), this.algorithmName, " can only accept KTSParameterSpec"));
            }
            kEMParameterSpec = (KTSParameterSpec) algorithmParameterSpec;
        }
        this.kemParameterSpec = kEMParameterSpec;
        if (r22 == 3) {
            if (!(key instanceof BCCMCEPublicKey)) {
                throw new InvalidKeyException(c.h(new StringBuilder("Only a "), this.algorithmName, " public key can be used for wrapping"));
            }
            this.wrapKey = (BCCMCEPublicKey) key;
            this.kemGen = new CMCEKEMGenerator(CryptoServicesRegistrar.getSecureRandom(secureRandom));
        } else {
            if (r22 != 4) {
                throw new InvalidParameterException("Cipher only valid for wrapping/unwrapping");
            }
            if (!(key instanceof BCCMCEPrivateKey)) {
                throw new InvalidKeyException(c.h(new StringBuilder("Only a "), this.algorithmName, " private key can be used for unwrapping"));
            }
            this.unwrapKey = (BCCMCEPrivateKey) key;
        }
        CMCEParameters cMCEParameters = this.cmceParameters;
        if (cMCEParameters != null) {
            String upperCase = Strings.toUpperCase(cMCEParameters.getName());
            if (!upperCase.equals(key.getAlgorithm())) {
                throw new InvalidKeyException("cipher locked to ".concat(upperCase));
            }
        }
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        throw new NoSuchAlgorithmException(b.e("Cannot support mode ", str));
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        throw new NoSuchPaddingException(a.a("Padding ", str, " unknown"));
    }

    @Override // javax.crypto.CipherSpi
    public Key engineUnwrap(byte[] bArr, String str, int r82) throws NoSuchAlgorithmException, InvalidKeyException {
        if (r82 != 3) {
            throw new InvalidKeyException("only SECRET_KEY supported");
        }
        try {
            CMCEKEMExtractor cMCEKEMExtractor = new CMCEKEMExtractor(this.unwrapKey.getKeyParams());
            byte[] bArrExtractSecret = cMCEKEMExtractor.extractSecret(Arrays.copyOfRange(bArr, 0, cMCEKEMExtractor.getEncapsulationLength()));
            Wrapper wrapper = WrapUtil.getWrapper(this.kemParameterSpec.getKeyAlgorithmName());
            KeyParameter keyParameter = new KeyParameter(bArrExtractSecret);
            Arrays.clear(bArrExtractSecret);
            wrapper.init(false, keyParameter);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, cMCEKEMExtractor.getEncapsulationLength(), bArr.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec(wrapper.unwrap(bArrCopyOfRange, 0, bArrCopyOfRange.length), str);
            Arrays.clear(keyParameter.getKey());
            return secretKeySpec;
        } catch (IllegalArgumentException e10) {
            throw new NoSuchAlgorithmException("unable to extract KTS secret: " + e10.getMessage());
        } catch (InvalidCipherTextException e11) {
            throw new InvalidKeyException("unable to extract KTS secret: " + e11.getMessage());
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int r22, int r32, byte[] bArr2, int r52) throws ShortBufferException {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int r22, int r32) {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineWrap(Key key) throws DestroyFailedException, IllegalBlockSizeException, InvalidKeyException {
        if (key.getEncoded() == null) {
            throw new InvalidKeyException("Cannot wrap key, null encoding.");
        }
        try {
            SecretWithEncapsulation secretWithEncapsulationGenerateEncapsulated = this.kemGen.generateEncapsulated(this.wrapKey.getKeyParams());
            Wrapper wrapper = WrapUtil.getWrapper(this.kemParameterSpec.getKeyAlgorithmName());
            wrapper.init(true, new KeyParameter(secretWithEncapsulationGenerateEncapsulated.getSecret()));
            byte[] encapsulation = secretWithEncapsulationGenerateEncapsulated.getEncapsulation();
            secretWithEncapsulationGenerateEncapsulated.destroy();
            byte[] encoded = key.getEncoded();
            byte[] bArrConcatenate = Arrays.concatenate(encapsulation, wrapper.wrap(encoded, 0, encoded.length));
            Arrays.clear(encoded);
            return bArrConcatenate;
        } catch (IllegalArgumentException e10) {
            throw new IllegalBlockSizeException("unable to generate KTS secret: " + e10.getMessage());
        } catch (DestroyFailedException e11) {
            throw new IllegalBlockSizeException("unable to destroy interim values: " + e11.getMessage());
        }
    }
}
