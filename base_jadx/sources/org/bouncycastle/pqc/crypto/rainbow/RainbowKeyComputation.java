package org.bouncycastle.pqc.crypto.rainbow;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class RainbowKeyComputation {

    /* renamed from: cf, reason: collision with root package name */
    ComputeInField f11931cf;
    private short[][][] l1_F1;
    private short[][][] l1_F2;
    private short[][][] l1_Q1;
    private short[][][] l1_Q2;
    private short[][][] l1_Q3;
    private short[][][] l1_Q5;
    private short[][][] l1_Q6;
    private short[][][] l1_Q9;
    private short[][][] l2_F1;
    private short[][][] l2_F2;
    private short[][][] l2_F3;
    private short[][][] l2_F5;
    private short[][][] l2_F6;
    private short[][][] l2_Q1;
    private short[][][] l2_Q2;
    private short[][][] l2_Q3;
    private short[][][] l2_Q5;
    private short[][][] l2_Q6;
    private short[][][] l2_Q9;

    /* renamed from: o1, reason: collision with root package name */
    private int f11932o1;

    /* renamed from: o2, reason: collision with root package name */
    private int f11933o2;
    private byte[] pk_seed;
    private RainbowParameters rainbowParams;
    private SecureRandom random;

    /* renamed from: s1, reason: collision with root package name */
    private short[][] f11934s1;
    private byte[] sk_seed;

    /* renamed from: t1, reason: collision with root package name */
    private short[][] f11935t1;

    /* renamed from: t2, reason: collision with root package name */
    private short[][] f11936t2;

    /* renamed from: t3, reason: collision with root package name */
    private short[][] f11937t3;

    /* renamed from: t4, reason: collision with root package name */
    private short[][] f11938t4;

    /* renamed from: v1, reason: collision with root package name */
    private int f11939v1;
    private Version version;

    public RainbowKeyComputation(RainbowParameters rainbowParameters, SecureRandom secureRandom) {
        this.f11931cf = new ComputeInField();
        this.rainbowParams = rainbowParameters;
        this.random = secureRandom;
        this.version = rainbowParameters.getVersion();
        this.f11939v1 = this.rainbowParams.getV1();
        this.f11932o1 = this.rainbowParams.getO1();
        this.f11933o2 = this.rainbowParams.getO2();
    }

    public RainbowKeyComputation(RainbowParameters rainbowParameters, byte[] bArr, byte[] bArr2) {
        this.f11931cf = new ComputeInField();
        this.rainbowParams = rainbowParameters;
        this.random = null;
        this.version = rainbowParameters.getVersion();
        this.pk_seed = bArr;
        this.sk_seed = bArr2;
        this.f11939v1 = this.rainbowParams.getV1();
        this.f11932o1 = this.rainbowParams.getO1();
        this.f11933o2 = this.rainbowParams.getO2();
    }

    private void calculate_F_from_Q() throws RuntimeException {
        this.l1_F1 = RainbowUtil.cloneArray(this.l1_Q1);
        this.l1_F2 = new short[this.f11932o1][][];
        for (int r12 = 0; r12 < this.f11932o1; r12++) {
            this.l1_F2[r12] = this.f11931cf.addMatrixTranspose(this.l1_Q1[r12]);
            short[][][] sArr = this.l1_F2;
            sArr[r12] = this.f11931cf.multiplyMatrix(sArr[r12], this.f11935t1);
            short[][][] sArr2 = this.l1_F2;
            sArr2[r12] = this.f11931cf.addMatrix(sArr2[r12], this.l1_Q2[r12]);
        }
        int r13 = this.f11933o2;
        this.l2_F2 = new short[r13][][];
        this.l2_F3 = new short[r13][][];
        this.l2_F5 = new short[r13][][];
        this.l2_F6 = new short[r13][][];
        this.l2_F1 = RainbowUtil.cloneArray(this.l2_Q1);
        for (int r02 = 0; r02 < this.f11933o2; r02++) {
            short[][] sArrAddMatrixTranspose = this.f11931cf.addMatrixTranspose(this.l2_Q1[r02]);
            this.l2_F2[r02] = this.f11931cf.multiplyMatrix(sArrAddMatrixTranspose, this.f11935t1);
            short[][][] sArr3 = this.l2_F2;
            sArr3[r02] = this.f11931cf.addMatrix(sArr3[r02], this.l2_Q2[r02]);
            this.l2_F3[r02] = this.f11931cf.multiplyMatrix(sArrAddMatrixTranspose, this.f11938t4);
            short[][] sArrMultiplyMatrix = this.f11931cf.multiplyMatrix(this.l2_Q2[r02], this.f11937t3);
            short[][][] sArr4 = this.l2_F3;
            sArr4[r02] = this.f11931cf.addMatrix(sArr4[r02], sArrMultiplyMatrix);
            short[][][] sArr5 = this.l2_F3;
            sArr5[r02] = this.f11931cf.addMatrix(sArr5[r02], this.l2_Q3[r02]);
            short[][] sArrAddMatrix = this.f11931cf.addMatrix(this.f11931cf.multiplyMatrix(this.l2_Q1[r02], this.f11935t1), this.l2_Q2[r02]);
            short[][] sArrTranspose = this.f11931cf.transpose(this.f11935t1);
            this.l2_F5[r02] = this.f11931cf.multiplyMatrix(sArrTranspose, sArrAddMatrix);
            short[][][] sArr6 = this.l2_F5;
            sArr6[r02] = this.f11931cf.addMatrix(sArr6[r02], this.l2_Q5[r02]);
            short[][][] sArr7 = this.l2_F5;
            sArr7[r02] = this.f11931cf.to_UT(sArr7[r02]);
            this.l2_F6[r02] = this.f11931cf.multiplyMatrix(sArrTranspose, this.l2_F3[r02]);
            ComputeInField computeInField = this.f11931cf;
            short[][] sArrMultiplyMatrix2 = computeInField.multiplyMatrix(computeInField.transpose(this.l2_Q2[r02]), this.f11938t4);
            short[][][] sArr8 = this.l2_F6;
            sArr8[r02] = this.f11931cf.addMatrix(sArr8[r02], sArrMultiplyMatrix2);
            short[][] sArrMultiplyMatrix3 = this.f11931cf.multiplyMatrix(this.f11931cf.addMatrixTranspose(this.l2_Q5[r02]), this.f11937t3);
            short[][][] sArr9 = this.l2_F6;
            sArr9[r02] = this.f11931cf.addMatrix(sArr9[r02], sArrMultiplyMatrix3);
            short[][][] sArr10 = this.l2_F6;
            sArr10[r02] = this.f11931cf.addMatrix(sArr10[r02], this.l2_Q6[r02]);
        }
    }

    private void calculate_Q_from_F() throws RuntimeException {
        short[][] sArrTranspose = this.f11931cf.transpose(this.f11935t1);
        short[][] sArrTranspose2 = this.f11931cf.transpose(this.f11936t2);
        this.l1_Q1 = RainbowUtil.cloneArray(this.l1_F1);
        this.l1_Q2 = new short[this.f11932o1][][];
        for (int r32 = 0; r32 < this.f11932o1; r32++) {
            this.l1_Q2[r32] = this.f11931cf.addMatrixTranspose(this.l1_F1[r32]);
            short[][][] sArr = this.l1_Q2;
            sArr[r32] = this.f11931cf.multiplyMatrix(sArr[r32], this.f11935t1);
            short[][][] sArr2 = this.l1_Q2;
            sArr2[r32] = this.f11931cf.addMatrix(sArr2[r32], this.l1_F2[r32]);
        }
        calculate_l1_Q3569(sArrTranspose, sArrTranspose2);
        int r33 = this.f11933o2;
        this.l2_Q2 = new short[r33][][];
        this.l2_Q3 = new short[r33][][];
        this.l2_Q5 = new short[r33][][];
        this.l2_Q6 = new short[r33][][];
        this.l2_Q1 = RainbowUtil.cloneArray(this.l2_F1);
        for (int r22 = 0; r22 < this.f11933o2; r22++) {
            short[][] sArrAddMatrixTranspose = this.f11931cf.addMatrixTranspose(this.l2_F1[r22]);
            this.l2_Q2[r22] = this.f11931cf.multiplyMatrix(sArrAddMatrixTranspose, this.f11935t1);
            short[][][] sArr3 = this.l2_Q2;
            sArr3[r22] = this.f11931cf.addMatrix(sArr3[r22], this.l2_F2[r22]);
            this.l2_Q3[r22] = this.f11931cf.multiplyMatrix(sArrAddMatrixTranspose, this.f11936t2);
            short[][] sArrMultiplyMatrix = this.f11931cf.multiplyMatrix(this.l2_F2[r22], this.f11937t3);
            short[][][] sArr4 = this.l2_Q3;
            sArr4[r22] = this.f11931cf.addMatrix(sArr4[r22], sArrMultiplyMatrix);
            short[][][] sArr5 = this.l2_Q3;
            sArr5[r22] = this.f11931cf.addMatrix(sArr5[r22], this.l2_F3[r22]);
            this.l2_Q5[r22] = this.f11931cf.multiplyMatrix(sArrTranspose, this.f11931cf.addMatrix(this.f11931cf.multiplyMatrix(this.l2_F1[r22], this.f11935t1), this.l2_F2[r22]));
            short[][][] sArr6 = this.l2_Q5;
            sArr6[r22] = this.f11931cf.addMatrix(sArr6[r22], this.l2_F5[r22]);
            short[][][] sArr7 = this.l2_Q5;
            sArr7[r22] = this.f11931cf.to_UT(sArr7[r22]);
            this.l2_Q6[r22] = this.f11931cf.multiplyMatrix(sArrTranspose, this.l2_Q3[r22]);
            ComputeInField computeInField = this.f11931cf;
            short[][] sArrMultiplyMatrix2 = computeInField.multiplyMatrix(computeInField.transpose(this.l2_F2[r22]), this.f11936t2);
            short[][][] sArr8 = this.l2_Q6;
            sArr8[r22] = this.f11931cf.addMatrix(sArr8[r22], sArrMultiplyMatrix2);
            short[][] sArrMultiplyMatrix3 = this.f11931cf.multiplyMatrix(this.f11931cf.addMatrixTranspose(this.l2_F5[r22]), this.f11937t3);
            short[][][] sArr9 = this.l2_Q6;
            sArr9[r22] = this.f11931cf.addMatrix(sArr9[r22], sArrMultiplyMatrix3);
            short[][][] sArr10 = this.l2_Q6;
            sArr10[r22] = this.f11931cf.addMatrix(sArr10[r22], this.l2_F6[r22]);
        }
        calculate_l2_Q9(sArrTranspose2);
    }

    private void calculate_Q_from_F_cyclic() throws RuntimeException {
        short[][] sArrTranspose = this.f11931cf.transpose(this.f11935t1);
        short[][] sArrTranspose2 = this.f11931cf.transpose(this.f11936t2);
        calculate_l1_Q3569(sArrTranspose, sArrTranspose2);
        calculate_l2_Q9(sArrTranspose2);
    }

    private void calculate_l1_Q3569(short[][] sArr, short[][] sArr2) throws RuntimeException {
        int r02 = this.f11932o1;
        this.l1_Q3 = new short[r02][][];
        this.l1_Q5 = new short[r02][][];
        this.l1_Q6 = new short[r02][][];
        this.l1_Q9 = new short[r02][][];
        for (int r03 = 0; r03 < this.f11932o1; r03++) {
            short[][] sArrMultiplyMatrix = this.f11931cf.multiplyMatrix(this.l1_F2[r03], this.f11937t3);
            this.l1_Q3[r03] = this.f11931cf.addMatrixTranspose(this.l1_F1[r03]);
            short[][][] sArr3 = this.l1_Q3;
            sArr3[r03] = this.f11931cf.multiplyMatrix(sArr3[r03], this.f11936t2);
            short[][][] sArr4 = this.l1_Q3;
            sArr4[r03] = this.f11931cf.addMatrix(sArr4[r03], sArrMultiplyMatrix);
            this.l1_Q5[r03] = this.f11931cf.multiplyMatrix(this.l1_F1[r03], this.f11935t1);
            short[][][] sArr5 = this.l1_Q5;
            sArr5[r03] = this.f11931cf.addMatrix(sArr5[r03], this.l1_F2[r03]);
            short[][][] sArr6 = this.l1_Q5;
            sArr6[r03] = this.f11931cf.multiplyMatrix(sArr, sArr6[r03]);
            short[][][] sArr7 = this.l1_Q5;
            sArr7[r03] = this.f11931cf.to_UT(sArr7[r03]);
            ComputeInField computeInField = this.f11931cf;
            short[][] sArrMultiplyMatrix2 = computeInField.multiplyMatrix(computeInField.transpose(this.l1_F2[r03]), this.f11936t2);
            this.l1_Q6[r03] = this.f11931cf.multiplyMatrix(sArr, this.l1_Q3[r03]);
            short[][][] sArr8 = this.l1_Q6;
            sArr8[r03] = this.f11931cf.addMatrix(sArr8[r03], sArrMultiplyMatrix2);
            this.l1_Q9[r03] = this.f11931cf.addMatrix(this.f11931cf.multiplyMatrix(this.l1_F1[r03], this.f11936t2), sArrMultiplyMatrix);
            short[][][] sArr9 = this.l1_Q9;
            sArr9[r03] = this.f11931cf.multiplyMatrix(sArr2, sArr9[r03]);
            short[][][] sArr10 = this.l1_Q9;
            sArr10[r03] = this.f11931cf.to_UT(sArr10[r03]);
        }
    }

    private void calculate_l2_Q9(short[][] sArr) throws RuntimeException {
        this.l2_Q9 = new short[this.f11933o2][][];
        for (int r02 = 0; r02 < this.f11933o2; r02++) {
            this.l2_Q9[r02] = this.f11931cf.multiplyMatrix(this.l2_F1[r02], this.f11936t2);
            short[][] sArrMultiplyMatrix = this.f11931cf.multiplyMatrix(this.l2_F2[r02], this.f11937t3);
            short[][][] sArr2 = this.l2_Q9;
            sArr2[r02] = this.f11931cf.addMatrix(sArr2[r02], sArrMultiplyMatrix);
            short[][][] sArr3 = this.l2_Q9;
            sArr3[r02] = this.f11931cf.addMatrix(sArr3[r02], this.l2_F3[r02]);
            short[][][] sArr4 = this.l2_Q9;
            sArr4[r02] = this.f11931cf.multiplyMatrix(sArr, sArr4[r02]);
            short[][] sArrAddMatrix = this.f11931cf.addMatrix(this.f11931cf.multiplyMatrix(this.l2_F5[r02], this.f11937t3), this.l2_F6[r02]);
            ComputeInField computeInField = this.f11931cf;
            short[][] sArrMultiplyMatrix2 = computeInField.multiplyMatrix(computeInField.transpose(this.f11937t3), sArrAddMatrix);
            short[][][] sArr5 = this.l2_Q9;
            sArr5[r02] = this.f11931cf.addMatrix(sArr5[r02], sArrMultiplyMatrix2);
            short[][][] sArr6 = this.l2_Q9;
            sArr6[r02] = this.f11931cf.to_UT(sArr6[r02]);
        }
    }

    private void calculate_t4() throws RuntimeException {
        this.f11938t4 = this.f11931cf.addMatrix(this.f11931cf.multiplyMatrix(this.f11935t1, this.f11937t3), this.f11936t2);
    }

    private void genKeyMaterial() throws RuntimeException {
        byte[] bArr = new byte[this.rainbowParams.getLen_skseed()];
        this.sk_seed = bArr;
        this.random.nextBytes(bArr);
        RainbowDRBG rainbowDRBG = new RainbowDRBG(this.sk_seed, this.rainbowParams.getHash_algo());
        generate_S_and_T(rainbowDRBG);
        int r12 = this.f11932o1;
        int r22 = this.f11939v1;
        this.l1_F1 = RainbowUtil.generate_random(rainbowDRBG, r12, r22, r22, true);
        int r13 = this.f11932o1;
        this.l1_F2 = RainbowUtil.generate_random(rainbowDRBG, r13, this.f11939v1, r13, false);
        int r14 = this.f11933o2;
        int r23 = this.f11939v1;
        this.l2_F1 = RainbowUtil.generate_random(rainbowDRBG, r14, r23, r23, true);
        this.l2_F2 = RainbowUtil.generate_random(rainbowDRBG, this.f11933o2, this.f11939v1, this.f11932o1, false);
        int r15 = this.f11933o2;
        this.l2_F3 = RainbowUtil.generate_random(rainbowDRBG, r15, this.f11939v1, r15, false);
        int r16 = this.f11933o2;
        int r24 = this.f11932o1;
        this.l2_F5 = RainbowUtil.generate_random(rainbowDRBG, r16, r24, r24, true);
        int r17 = this.f11933o2;
        this.l2_F6 = RainbowUtil.generate_random(rainbowDRBG, r17, this.f11932o1, r17, false);
        calculate_Q_from_F();
        calculate_t4();
        this.l1_Q1 = this.f11931cf.obfuscate_l1_polys(this.f11934s1, this.l2_Q1, this.l1_Q1);
        this.l1_Q2 = this.f11931cf.obfuscate_l1_polys(this.f11934s1, this.l2_Q2, this.l1_Q2);
        this.l1_Q3 = this.f11931cf.obfuscate_l1_polys(this.f11934s1, this.l2_Q3, this.l1_Q3);
        this.l1_Q5 = this.f11931cf.obfuscate_l1_polys(this.f11934s1, this.l2_Q5, this.l1_Q5);
        this.l1_Q6 = this.f11931cf.obfuscate_l1_polys(this.f11934s1, this.l2_Q6, this.l1_Q6);
        this.l1_Q9 = this.f11931cf.obfuscate_l1_polys(this.f11934s1, this.l2_Q9, this.l1_Q9);
    }

    private void genKeyMaterial_cyclic() throws RuntimeException {
        byte[] bArr = new byte[this.rainbowParams.getLen_skseed()];
        this.sk_seed = bArr;
        this.random.nextBytes(bArr);
        byte[] bArr2 = new byte[this.rainbowParams.getLen_pkseed()];
        this.pk_seed = bArr2;
        this.random.nextBytes(bArr2);
        genPrivateKeyMaterial_cyclic();
        calculate_Q_from_F_cyclic();
        this.l1_Q3 = this.f11931cf.obfuscate_l1_polys(this.f11934s1, this.l2_Q3, this.l1_Q3);
        this.l1_Q5 = this.f11931cf.obfuscate_l1_polys(this.f11934s1, this.l2_Q5, this.l1_Q5);
        this.l1_Q6 = this.f11931cf.obfuscate_l1_polys(this.f11934s1, this.l2_Q6, this.l1_Q6);
        this.l1_Q9 = this.f11931cf.obfuscate_l1_polys(this.f11934s1, this.l2_Q9, this.l1_Q9);
    }

    private void genPrivateKeyMaterial_cyclic() throws RuntimeException {
        RainbowDRBG rainbowDRBG = new RainbowDRBG(this.sk_seed, this.rainbowParams.getHash_algo());
        RainbowDRBG rainbowDRBG2 = new RainbowDRBG(this.pk_seed, this.rainbowParams.getHash_algo());
        generate_S_and_T(rainbowDRBG);
        calculate_t4();
        generate_B1_and_B2(rainbowDRBG2);
        this.l1_Q1 = this.f11931cf.obfuscate_l1_polys(this.f11934s1, this.l2_Q1, this.l1_Q1);
        this.l1_Q2 = this.f11931cf.obfuscate_l1_polys(this.f11934s1, this.l2_Q2, this.l1_Q2);
        calculate_F_from_Q();
    }

    private void generate_B1_and_B2(SecureRandom secureRandom) {
        int r02 = this.f11932o1;
        int r12 = this.f11939v1;
        this.l1_Q1 = RainbowUtil.generate_random(secureRandom, r02, r12, r12, true);
        int r03 = this.f11932o1;
        this.l1_Q2 = RainbowUtil.generate_random(secureRandom, r03, this.f11939v1, r03, false);
        int r04 = this.f11933o2;
        int r13 = this.f11939v1;
        this.l2_Q1 = RainbowUtil.generate_random(secureRandom, r04, r13, r13, true);
        this.l2_Q2 = RainbowUtil.generate_random(secureRandom, this.f11933o2, this.f11939v1, this.f11932o1, false);
        int r05 = this.f11933o2;
        this.l2_Q3 = RainbowUtil.generate_random(secureRandom, r05, this.f11939v1, r05, false);
        int r06 = this.f11933o2;
        int r14 = this.f11932o1;
        this.l2_Q5 = RainbowUtil.generate_random(secureRandom, r06, r14, r14, true);
        int r07 = this.f11933o2;
        this.l2_Q6 = RainbowUtil.generate_random(secureRandom, r07, this.f11932o1, r07, false);
    }

    private void generate_S_and_T(SecureRandom secureRandom) {
        this.f11934s1 = RainbowUtil.generate_random_2d(secureRandom, this.f11932o1, this.f11933o2);
        this.f11935t1 = RainbowUtil.generate_random_2d(secureRandom, this.f11939v1, this.f11932o1);
        this.f11936t2 = RainbowUtil.generate_random_2d(secureRandom, this.f11939v1, this.f11933o2);
        this.f11937t3 = RainbowUtil.generate_random_2d(secureRandom, this.f11932o1, this.f11933o2);
    }

    public AsymmetricCipherKeyPair genKeyPairCircumzenithal() throws RuntimeException {
        genKeyMaterial_cyclic();
        RainbowPublicKeyParameters rainbowPublicKeyParameters = new RainbowPublicKeyParameters(this.rainbowParams, this.pk_seed, this.l1_Q3, this.l1_Q5, this.l1_Q6, this.l1_Q9, this.l2_Q9);
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) rainbowPublicKeyParameters, (AsymmetricKeyParameter) new RainbowPrivateKeyParameters(this.rainbowParams, this.sk_seed, this.f11934s1, this.f11935t1, this.f11937t3, this.f11938t4, this.l1_F1, this.l1_F2, this.l2_F1, this.l2_F2, this.l2_F3, this.l2_F5, this.l2_F6, rainbowPublicKeyParameters.getEncoded()));
    }

    public AsymmetricCipherKeyPair genKeyPairClassical() throws RuntimeException {
        genKeyMaterial();
        RainbowPublicKeyParameters rainbowPublicKeyParameters = new RainbowPublicKeyParameters(this.rainbowParams, this.l1_Q1, this.l1_Q2, this.l1_Q3, this.l1_Q5, this.l1_Q6, this.l1_Q9, this.l2_Q1, this.l2_Q2, this.l2_Q3, this.l2_Q5, this.l2_Q6, this.l2_Q9);
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) rainbowPublicKeyParameters, (AsymmetricKeyParameter) new RainbowPrivateKeyParameters(this.rainbowParams, this.sk_seed, this.f11934s1, this.f11935t1, this.f11937t3, this.f11938t4, this.l1_F1, this.l1_F2, this.l2_F1, this.l2_F2, this.l2_F3, this.l2_F5, this.l2_F6, rainbowPublicKeyParameters.getEncoded()));
    }

    public AsymmetricCipherKeyPair genKeyPairCompressed() throws RuntimeException {
        genKeyMaterial_cyclic();
        RainbowPublicKeyParameters rainbowPublicKeyParameters = new RainbowPublicKeyParameters(this.rainbowParams, this.pk_seed, this.l1_Q3, this.l1_Q5, this.l1_Q6, this.l1_Q9, this.l2_Q9);
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) rainbowPublicKeyParameters, (AsymmetricKeyParameter) new RainbowPrivateKeyParameters(this.rainbowParams, this.pk_seed, this.sk_seed, rainbowPublicKeyParameters.getEncoded()));
    }

    public RainbowPrivateKeyParameters generatePrivateKey() {
        this.sk_seed = Arrays.clone(this.sk_seed);
        this.pk_seed = Arrays.clone(this.pk_seed);
        genPrivateKeyMaterial_cyclic();
        return new RainbowPrivateKeyParameters(this.rainbowParams, this.sk_seed, this.f11934s1, this.f11935t1, this.f11937t3, this.f11938t4, this.l1_F1, this.l1_F2, this.l2_F1, this.l2_F2, this.l2_F3, this.l2_F5, this.l2_F6, null);
    }
}
