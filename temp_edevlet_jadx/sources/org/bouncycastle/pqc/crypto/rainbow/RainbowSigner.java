package org.bouncycastle.pqc.crypto.rainbow;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class RainbowSigner implements MessageSigner {
    private static final int MAXITS = 65536;

    /* renamed from: cf, reason: collision with root package name */
    private ComputeInField f11951cf = new ComputeInField();
    private Digest hashAlgo;
    private RainbowKeyParameters key;
    private SecureRandom random;
    int signableDocumentLength;
    private Version version;

    /* renamed from: org.bouncycastle.pqc.crypto.rainbow.RainbowSigner$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version;

        static {
            int[] r02 = new int[Version.values().length];
            $SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version = r02;
            try {
                r02[Version.CLASSIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version[Version.CIRCUMZENITHAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version[Version.COMPRESSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private byte[] genSignature(byte[] bArr) throws RuntimeException {
        short[][] sArr;
        byte[] bArr2;
        byte[] bArr3 = new byte[this.hashAlgo.getDigestSize()];
        this.hashAlgo.update(bArr, 0, bArr.length);
        this.hashAlgo.doFinal(bArr3, 0);
        int v12 = this.key.getParameters().getV1();
        int o12 = this.key.getParameters().getO1();
        int o22 = this.key.getParameters().getO2();
        int m10 = this.key.getParameters().getM();
        int n10 = this.key.getParameters().getN();
        RainbowPrivateKeyParameters rainbowPrivateKeyParameters = (RainbowPrivateKeyParameters) this.key;
        Digest digest = this.hashAlgo;
        this.random = new RainbowDRBG(RainbowUtil.hash(digest, rainbowPrivateKeyParameters.sk_seed, bArr3, new byte[digest.getDigestSize()]), rainbowPrivateKeyParameters.getParameters().getHash_algo());
        short[] sArr2 = new short[v12];
        short[] sArr3 = new short[o12];
        short[] sArr4 = new short[o22];
        short[][] sArr5 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, o22, o12);
        short[][] sArr6 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, o22, o22);
        byte[] bArr4 = new byte[rainbowPrivateKeyParameters.getParameters().getLen_salt()];
        short[] sArr7 = new short[o12];
        short[] sArr8 = null;
        short[] sArr9 = new short[o22];
        short[] sArr10 = new short[m10];
        short[][] sArrInverse = null;
        int r72 = 0;
        while (sArrInverse == null && r72 < 65536) {
            byte[] bArr5 = new byte[v12];
            this.random.nextBytes(bArr5);
            int r13 = 0;
            while (true) {
                bArr2 = bArr3;
                if (r13 >= v12) {
                    break;
                }
                sArr2[r13] = (short) (bArr5[r13] & 255);
                r13++;
                bArr3 = bArr2;
            }
            short[][] sArr11 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, o12, o12);
            for (int r12 = 0; r12 < v12; r12++) {
                int r132 = 0;
                while (r132 < o12) {
                    byte[] bArr6 = bArr4;
                    int r15 = 0;
                    while (r15 < o12) {
                        int r24 = m10;
                        short[][] sArr12 = sArr6;
                        short sMultElem = GF2Field.multElem(rainbowPrivateKeyParameters.l1_F2[r132][r12][r15], sArr2[r12]);
                        short[] sArr13 = sArr11[r132];
                        sArr13[r15] = GF2Field.addElem(sArr13[r15], sMultElem);
                        r15++;
                        m10 = r24;
                        sArr6 = sArr12;
                        sArr5 = sArr5;
                    }
                    r132++;
                    bArr4 = bArr6;
                }
            }
            sArrInverse = this.f11951cf.inverse(sArr11);
            r72++;
            bArr3 = bArr2;
            sArr5 = sArr5;
        }
        byte[] bArr7 = bArr3;
        short[][] sArr14 = sArr5;
        int r242 = m10;
        short[][] sArr15 = sArr6;
        byte[] bArr8 = bArr4;
        for (int r22 = 0; r22 < o12; r22++) {
            sArr3[r22] = this.f11951cf.multiplyMatrix_quad(rainbowPrivateKeyParameters.l1_F1[r22], sArr2);
        }
        for (int r23 = 0; r23 < v12; r23++) {
            for (int r52 = 0; r52 < o22; r52++) {
                sArr4[r52] = this.f11951cf.multiplyMatrix_quad(rainbowPrivateKeyParameters.l2_F1[r52], sArr2);
                for (int r6 = 0; r6 < o12; r6++) {
                    short sMultElem2 = GF2Field.multElem(rainbowPrivateKeyParameters.l2_F2[r52][r23][r6], sArr2[r23]);
                    short[] sArr16 = sArr14[r52];
                    sArr16[r6] = GF2Field.addElem(sArr16[r6], sMultElem2);
                }
                for (int r62 = 0; r62 < o22; r62++) {
                    short sMultElem3 = GF2Field.multElem(rainbowPrivateKeyParameters.l2_F3[r52][r23][r62], sArr2[r23]);
                    short[] sArr17 = sArr15[r52];
                    sArr17[r62] = GF2Field.addElem(sArr17[r62], sMultElem3);
                }
            }
        }
        int r25 = r242;
        byte[] bArr9 = new byte[r25];
        short[] sArr18 = sArr7;
        while (sArr8 == null && r72 < 65536) {
            short[][] sArr19 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, o22, o22);
            this.random.nextBytes(bArr8);
            short[] sArrMakeMessageRepresentative = makeMessageRepresentative(RainbowUtil.hash(this.hashAlgo, bArr7, bArr8, bArr9));
            byte[] bArr10 = bArr9;
            short[] sArr20 = sArr10;
            System.arraycopy(this.f11951cf.addVect(Arrays.copyOf(sArrMakeMessageRepresentative, o12), this.f11951cf.multiplyMatrix(rainbowPrivateKeyParameters.f11946s1, Arrays.copyOfRange(sArrMakeMessageRepresentative, o12, r25))), 0, sArr20, 0, o12);
            System.arraycopy(sArrMakeMessageRepresentative, o12, sArr20, o12, o22);
            short[] sArrMultiplyMatrix = this.f11951cf.multiplyMatrix(sArrInverse, this.f11951cf.addVect(sArr3, Arrays.copyOf(sArr20, o12)));
            short[][] sArr21 = sArr14;
            short[] sArrMultiplyMatrix2 = this.f11951cf.multiplyMatrix(sArr21, sArrMultiplyMatrix);
            short[] sArr22 = sArr3;
            int r10 = 0;
            while (true) {
                sArr = sArrInverse;
                if (r10 >= o22) {
                    break;
                }
                sArr9[r10] = this.f11951cf.multiplyMatrix_quad(rainbowPrivateKeyParameters.l2_F5[r10], sArrMultiplyMatrix);
                r10++;
                sArrInverse = sArr;
                sArr21 = sArr21;
            }
            sArr14 = sArr21;
            short[] sArr23 = sArr9;
            short[] sArrAddVect = this.f11951cf.addVect(this.f11951cf.addVect(this.f11951cf.addVect(sArrMultiplyMatrix2, sArr23), sArr4), Arrays.copyOfRange(sArr20, o12, r25));
            for (int r14 = 0; r14 < o12; r14++) {
                int r152 = 0;
                while (true) {
                    int r20 = r25;
                    if (r152 < o22) {
                        int r26 = 0;
                        while (r26 < o22) {
                            short[] sArr24 = sArr4;
                            short[] sArr25 = sArr23;
                            short sMultElem4 = GF2Field.multElem(rainbowPrivateKeyParameters.l2_F6[r152][r14][r26], sArrMultiplyMatrix[r14]);
                            short[] sArr26 = sArr19[r152];
                            sArr26[r26] = GF2Field.addElem(sArr26[r26], sMultElem4);
                            r26++;
                            sArrMultiplyMatrix = sArrMultiplyMatrix;
                            sArr4 = sArr24;
                            sArr23 = sArr25;
                        }
                        r152++;
                        r25 = r20;
                    }
                }
            }
            int r202 = r25;
            short[] sArr27 = sArr23;
            short[] sArrSolveEquation = this.f11951cf.solveEquation(this.f11951cf.addMatrix(sArr19, sArr15), sArrAddVect);
            r72++;
            sArr18 = sArrMultiplyMatrix;
            bArr9 = bArr10;
            sArr3 = sArr22;
            sArrInverse = sArr;
            sArr8 = sArrSolveEquation;
            sArr10 = sArr20;
            r25 = r202;
            sArr9 = sArr27;
        }
        short[] sArr28 = sArr8 == null ? new short[o22] : sArr8;
        short[] sArrAddVect2 = this.f11951cf.addVect(this.f11951cf.addVect(sArr2, this.f11951cf.multiplyMatrix(rainbowPrivateKeyParameters.f11947t1, sArr18)), this.f11951cf.multiplyMatrix(rainbowPrivateKeyParameters.f11949t4, sArr28));
        short[] sArrAddVect3 = this.f11951cf.addVect(sArr18, this.f11951cf.multiplyMatrix(rainbowPrivateKeyParameters.f11948t3, sArr28));
        short[] sArrCopyOf = Arrays.copyOf(sArrAddVect2, n10);
        System.arraycopy(sArrAddVect3, 0, sArrCopyOf, v12, o12);
        System.arraycopy(sArr28, 0, sArrCopyOf, o12 + v12, o22);
        if (r72 != 65536) {
            return Arrays.concatenate(RainbowUtil.convertArray(sArrCopyOf), bArr8);
        }
        throw new IllegalStateException("unable to generate signature - LES not solvable");
    }

    private short[] makeMessageRepresentative(byte[] bArr) {
        int r02 = this.signableDocumentLength;
        short[] sArr = new short[r02];
        int r22 = 0;
        int r32 = 0;
        while (r22 < bArr.length) {
            sArr[r22] = (short) (bArr[r32] & 255);
            r32++;
            r22++;
            if (r22 >= r02) {
                break;
            }
        }
        return sArr;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        return genSignature(bArr);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z10, CipherParameters cipherParameters) {
        RainbowKeyParameters rainbowKeyParameters;
        if (z10) {
            if (cipherParameters instanceof ParametersWithRandom) {
                ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
                this.random = parametersWithRandom.getRandom();
                rainbowKeyParameters = (RainbowKeyParameters) parametersWithRandom.getParameters();
            } else {
                rainbowKeyParameters = (RainbowKeyParameters) cipherParameters;
                SecureRandom secureRandom = CryptoServicesRegistrar.getSecureRandom();
                byte[] bArr = new byte[rainbowKeyParameters.getParameters().getLen_skseed()];
                secureRandom.nextBytes(bArr);
                this.random = new RainbowDRBG(bArr, rainbowKeyParameters.getParameters().getHash_algo());
            }
            this.version = rainbowKeyParameters.getParameters().getVersion();
            this.key = rainbowKeyParameters;
        } else {
            RainbowKeyParameters rainbowKeyParameters2 = (RainbowKeyParameters) cipherParameters;
            this.key = rainbowKeyParameters2;
            this.version = rainbowKeyParameters2.getParameters().getVersion();
        }
        this.signableDocumentLength = this.key.getDocLength();
        this.hashAlgo = this.key.getParameters().getHash_algo();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        short[] sArrPublicMap;
        byte[] bArr3 = new byte[this.hashAlgo.getDigestSize()];
        this.hashAlgo.update(bArr, 0, bArr.length);
        this.hashAlgo.doFinal(bArr3, 0);
        int m10 = this.key.getParameters().getM();
        int n10 = this.key.getParameters().getN();
        RainbowPublicMap rainbowPublicMap = new RainbowPublicMap(this.key.getParameters());
        short[] sArrMakeMessageRepresentative = makeMessageRepresentative(RainbowUtil.hash(this.hashAlgo, bArr3, Arrays.copyOfRange(bArr2, n10, bArr2.length), new byte[m10]));
        short[] sArrConvertArray = RainbowUtil.convertArray(Arrays.copyOfRange(bArr2, 0, n10));
        int r02 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version[this.version.ordinal()];
        if (r02 == 1) {
            sArrPublicMap = rainbowPublicMap.publicMap((RainbowPublicKeyParameters) this.key, sArrConvertArray);
        } else {
            if (r02 != 2 && r02 != 3) {
                throw new IllegalArgumentException("No valid version. Please choose one of the following: classic, circumzenithal, compressed");
            }
            sArrPublicMap = rainbowPublicMap.publicMap_cyclic((RainbowPublicKeyParameters) this.key, sArrConvertArray);
        }
        return RainbowUtil.equals(sArrMakeMessageRepresentative, sArrPublicMap);
    }
}
