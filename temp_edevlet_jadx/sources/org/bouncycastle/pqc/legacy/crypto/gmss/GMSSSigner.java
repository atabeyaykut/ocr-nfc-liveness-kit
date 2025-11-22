package org.bouncycastle.pqc.legacy.crypto.gmss;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.GMSSUtil;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.WinternitzOTSVerify;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.WinternitzOTSignature;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class GMSSSigner implements MessageSigner {
    private byte[][][] currentAuthPaths;
    private GMSSDigestProvider digestProvider;
    private GMSSParameters gmssPS;
    private GMSSRandom gmssRandom;
    private GMSSUtil gmssUtil = new GMSSUtil();
    private int[] index;
    GMSSKeyParameters key;
    private int mdLength;
    private Digest messDigestOTS;
    private Digest messDigestTrees;
    private int numLayer;
    private WinternitzOTSignature ots;
    private byte[] pubKeyBytes;
    private SecureRandom random;
    private byte[][] subtreeRootSig;

    public GMSSSigner(GMSSDigestProvider gMSSDigestProvider) {
        this.digestProvider = gMSSDigestProvider;
        Digest digest = gMSSDigestProvider.get();
        this.messDigestTrees = digest;
        this.messDigestOTS = digest;
        this.mdLength = digest.getDigestSize();
        this.gmssRandom = new GMSSRandom(this.messDigestTrees);
    }

    private void initSign() {
        int r52;
        this.messDigestTrees.reset();
        GMSSPrivateKeyParameters gMSSPrivateKeyParameters = (GMSSPrivateKeyParameters) this.key;
        if (gMSSPrivateKeyParameters.isUsed()) {
            throw new IllegalStateException("Private key already used");
        }
        if (gMSSPrivateKeyParameters.getIndex(0) >= gMSSPrivateKeyParameters.getNumLeafs(0)) {
            throw new IllegalStateException("No more signatures can be generated");
        }
        GMSSParameters parameters = gMSSPrivateKeyParameters.getParameters();
        this.gmssPS = parameters;
        this.numLayer = parameters.getNumOfLayers();
        byte[] bArr = gMSSPrivateKeyParameters.getCurrentSeeds()[this.numLayer - 1];
        int r32 = this.mdLength;
        byte[] bArr2 = new byte[r32];
        byte[] bArr3 = new byte[r32];
        System.arraycopy(bArr, 0, bArr3, 0, r32);
        this.ots = new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr3), this.digestProvider.get(), this.gmssPS.getWinternitzParameter()[this.numLayer - 1]);
        byte[][][] currentAuthPaths = gMSSPrivateKeyParameters.getCurrentAuthPaths();
        this.currentAuthPaths = new byte[this.numLayer][][];
        int r33 = 0;
        while (true) {
            r52 = this.numLayer;
            if (r33 >= r52) {
                break;
            }
            this.currentAuthPaths[r33] = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, currentAuthPaths[r33].length, this.mdLength);
            int r53 = 0;
            while (true) {
                byte[][] bArr4 = currentAuthPaths[r33];
                if (r53 < bArr4.length) {
                    System.arraycopy(bArr4[r53], 0, this.currentAuthPaths[r33][r53], 0, this.mdLength);
                    r53++;
                }
            }
            r33++;
        }
        this.index = new int[r52];
        System.arraycopy(gMSSPrivateKeyParameters.getIndex(), 0, this.index, 0, this.numLayer);
        this.subtreeRootSig = new byte[this.numLayer - 1][];
        for (int r22 = 0; r22 < this.numLayer - 1; r22++) {
            byte[] subtreeRootSig = gMSSPrivateKeyParameters.getSubtreeRootSig(r22);
            byte[][] bArr5 = this.subtreeRootSig;
            byte[] bArr6 = new byte[subtreeRootSig.length];
            bArr5[r22] = bArr6;
            System.arraycopy(subtreeRootSig, 0, bArr6, 0, subtreeRootSig.length);
        }
        gMSSPrivateKeyParameters.markUsed();
    }

    private void initVerify() {
        this.messDigestTrees.reset();
        GMSSPublicKeyParameters gMSSPublicKeyParameters = (GMSSPublicKeyParameters) this.key;
        this.pubKeyBytes = gMSSPublicKeyParameters.getPublicKey();
        GMSSParameters parameters = gMSSPublicKeyParameters.getParameters();
        this.gmssPS = parameters;
        this.numLayer = parameters.getNumOfLayers();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        byte[] bArr2 = new byte[this.mdLength];
        byte[] signature = this.ots.getSignature(bArr);
        byte[] bArrConcatenateArray = this.gmssUtil.concatenateArray(this.currentAuthPaths[this.numLayer - 1]);
        byte[] bArrIntToBytesLittleEndian = this.gmssUtil.intToBytesLittleEndian(this.index[this.numLayer - 1]);
        int length = bArrIntToBytesLittleEndian.length + signature.length + bArrConcatenateArray.length;
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArrIntToBytesLittleEndian, 0, bArr3, 0, bArrIntToBytesLittleEndian.length);
        System.arraycopy(signature, 0, bArr3, bArrIntToBytesLittleEndian.length, signature.length);
        System.arraycopy(bArrConcatenateArray, 0, bArr3, bArrIntToBytesLittleEndian.length + signature.length, bArrConcatenateArray.length);
        byte[] bArr4 = new byte[0];
        for (int r02 = (this.numLayer - 1) - 1; r02 >= 0; r02--) {
            byte[] bArrConcatenateArray2 = this.gmssUtil.concatenateArray(this.currentAuthPaths[r02]);
            byte[] bArrIntToBytesLittleEndian2 = this.gmssUtil.intToBytesLittleEndian(this.index[r02]);
            int length2 = bArr4.length;
            byte[] bArr5 = new byte[length2];
            System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length);
            bArr4 = new byte[bArrIntToBytesLittleEndian2.length + length2 + this.subtreeRootSig[r02].length + bArrConcatenateArray2.length];
            System.arraycopy(bArr5, 0, bArr4, 0, length2);
            System.arraycopy(bArrIntToBytesLittleEndian2, 0, bArr4, length2, bArrIntToBytesLittleEndian2.length);
            byte[] bArr6 = this.subtreeRootSig[r02];
            System.arraycopy(bArr6, 0, bArr4, bArrIntToBytesLittleEndian2.length + length2, bArr6.length);
            System.arraycopy(bArrConcatenateArray2, 0, bArr4, length2 + bArrIntToBytesLittleEndian2.length + this.subtreeRootSig[r02].length, bArrConcatenateArray2.length);
        }
        byte[] bArr7 = new byte[bArr4.length + length];
        System.arraycopy(bArr3, 0, bArr7, 0, length);
        System.arraycopy(bArr4, 0, bArr7, length, bArr4.length);
        return bArr7;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!z10) {
            this.key = (GMSSPublicKeyParameters) cipherParameters;
            initVerify();
            return;
        }
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.random = parametersWithRandom.getRandom();
            this.key = (GMSSPrivateKeyParameters) parametersWithRandom.getParameters();
        } else {
            this.random = CryptoServicesRegistrar.getSecureRandom();
            this.key = (GMSSPrivateKeyParameters) cipherParameters;
        }
        initSign();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        this.messDigestOTS.reset();
        int r32 = 0;
        for (int r02 = this.numLayer - 1; r02 >= 0; r02--) {
            WinternitzOTSVerify winternitzOTSVerify = new WinternitzOTSVerify(this.digestProvider.get(), this.gmssPS.getWinternitzParameter()[r02]);
            int signatureLength = winternitzOTSVerify.getSignatureLength();
            int r6 = this.gmssUtil.bytesToIntLittleEndian(bArr2, r32);
            int r33 = r32 + 4;
            byte[] bArr3 = new byte[signatureLength];
            System.arraycopy(bArr2, r33, bArr3, 0, signatureLength);
            r32 = r33 + signatureLength;
            bArr = winternitzOTSVerify.Verify(bArr, bArr3);
            if (bArr == null) {
                System.err.println("OTS Public Key is null in GMSSSignature.verify");
                return false;
            }
            byte[][] bArr4 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.gmssPS.getHeightOfTrees()[r02], this.mdLength);
            for (byte[] bArr5 : bArr4) {
                System.arraycopy(bArr2, r32, bArr5, 0, this.mdLength);
                r32 += this.mdLength;
            }
            byte[] bArr6 = new byte[this.mdLength];
            int length = (1 << bArr4.length) + r6;
            for (int r62 = 0; r62 < bArr4.length; r62++) {
                int r82 = this.mdLength;
                int r92 = r82 << 1;
                byte[] bArr7 = new byte[r92];
                if (length % 2 == 0) {
                    System.arraycopy(bArr, 0, bArr7, 0, r82);
                    byte[] bArr8 = bArr4[r62];
                    int r83 = this.mdLength;
                    System.arraycopy(bArr8, 0, bArr7, r83, r83);
                    length /= 2;
                } else {
                    System.arraycopy(bArr4[r62], 0, bArr7, 0, r82);
                    System.arraycopy(bArr, 0, bArr7, this.mdLength, bArr.length);
                    length = (length - 1) / 2;
                }
                this.messDigestTrees.update(bArr7, 0, r92);
                bArr = new byte[this.messDigestTrees.getDigestSize()];
                this.messDigestTrees.doFinal(bArr, 0);
            }
        }
        return Arrays.areEqual(this.pubKeyBytes, bArr);
    }
}
