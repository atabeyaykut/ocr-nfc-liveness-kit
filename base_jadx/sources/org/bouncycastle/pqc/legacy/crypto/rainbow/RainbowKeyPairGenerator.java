package org.bouncycastle.pqc.legacy.crypto.rainbow;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.legacy.crypto.rainbow.util.ComputeInField;
import org.bouncycastle.pqc.legacy.crypto.rainbow.util.GF2Field;

/* loaded from: classes2.dex */
public class RainbowKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private short[][] A1;
    private short[][] A1inv;
    private short[][] A2;
    private short[][] A2inv;

    /* renamed from: b1, reason: collision with root package name */
    private short[] f12046b1;

    /* renamed from: b2, reason: collision with root package name */
    private short[] f12047b2;
    private boolean initialized = false;
    private Layer[] layers;
    private int numOfLayers;
    private short[][] pub_quadratic;
    private short[] pub_scalar;
    private short[][] pub_singular;
    private RainbowKeyGenerationParameters rainbowParams;
    private SecureRandom sr;
    private int[] vi;

    private void compactPublicKey(short[][][] sArr) {
        int length = sArr.length;
        int length2 = sArr[0].length;
        this.pub_quadratic = (short[][]) Array.newInstance((Class<?>) Short.TYPE, length, ((length2 + 1) * length2) / 2);
        for (int r32 = 0; r32 < length; r32++) {
            int r52 = 0;
            for (int r42 = 0; r42 < length2; r42++) {
                for (int r6 = r42; r6 < length2; r6++) {
                    short[][] sArr2 = this.pub_quadratic;
                    if (r6 == r42) {
                        sArr2[r32][r52] = sArr[r32][r42][r6];
                    } else {
                        short[] sArr3 = sArr2[r32];
                        short[][] sArr4 = sArr[r32];
                        sArr3[r52] = GF2Field.addElem(sArr4[r42][r6], sArr4[r6][r42]);
                    }
                    r52++;
                }
            }
        }
    }

    private void computePublicKey() {
        ComputeInField computeInField = new ComputeInField();
        int[] r22 = this.vi;
        int r52 = 0;
        int r32 = r22[r22.length - 1] - r22[0];
        int r23 = r22[r22.length - 1];
        short[][][] sArr = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, r32, r23, r23);
        this.pub_singular = (short[][]) Array.newInstance((Class<?>) Short.TYPE, r32, r23);
        this.pub_scalar = new short[r32];
        short[] sArr2 = new short[r23];
        int r92 = 0;
        int r10 = 0;
        while (true) {
            Layer[] layerArr = this.layers;
            if (r92 >= layerArr.length) {
                break;
            }
            short[][][] coeffAlpha = layerArr[r92].getCoeffAlpha();
            short[][][] coeffBeta = this.layers[r92].getCoeffBeta();
            short[][] coeffGamma = this.layers[r92].getCoeffGamma();
            short[] coeffEta = this.layers[r92].getCoeffEta();
            int length = coeffAlpha[r52].length;
            int length2 = coeffBeta[r52].length;
            while (r52 < length) {
                for (int r82 = 0; r82 < length; r82++) {
                    int r6 = 0;
                    while (r6 < length2) {
                        int r17 = r32;
                        int r16 = r23;
                        int r18 = r82 + length2;
                        short[] sArrMultVect = computeInField.multVect(coeffAlpha[r52][r82][r6], this.A2[r18]);
                        int r33 = r10 + r52;
                        int r19 = r92;
                        sArr[r33] = computeInField.addSquareMatrix(sArr[r33], computeInField.multVects(sArrMultVect, this.A2[r6]));
                        short[] sArrMultVect2 = computeInField.multVect(this.f12047b2[r6], sArrMultVect);
                        short[][] sArr3 = this.pub_singular;
                        sArr3[r33] = computeInField.addVect(sArrMultVect2, sArr3[r33]);
                        short[] sArrMultVect3 = computeInField.multVect(this.f12047b2[r18], computeInField.multVect(coeffAlpha[r52][r82][r6], this.A2[r6]));
                        short[][] sArr4 = this.pub_singular;
                        sArr4[r33] = computeInField.addVect(sArrMultVect3, sArr4[r33]);
                        short sMultElem = GF2Field.multElem(coeffAlpha[r52][r82][r6], this.f12047b2[r18]);
                        short[] sArr5 = this.pub_scalar;
                        sArr5[r33] = GF2Field.addElem(sArr5[r33], GF2Field.multElem(sMultElem, this.f12047b2[r6]));
                        r6++;
                        r23 = r16;
                        r32 = r17;
                        coeffAlpha = coeffAlpha;
                        r92 = r19;
                        coeffEta = coeffEta;
                    }
                }
                int r162 = r23;
                int r172 = r32;
                int r192 = r92;
                short[][][] sArr6 = coeffAlpha;
                short[] sArr7 = coeffEta;
                for (int r24 = 0; r24 < length2; r24++) {
                    for (int r34 = 0; r34 < length2; r34++) {
                        short[] sArrMultVect4 = computeInField.multVect(coeffBeta[r52][r24][r34], this.A2[r24]);
                        int r83 = r10 + r52;
                        sArr[r83] = computeInField.addSquareMatrix(sArr[r83], computeInField.multVects(sArrMultVect4, this.A2[r34]));
                        short[] sArrMultVect5 = computeInField.multVect(this.f12047b2[r34], sArrMultVect4);
                        short[][] sArr8 = this.pub_singular;
                        sArr8[r83] = computeInField.addVect(sArrMultVect5, sArr8[r83]);
                        short[] sArrMultVect6 = computeInField.multVect(this.f12047b2[r24], computeInField.multVect(coeffBeta[r52][r24][r34], this.A2[r34]));
                        short[][] sArr9 = this.pub_singular;
                        sArr9[r83] = computeInField.addVect(sArrMultVect6, sArr9[r83]);
                        short sMultElem2 = GF2Field.multElem(coeffBeta[r52][r24][r34], this.f12047b2[r24]);
                        short[] sArr10 = this.pub_scalar;
                        sArr10[r83] = GF2Field.addElem(sArr10[r83], GF2Field.multElem(sMultElem2, this.f12047b2[r34]));
                    }
                }
                for (int r25 = 0; r25 < length2 + length; r25++) {
                    short[] sArrMultVect7 = computeInField.multVect(coeffGamma[r52][r25], this.A2[r25]);
                    short[][] sArr11 = this.pub_singular;
                    int r84 = r10 + r52;
                    sArr11[r84] = computeInField.addVect(sArrMultVect7, sArr11[r84]);
                    short[] sArr12 = this.pub_scalar;
                    sArr12[r84] = GF2Field.addElem(sArr12[r84], GF2Field.multElem(coeffGamma[r52][r25], this.f12047b2[r25]));
                }
                short[] sArr13 = this.pub_scalar;
                int r35 = r10 + r52;
                sArr13[r35] = GF2Field.addElem(sArr13[r35], sArr7[r52]);
                r52++;
                r23 = r162;
                r32 = r172;
                coeffAlpha = sArr6;
                r92 = r192;
                coeffEta = sArr7;
            }
            r10 += length;
            r92++;
            r52 = 0;
        }
        int r163 = r23;
        int r173 = r32;
        short[][][] sArr14 = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, r173, r163, r163);
        short[][] sArr15 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, r173, r163);
        short[] sArr16 = new short[r173];
        for (int r85 = 0; r85 < r173; r85++) {
            int r93 = 0;
            while (true) {
                short[][] sArr17 = this.A1;
                if (r93 < sArr17.length) {
                    sArr14[r85] = computeInField.addSquareMatrix(sArr14[r85], computeInField.multMatrix(sArr17[r85][r93], sArr[r93]));
                    sArr15[r85] = computeInField.addVect(sArr15[r85], computeInField.multVect(this.A1[r85][r93], this.pub_singular[r93]));
                    sArr16[r85] = GF2Field.addElem(sArr16[r85], GF2Field.multElem(this.A1[r85][r93], this.pub_scalar[r93]));
                    r93++;
                }
            }
            sArr16[r85] = GF2Field.addElem(sArr16[r85], this.f12046b1[r85]);
        }
        this.pub_singular = sArr15;
        this.pub_scalar = sArr16;
        compactPublicKey(sArr14);
    }

    private void generateF() {
        this.layers = new Layer[this.numOfLayers];
        int r02 = 0;
        while (r02 < this.numOfLayers) {
            Layer[] layerArr = this.layers;
            int[] r32 = this.vi;
            int r52 = r02 + 1;
            layerArr[r02] = new Layer(r32[r02], r32[r52], this.sr);
            r02 = r52;
        }
    }

    private void generateL1() {
        int[] r02 = this.vi;
        int r12 = r02[r02.length - 1] - r02[0];
        this.A1 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, r12, r12);
        this.A1inv = null;
        ComputeInField computeInField = new ComputeInField();
        while (this.A1inv == null) {
            for (int r22 = 0; r22 < r12; r22++) {
                for (int r42 = 0; r42 < r12; r42++) {
                    this.A1[r22][r42] = (short) (this.sr.nextInt() & 255);
                }
            }
            this.A1inv = computeInField.inverse(this.A1);
        }
        this.f12046b1 = new short[r12];
        for (int r32 = 0; r32 < r12; r32++) {
            this.f12046b1[r32] = (short) (this.sr.nextInt() & 255);
        }
    }

    private void generateL2() {
        int[] r02 = this.vi;
        int r03 = r02[r02.length - 1];
        this.A2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, r03, r03);
        this.A2inv = null;
        ComputeInField computeInField = new ComputeInField();
        while (this.A2inv == null) {
            for (int r32 = 0; r32 < r03; r32++) {
                for (int r42 = 0; r42 < r03; r42++) {
                    this.A2[r32][r42] = (short) (this.sr.nextInt() & 255);
                }
            }
            this.A2inv = computeInField.inverse(this.A2);
        }
        this.f12047b2 = new short[r03];
        for (int r22 = 0; r22 < r03; r22++) {
            this.f12047b2[r22] = (short) (this.sr.nextInt() & 255);
        }
    }

    private void initializeDefault() {
        initialize(new RainbowKeyGenerationParameters(CryptoServicesRegistrar.getSecureRandom(), new RainbowParameters()));
    }

    private void keygen() {
        generateL1();
        generateL2();
        generateF();
        computePublicKey();
    }

    public AsymmetricCipherKeyPair genKeyPair() {
        if (!this.initialized) {
            initializeDefault();
        }
        keygen();
        RainbowPrivateKeyParameters rainbowPrivateKeyParameters = new RainbowPrivateKeyParameters(this.A1inv, this.f12046b1, this.A2inv, this.f12047b2, this.vi, this.layers);
        int[] r22 = this.vi;
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new RainbowPublicKeyParameters(r22[r22.length - 1] - r22[0], this.pub_quadratic, this.pub_singular, this.pub_scalar), (AsymmetricKeyParameter) rainbowPrivateKeyParameters);
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        return genKeyPair();
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        initialize(keyGenerationParameters);
    }

    public void initialize(KeyGenerationParameters keyGenerationParameters) {
        RainbowKeyGenerationParameters rainbowKeyGenerationParameters = (RainbowKeyGenerationParameters) keyGenerationParameters;
        this.rainbowParams = rainbowKeyGenerationParameters;
        this.sr = rainbowKeyGenerationParameters.getRandom();
        this.vi = this.rainbowParams.getParameters().getVi();
        this.numOfLayers = this.rainbowParams.getParameters().getNumOfLayers();
        this.initialized = true;
    }
}
