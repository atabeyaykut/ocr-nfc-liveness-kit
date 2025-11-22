package org.bouncycastle.crypto.signers;

import androidx.camera.core.impl.a;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.crypto.digests.Prehash;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSABlindingParameters;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class PSSSigner implements Signer {
    public static final byte TRAILER_IMPLICIT = -68;
    private byte[] block;
    private AsymmetricBlockCipher cipher;
    private Digest contentDigest1;
    private Digest contentDigest2;
    private int emBits;
    private int hLen;
    private byte[] mDash;
    private Digest mgfDigest;
    private int mgfhLen;
    private SecureRandom random;
    private int sLen;
    private boolean sSet;
    private byte[] salt;
    private byte trailer;

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int r42) {
        this(asymmetricBlockCipher, digest, r42, TRAILER_IMPLICIT);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int r92, byte b10) {
        this(asymmetricBlockCipher, digest, digest, r92, b10);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, int r10) {
        this(asymmetricBlockCipher, digest, digest2, r10, TRAILER_IMPLICIT);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, int r11, byte b10) {
        this(asymmetricBlockCipher, digest, digest, digest2, r11, b10);
    }

    private PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, Digest digest3, int r52, byte b10) {
        this.cipher = asymmetricBlockCipher;
        this.contentDigest1 = digest;
        this.contentDigest2 = digest2;
        this.mgfDigest = digest3;
        this.hLen = digest2.getDigestSize();
        this.mgfhLen = digest3.getDigestSize();
        this.sSet = false;
        this.sLen = r52;
        this.salt = new byte[r52];
        this.mDash = new byte[r52 + 8 + this.hLen];
        this.trailer = b10;
    }

    private PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, Digest digest3, byte[] bArr, byte b10) {
        this.cipher = asymmetricBlockCipher;
        this.contentDigest1 = digest;
        this.contentDigest2 = digest2;
        this.mgfDigest = digest3;
        this.hLen = digest2.getDigestSize();
        this.mgfhLen = digest3.getDigestSize();
        this.sSet = true;
        int length = bArr.length;
        this.sLen = length;
        this.salt = bArr;
        this.mDash = new byte[length + 8 + this.hLen];
        this.trailer = b10;
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, byte[] bArr) {
        this(asymmetricBlockCipher, digest, digest2, bArr, TRAILER_IMPLICIT);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, byte[] bArr, byte b10) {
        this(asymmetricBlockCipher, digest, digest, digest2, bArr, b10);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, byte[] bArr) {
        this(asymmetricBlockCipher, digest, digest, bArr, TRAILER_IMPLICIT);
    }

    private void ItoOSP(int r42, byte[] bArr) {
        bArr[0] = (byte) (r42 >>> 24);
        bArr[1] = (byte) (r42 >>> 16);
        bArr[2] = (byte) (r42 >>> 8);
        bArr[3] = (byte) (r42 >>> 0);
    }

    private void clearBlock(byte[] bArr) {
        for (int r12 = 0; r12 != bArr.length; r12++) {
            bArr[r12] = 0;
        }
    }

    public static PSSSigner createRawSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest) {
        return new PSSSigner(asymmetricBlockCipher, Prehash.forDigest(digest), digest, digest, digest.getDigestSize(), TRAILER_IMPLICIT);
    }

    public static PSSSigner createRawSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, int r11, byte b10) {
        return new PSSSigner(asymmetricBlockCipher, Prehash.forDigest(digest), digest, digest2, r11, b10);
    }

    public static PSSSigner createRawSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, byte[] bArr, byte b10) {
        return new PSSSigner(asymmetricBlockCipher, Prehash.forDigest(digest), digest, digest2, bArr, b10);
    }

    private byte[] maskGenerator(byte[] bArr, int r42, int r52, int r6) {
        Digest digest = this.mgfDigest;
        if (!(digest instanceof Xof)) {
            return maskGeneratorFunction1(bArr, r42, r52, r6);
        }
        byte[] bArr2 = new byte[r6];
        digest.update(bArr, r42, r52);
        ((Xof) this.mgfDigest).doFinal(bArr2, 0, r6);
        return bArr2;
    }

    private byte[] maskGeneratorFunction1(byte[] bArr, int r10, int r11, int r12) {
        int r6;
        byte[] bArr2 = new byte[r12];
        byte[] bArr3 = new byte[this.mgfhLen];
        byte[] bArr4 = new byte[4];
        this.mgfDigest.reset();
        int r52 = 0;
        while (true) {
            r6 = this.mgfhLen;
            if (r52 >= r12 / r6) {
                break;
            }
            ItoOSP(r52, bArr4);
            this.mgfDigest.update(bArr, r10, r11);
            this.mgfDigest.update(bArr4, 0, 4);
            this.mgfDigest.doFinal(bArr3, 0);
            int r62 = this.mgfhLen;
            System.arraycopy(bArr3, 0, bArr2, r52 * r62, r62);
            r52++;
        }
        if (r6 * r52 < r12) {
            ItoOSP(r52, bArr4);
            this.mgfDigest.update(bArr, r10, r11);
            this.mgfDigest.update(bArr4, 0, 4);
            this.mgfDigest.doFinal(bArr3, 0);
            int r92 = this.mgfhLen;
            System.arraycopy(bArr3, 0, bArr2, r52 * r92, r12 - (r52 * r92));
        }
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() throws DataLengthException, CryptoException {
        int digestSize = this.contentDigest1.getDigestSize();
        int r12 = this.hLen;
        if (digestSize != r12) {
            throw new IllegalStateException();
        }
        Digest digest = this.contentDigest1;
        byte[] bArr = this.mDash;
        digest.doFinal(bArr, (bArr.length - r12) - this.sLen);
        if (this.sLen != 0) {
            if (!this.sSet) {
                this.random.nextBytes(this.salt);
            }
            byte[] bArr2 = this.salt;
            byte[] bArr3 = this.mDash;
            int length = bArr3.length;
            int r42 = this.sLen;
            System.arraycopy(bArr2, 0, bArr3, length - r42, r42);
        }
        int r02 = this.hLen;
        byte[] bArr4 = new byte[r02];
        Digest digest2 = this.contentDigest2;
        byte[] bArr5 = this.mDash;
        digest2.update(bArr5, 0, bArr5.length);
        this.contentDigest2.doFinal(bArr4, 0);
        byte[] bArr6 = this.block;
        int length2 = bArr6.length;
        int r52 = this.sLen;
        int r72 = this.hLen;
        bArr6[(((length2 - r52) - 1) - r72) - 1] = 1;
        System.arraycopy(this.salt, 0, bArr6, ((bArr6.length - r52) - r72) - 1, r52);
        byte[] bArrMaskGenerator = maskGenerator(bArr4, 0, r02, (this.block.length - this.hLen) - 1);
        for (int r32 = 0; r32 != bArrMaskGenerator.length; r32++) {
            byte[] bArr7 = this.block;
            bArr7[r32] = (byte) (bArr7[r32] ^ bArrMaskGenerator[r32]);
        }
        byte[] bArr8 = this.block;
        int length3 = bArr8.length;
        int r43 = this.hLen;
        System.arraycopy(bArr4, 0, bArr8, (length3 - r43) - 1, r43);
        byte[] bArr9 = this.block;
        bArr9[0] = (byte) ((255 >>> ((bArr9.length * 8) - this.emBits)) & bArr9[0]);
        bArr9[bArr9.length - 1] = this.trailer;
        byte[] bArrProcessBlock = this.cipher.processBlock(bArr9, 0, bArr9.length);
        clearBlock(this.block);
        return bArrProcessBlock;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z10, CipherParameters cipherParameters) {
        CipherParameters parameters;
        RSAKeyParameters publicKey;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            parameters = parametersWithRandom.getParameters();
            this.random = parametersWithRandom.getRandom();
        } else {
            if (z10) {
                this.random = CryptoServicesRegistrar.getSecureRandom();
            }
            parameters = cipherParameters;
        }
        if (parameters instanceof RSABlindingParameters) {
            publicKey = ((RSABlindingParameters) parameters).getPublicKey();
            this.cipher.init(z10, cipherParameters);
        } else {
            publicKey = (RSAKeyParameters) parameters;
            this.cipher.init(z10, parameters);
        }
        int r42 = publicKey.getModulus().bitLength() - 1;
        this.emBits = r42;
        if (r42 < a.d(this.sLen, 8, this.hLen * 8, 9)) {
            throw new IllegalArgumentException("key too small for specified hash and salt lengths");
        }
        this.block = new byte[(r42 + 7) / 8];
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.contentDigest1.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b10) {
        this.contentDigest1.update(b10);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int r32, int r42) {
        this.contentDigest1.update(bArr, r32, r42);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        byte[] bArr2;
        int length;
        byte b10;
        int digestSize = this.contentDigest1.getDigestSize();
        int r12 = this.hLen;
        if (digestSize != r12) {
            throw new IllegalStateException();
        }
        Digest digest = this.contentDigest1;
        byte[] bArr3 = this.mDash;
        digest.doFinal(bArr3, (bArr3.length - r12) - this.sLen);
        try {
            byte[] bArrProcessBlock = this.cipher.processBlock(bArr, 0, bArr.length);
            byte[] bArr4 = this.block;
            Arrays.fill(bArr4, 0, bArr4.length - bArrProcessBlock.length, (byte) 0);
            byte[] bArr5 = this.block;
            System.arraycopy(bArrProcessBlock, 0, bArr5, bArr5.length - bArrProcessBlock.length, bArrProcessBlock.length);
            bArr2 = this.block;
            length = 255 >>> ((bArr2.length * 8) - this.emBits);
            b10 = bArr2[0];
        } catch (Exception unused) {
        }
        if ((b10 & 255) != (b10 & length) || bArr2[bArr2.length - 1] != this.trailer) {
            clearBlock(bArr2);
            return false;
        }
        int length2 = bArr2.length;
        int r42 = this.hLen;
        byte[] bArrMaskGenerator = maskGenerator(bArr2, (length2 - r42) - 1, r42, (bArr2.length - r42) - 1);
        for (int r22 = 0; r22 != bArrMaskGenerator.length; r22++) {
            byte[] bArr6 = this.block;
            bArr6[r22] = (byte) (bArr6[r22] ^ bArrMaskGenerator[r22]);
        }
        byte[] bArr7 = this.block;
        bArr7[0] = (byte) (length & bArr7[0]);
        int r82 = 0;
        while (true) {
            byte[] bArr8 = this.block;
            int length3 = bArr8.length;
            int r43 = this.hLen;
            int r52 = this.sLen;
            if (r82 != ((length3 - r43) - r52) - 2) {
                if (bArr8[r82] != 0) {
                    clearBlock(bArr8);
                    return false;
                }
                r82++;
            } else {
                if (bArr8[((bArr8.length - r43) - r52) - 2] != 1) {
                    clearBlock(bArr8);
                    return false;
                }
                if (this.sSet) {
                    byte[] bArr9 = this.salt;
                    byte[] bArr10 = this.mDash;
                    System.arraycopy(bArr9, 0, bArr10, bArr10.length - r52, r52);
                } else {
                    int length4 = ((bArr8.length - r52) - r43) - 1;
                    byte[] bArr11 = this.mDash;
                    System.arraycopy(bArr8, length4, bArr11, bArr11.length - r52, r52);
                }
                Digest digest2 = this.contentDigest2;
                byte[] bArr12 = this.mDash;
                digest2.update(bArr12, 0, bArr12.length);
                Digest digest3 = this.contentDigest2;
                byte[] bArr13 = this.mDash;
                digest3.doFinal(bArr13, bArr13.length - this.hLen);
                int length5 = this.block.length;
                int r13 = this.hLen;
                int r83 = (length5 - r13) - 1;
                int length6 = this.mDash.length - r13;
                while (true) {
                    byte[] bArr14 = this.mDash;
                    if (length6 == bArr14.length) {
                        clearBlock(bArr14);
                        clearBlock(this.block);
                        return true;
                    }
                    if ((this.block[r83] ^ bArr14[length6]) != 0) {
                        clearBlock(bArr14);
                        clearBlock(this.block);
                        return false;
                    }
                    r83++;
                    length6++;
                }
            }
        }
    }
}
