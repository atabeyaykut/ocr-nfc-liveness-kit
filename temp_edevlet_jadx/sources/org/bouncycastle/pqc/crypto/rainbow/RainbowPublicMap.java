package org.bouncycastle.pqc.crypto.rainbow;

import java.lang.reflect.Array;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class RainbowPublicMap {
    private RainbowParameters params;
    private final int num_gf_elements = 256;

    /* renamed from: cf, reason: collision with root package name */
    private ComputeInField f11950cf = new ComputeInField();

    public RainbowPublicMap(RainbowParameters rainbowParameters) {
        this.params = rainbowParameters;
    }

    private short[] add_and_reduce(short[][] sArr) {
        int m10 = this.params.getM();
        short[] sArrAddVect = new short[m10];
        for (int r32 = 0; r32 < 8; r32++) {
            int r42 = (int) Math.pow(2.0d, r32);
            short[] sArrAddVect2 = new short[m10];
            for (int r6 = r42; r6 < 256; r6 += r42 * 2) {
                for (int r72 = 0; r72 < r42; r72++) {
                    sArrAddVect2 = this.f11950cf.addVect(sArrAddVect2, sArr[r6 + r72]);
                }
            }
            ComputeInField computeInField = this.f11950cf;
            sArrAddVect = computeInField.addVect(sArrAddVect, computeInField.multVect((short) r42, sArrAddVect2));
        }
        return sArrAddVect;
    }

    private short[][] compute_accumulator(short[] sArr, short[] sArr2, short[][][] sArr3, int r12) {
        short[][] sArr4 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 256, r12);
        int length = sArr2.length;
        short[][] sArr5 = sArr3[0];
        if (length != sArr5.length || sArr.length != sArr5[0].length || sArr3.length != r12) {
            throw new RuntimeException("Accumulator calculation not possible!");
        }
        for (int r122 = 0; r122 < sArr2.length; r122++) {
            short[] sArrMultVect = this.f11950cf.multVect(sArr2[r122], sArr);
            for (int r32 = 0; r32 < sArr.length; r32++) {
                for (int r42 = 0; r42 < sArr3.length; r42++) {
                    short s7 = sArrMultVect[r32];
                    if (s7 != 0) {
                        short[] sArr6 = sArr4[s7];
                        sArr6[r42] = GF2Field.addElem(sArr6[r42], sArr3[r42][r122][r32]);
                    }
                }
            }
        }
        return sArr4;
    }

    public short[] publicMap(RainbowPublicKeyParameters rainbowPublicKeyParameters, short[] sArr) {
        return add_and_reduce(compute_accumulator(sArr, sArr, rainbowPublicKeyParameters.pk, this.params.getM()));
    }

    public short[] publicMap_cyclic(RainbowPublicKeyParameters rainbowPublicKeyParameters, short[] sArr) {
        int v12 = this.params.getV1();
        int o12 = this.params.getO1();
        int o22 = this.params.getO2();
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 256, o12 + o22);
        short[] sArrCopyOfRange = Arrays.copyOfRange(sArr, 0, v12);
        int r11 = v12 + o12;
        short[] sArrCopyOfRange2 = Arrays.copyOfRange(sArr, v12, r11);
        short[] sArrCopyOfRange3 = Arrays.copyOfRange(sArr, r11, sArr.length);
        RainbowDRBG rainbowDRBG = new RainbowDRBG(rainbowPublicKeyParameters.pk_seed, rainbowPublicKeyParameters.getParameters().getHash_algo());
        short[][] sArrAddMatrix = this.f11950cf.addMatrix(this.f11950cf.addMatrix(this.f11950cf.addMatrix(this.f11950cf.addMatrix(this.f11950cf.addMatrix(compute_accumulator(sArrCopyOfRange, sArrCopyOfRange, RainbowUtil.generate_random(rainbowDRBG, o12, v12, v12, true), o12), compute_accumulator(sArrCopyOfRange2, sArrCopyOfRange, RainbowUtil.generate_random(rainbowDRBG, o12, v12, o12, false), o12)), compute_accumulator(sArrCopyOfRange3, sArrCopyOfRange, rainbowPublicKeyParameters.l1_Q3, o12)), compute_accumulator(sArrCopyOfRange2, sArrCopyOfRange2, rainbowPublicKeyParameters.l1_Q5, o12)), compute_accumulator(sArrCopyOfRange3, sArrCopyOfRange2, rainbowPublicKeyParameters.l1_Q6, o12)), compute_accumulator(sArrCopyOfRange3, sArrCopyOfRange3, rainbowPublicKeyParameters.l1_Q9, o12));
        short[][] sArrAddMatrix2 = this.f11950cf.addMatrix(this.f11950cf.addMatrix(this.f11950cf.addMatrix(this.f11950cf.addMatrix(this.f11950cf.addMatrix(compute_accumulator(sArrCopyOfRange, sArrCopyOfRange, RainbowUtil.generate_random(rainbowDRBG, o22, v12, v12, true), o22), compute_accumulator(sArrCopyOfRange2, sArrCopyOfRange, RainbowUtil.generate_random(rainbowDRBG, o22, v12, o12, false), o22)), compute_accumulator(sArrCopyOfRange3, sArrCopyOfRange, RainbowUtil.generate_random(rainbowDRBG, o22, v12, o22, false), o22)), compute_accumulator(sArrCopyOfRange2, sArrCopyOfRange2, RainbowUtil.generate_random(rainbowDRBG, o22, o12, o12, true), o22)), compute_accumulator(sArrCopyOfRange3, sArrCopyOfRange2, RainbowUtil.generate_random(rainbowDRBG, o22, o12, o22, false), o22)), compute_accumulator(sArrCopyOfRange3, sArrCopyOfRange3, rainbowPublicKeyParameters.l2_Q9, o22));
        for (int r6 = 0; r6 < 256; r6++) {
            sArr2[r6] = Arrays.concatenate(sArrAddMatrix[r6], sArrAddMatrix2[r6]);
        }
        return add_and_reduce(sArr2);
    }
}
