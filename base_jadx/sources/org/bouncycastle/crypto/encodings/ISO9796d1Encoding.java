package org.bouncycastle.crypto.encodings;

import androidx.camera.core.impl.a;
import java.math.BigInteger;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public class ISO9796d1Encoding implements AsymmetricBlockCipher {
    private int bitSize;
    private AsymmetricBlockCipher engine;
    private boolean forEncryption;
    private BigInteger modulus;
    private int padBits = 0;
    private static final BigInteger SIXTEEN = BigInteger.valueOf(16);
    private static final BigInteger SIX = BigInteger.valueOf(6);
    private static byte[] shadows = {14, 3, 5, 8, 9, 4, 2, PassportService.SFI_DG15, 0, PassportService.SFI_DG13, PassportService.SFI_DG11, 6, 7, 10, PassportService.SFI_DG12, 1};
    private static byte[] inverse = {8, PassportService.SFI_DG15, 6, 1, 5, 2, PassportService.SFI_DG11, PassportService.SFI_DG12, 3, 4, PassportService.SFI_DG13, 10, 14, 9, 0, 7};

    public ISO9796d1Encoding(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.engine = asymmetricBlockCipher;
    }

    private static byte[] convertOutputDecryptOnly(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] != 0) {
            return byteArray;
        }
        int length = byteArray.length - 1;
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 1, bArr, 0, length);
        return bArr;
    }

    private byte[] decodeBlock(byte[] bArr, int r11, int r12) throws InvalidCipherTextException {
        byte[] bArrProcessBlock = this.engine.processBlock(bArr, r11, r12);
        int r112 = (this.bitSize + 13) / 16;
        BigInteger bigInteger = new BigInteger(1, bArrProcessBlock);
        BigInteger bigInteger2 = SIXTEEN;
        BigInteger bigIntegerMod = bigInteger.mod(bigInteger2);
        BigInteger bigInteger3 = SIX;
        if (!bigIntegerMod.equals(bigInteger3)) {
            if (!this.modulus.subtract(bigInteger).mod(bigInteger2).equals(bigInteger3)) {
                throw new InvalidCipherTextException("resulting integer iS or (modulus - iS) is not congruent to 6 mod 16");
            }
            bigInteger = this.modulus.subtract(bigInteger);
        }
        byte[] bArrConvertOutputDecryptOnly = convertOutputDecryptOnly(bigInteger);
        if ((bArrConvertOutputDecryptOnly[bArrConvertOutputDecryptOnly.length - 1] & PassportService.SFI_DG15) != 6) {
            throw new InvalidCipherTextException("invalid forcing byte in block");
        }
        bArrConvertOutputDecryptOnly[bArrConvertOutputDecryptOnly.length - 1] = (byte) (((bArrConvertOutputDecryptOnly[bArrConvertOutputDecryptOnly.length - 1] & 255) >>> 4) | (inverse[(bArrConvertOutputDecryptOnly[bArrConvertOutputDecryptOnly.length - 2] & 255) >> 4] << 4));
        byte[] bArr2 = shadows;
        byte b10 = bArrConvertOutputDecryptOnly[1];
        byte b11 = (byte) (bArr2[b10 & PassportService.SFI_DG15] | (bArr2[(b10 & 255) >>> 4] << 4));
        bArrConvertOutputDecryptOnly[0] = b11;
        int r22 = 0;
        boolean z10 = false;
        int r42 = 1;
        for (int length = bArrConvertOutputDecryptOnly.length - 1; length >= bArrConvertOutputDecryptOnly.length - (r112 * 2); length -= 2) {
            byte[] bArr3 = shadows;
            byte b12 = bArrConvertOutputDecryptOnly[length];
            int r52 = bArr3[b12 & PassportService.SFI_DG15] | (bArr3[(b12 & 255) >>> 4] << 4);
            int r6 = length - 1;
            byte b13 = bArrConvertOutputDecryptOnly[r6];
            if (((b13 ^ r52) & 255) != 0) {
                if (z10) {
                    throw new InvalidCipherTextException("invalid tsums in block");
                }
                z10 = true;
                r42 = (b13 ^ r52) & 255;
                r22 = r6;
            }
        }
        bArrConvertOutputDecryptOnly[r22] = 0;
        int length2 = (bArrConvertOutputDecryptOnly.length - r22) / 2;
        byte[] bArr4 = new byte[length2];
        for (int r13 = 0; r13 < length2; r13++) {
            bArr4[r13] = bArrConvertOutputDecryptOnly[a.d(r13, 2, r22, 1)];
        }
        this.padBits = r42 - 1;
        return bArr4;
    }

    private byte[] encodeBlock(byte[] bArr, int r13, int r14) throws InvalidCipherTextException {
        int r02 = this.bitSize;
        int r12 = (r02 + 7) / 8;
        byte[] bArr2 = new byte[r12];
        int r52 = 1;
        int r42 = this.padBits + 1;
        int r03 = (r02 + 13) / 16;
        int r72 = 0;
        while (r72 < r03) {
            if (r72 > r03 - r14) {
                int r92 = r03 - r72;
                System.arraycopy(bArr, (r13 + r14) - r92, bArr2, r12 - r03, r92);
            } else {
                System.arraycopy(bArr, r13, bArr2, r12 - (r72 + r14), r14);
            }
            r72 += r14;
        }
        for (int r122 = r12 - (r03 * 2); r122 != r12; r122 += 2) {
            byte b10 = bArr2[(r122 / 2) + (r12 - r03)];
            byte[] bArr3 = shadows;
            bArr2[r122] = (byte) (bArr3[b10 & PassportService.SFI_DG15] | (bArr3[(b10 & 255) >>> 4] << 4));
            bArr2[r122 + 1] = b10;
        }
        int r123 = r12 - (r14 * 2);
        bArr2[r123] = (byte) (bArr2[r123] ^ r42);
        int r124 = r12 - 1;
        bArr2[r124] = (byte) ((bArr2[r124] << 4) | 6);
        int r125 = 8 - ((this.bitSize - 1) % 8);
        if (r125 != 8) {
            byte b11 = (byte) (bArr2[0] & (255 >>> r125));
            bArr2[0] = b11;
            bArr2[0] = (byte) ((128 >>> r125) | b11);
            r52 = 0;
        } else {
            bArr2[0] = 0;
            bArr2[1] = (byte) (bArr2[1] | ISOFileInfo.DATA_BYTES1);
        }
        return this.engine.processBlock(bArr2, r52, r12 - r52);
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        int inputBlockSize = this.engine.getInputBlockSize();
        return this.forEncryption ? (inputBlockSize + 1) / 2 : inputBlockSize;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        int outputBlockSize = this.engine.getOutputBlockSize();
        return this.forEncryption ? outputBlockSize : (outputBlockSize + 1) / 2;
    }

    public int getPadBits() {
        return this.padBits;
    }

    public AsymmetricBlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        RSAKeyParameters rSAKeyParameters = cipherParameters instanceof ParametersWithRandom ? (RSAKeyParameters) ((ParametersWithRandom) cipherParameters).getParameters() : (RSAKeyParameters) cipherParameters;
        this.engine.init(z10, cipherParameters);
        BigInteger modulus = rSAKeyParameters.getModulus();
        this.modulus = modulus;
        this.bitSize = modulus.bitLength();
        this.forEncryption = z10;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int r32, int r42) throws InvalidCipherTextException {
        return this.forEncryption ? encodeBlock(bArr, r32, r42) : decodeBlock(bArr, r32, r42);
    }

    public void setPadBits(int r22) {
        if (r22 > 7) {
            throw new IllegalArgumentException("padBits > 7");
        }
        this.padBits = r22;
    }
}
