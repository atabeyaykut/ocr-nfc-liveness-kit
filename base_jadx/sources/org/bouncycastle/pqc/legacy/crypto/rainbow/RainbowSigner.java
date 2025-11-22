package org.bouncycastle.pqc.legacy.crypto.rainbow;

import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.pqc.legacy.crypto.rainbow.util.ComputeInField;
import org.bouncycastle.pqc.legacy.crypto.rainbow.util.GF2Field;

/* loaded from: classes2.dex */
public class RainbowSigner implements MessageSigner {
    private static final int MAXITS = 65536;

    /* renamed from: cf, reason: collision with root package name */
    private ComputeInField f12050cf = new ComputeInField();
    RainbowKeyParameters key;
    private SecureRandom random;
    int signableDocumentLength;

    /* renamed from: x, reason: collision with root package name */
    private short[] f12051x;

    private short[] initSign(Layer[] layerArr, short[] sArr) throws RuntimeException {
        short[] sArr2 = new short[sArr.length];
        short[] sArrMultiplyMatrix = this.f12050cf.multiplyMatrix(((RainbowPrivateKeyParameters) this.key).getInvA1(), this.f12050cf.addVect(((RainbowPrivateKeyParameters) this.key).getB1(), sArr));
        for (int r12 = 0; r12 < layerArr[0].getVi(); r12++) {
            this.f12051x[r12] = (short) this.random.nextInt();
            short[] sArr3 = this.f12051x;
            sArr3[r12] = (short) (sArr3[r12] & 255);
        }
        return sArrMultiplyMatrix;
    }

    private short[] makeMessageRepresentative(byte[] bArr) {
        int r02 = this.signableDocumentLength;
        short[] sArr = new short[r02];
        int r22 = 0;
        int r32 = 0;
        while (r22 < bArr.length) {
            short s7 = bArr[r32];
            sArr[r22] = s7;
            sArr[r22] = (short) (s7 & 255);
            r32++;
            r22++;
            if (r22 >= r02) {
                break;
            }
        }
        return sArr;
    }

    private short[] verifySignatureIntern(short[] sArr) {
        short[][] coeffQuadratic = ((RainbowPublicKeyParameters) this.key).getCoeffQuadratic();
        short[][] coeffSingular = ((RainbowPublicKeyParameters) this.key).getCoeffSingular();
        short[] coeffScalar = ((RainbowPublicKeyParameters) this.key).getCoeffScalar();
        short[] sArr2 = new short[coeffQuadratic.length];
        int length = coeffSingular[0].length;
        for (int r6 = 0; r6 < coeffQuadratic.length; r6++) {
            int r82 = 0;
            for (int r72 = 0; r72 < length; r72++) {
                for (int r92 = r72; r92 < length; r92++) {
                    sArr2[r6] = GF2Field.addElem(sArr2[r6], GF2Field.multElem(coeffQuadratic[r6][r82], GF2Field.multElem(sArr[r72], sArr[r92])));
                    r82++;
                }
                sArr2[r6] = GF2Field.addElem(sArr2[r6], GF2Field.multElem(coeffSingular[r6][r72], sArr[r72]));
            }
            sArr2[r6] = GF2Field.addElem(sArr2[r6], coeffScalar[r6]);
        }
        return sArr2;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) throws Exception {
        boolean z10;
        Layer[] layers = ((RainbowPrivateKeyParameters) this.key).getLayers();
        int length = layers.length;
        this.f12051x = new short[((RainbowPrivateKeyParameters) this.key).getInvA2().length];
        int viNext = layers[length - 1].getViNext();
        byte[] bArr2 = new byte[viNext];
        short[] sArrMakeMessageRepresentative = makeMessageRepresentative(bArr);
        int r52 = 0;
        do {
            try {
                short[] sArrInitSign = initSign(layers, sArrMakeMessageRepresentative);
                int r82 = 0;
                for (int r72 = 0; r72 < length; r72++) {
                    short[] sArr = new short[layers[r72].getOi()];
                    short[] sArr2 = new short[layers[r72].getOi()];
                    for (int r10 = 0; r10 < layers[r72].getOi(); r10++) {
                        sArr[r10] = sArrInitSign[r82];
                        r82++;
                    }
                    short[] sArrSolveEquation = this.f12050cf.solveEquation(layers[r72].plugInVinegars(this.f12051x), sArr);
                    if (sArrSolveEquation == null) {
                        throw new Exception("LES is not solveable!");
                    }
                    for (int r102 = 0; r102 < sArrSolveEquation.length; r102++) {
                        this.f12051x[layers[r72].getVi() + r102] = sArrSolveEquation[r102];
                    }
                }
                short[] sArrMultiplyMatrix = this.f12050cf.multiplyMatrix(((RainbowPrivateKeyParameters) this.key).getInvA2(), this.f12050cf.addVect(((RainbowPrivateKeyParameters) this.key).getB2(), this.f12051x));
                for (int r73 = 0; r73 < viNext; r73++) {
                    bArr2[r73] = (byte) sArrMultiplyMatrix[r73];
                }
                z10 = true;
            } catch (Exception unused) {
                z10 = false;
            }
            if (z10) {
                break;
            }
            r52++;
        } while (r52 < 65536);
        if (r52 != 65536) {
            return bArr2;
        }
        throw new IllegalStateException("unable to generate signature - LES not solvable");
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z10, CipherParameters cipherParameters) {
        RainbowKeyParameters rainbowKeyParameters;
        if (!z10) {
            rainbowKeyParameters = (RainbowPublicKeyParameters) cipherParameters;
        } else {
            if (cipherParameters instanceof ParametersWithRandom) {
                ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
                this.random = parametersWithRandom.getRandom();
                this.key = (RainbowPrivateKeyParameters) parametersWithRandom.getParameters();
                this.signableDocumentLength = this.key.getDocLength();
            }
            this.random = CryptoServicesRegistrar.getSecureRandom();
            rainbowKeyParameters = (RainbowPrivateKeyParameters) cipherParameters;
        }
        this.key = rainbowKeyParameters;
        this.signableDocumentLength = this.key.getDocLength();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        short[] sArr = new short[bArr2.length];
        for (int r22 = 0; r22 < bArr2.length; r22++) {
            sArr[r22] = (short) (bArr2[r22] & 255);
        }
        short[] sArrMakeMessageRepresentative = makeMessageRepresentative(bArr);
        short[] sArrVerifySignatureIntern = verifySignatureIntern(sArr);
        if (sArrMakeMessageRepresentative.length != sArrVerifySignatureIntern.length) {
            return false;
        }
        boolean z10 = true;
        for (int r23 = 0; r23 < sArrMakeMessageRepresentative.length; r23++) {
            z10 = z10 && sArrMakeMessageRepresentative[r23] == sArrVerifySignatureIntern[r23];
        }
        return z10;
    }
}
