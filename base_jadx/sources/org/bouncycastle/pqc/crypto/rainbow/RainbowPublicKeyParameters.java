package org.bouncycastle.pqc.crypto.rainbow;

import java.lang.reflect.Array;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class RainbowPublicKeyParameters extends RainbowKeyParameters {
    short[][][] l1_Q3;
    short[][][] l1_Q5;
    short[][][] l1_Q6;
    short[][][] l1_Q9;
    short[][][] l2_Q9;
    short[][][] pk;
    byte[] pk_seed;

    public RainbowPublicKeyParameters(RainbowParameters rainbowParameters, byte[] bArr) {
        super(false, rainbowParameters);
        int m10 = rainbowParameters.getM();
        int n10 = rainbowParameters.getN();
        if (getParameters().getVersion() != Version.CLASSIC) {
            this.pk_seed = Arrays.copyOfRange(bArr, 0, rainbowParameters.getLen_pkseed());
            this.l1_Q3 = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, rainbowParameters.getO1(), rainbowParameters.getV1(), rainbowParameters.getO2());
            this.l1_Q5 = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, rainbowParameters.getO1(), rainbowParameters.getO1(), rainbowParameters.getO1());
            this.l1_Q6 = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, rainbowParameters.getO1(), rainbowParameters.getO1(), rainbowParameters.getO2());
            this.l1_Q9 = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, rainbowParameters.getO1(), rainbowParameters.getO2(), rainbowParameters.getO2());
            this.l2_Q9 = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, rainbowParameters.getO2(), rainbowParameters.getO2(), rainbowParameters.getO2());
            int len_pkseed = rainbowParameters.getLen_pkseed();
            int r92 = len_pkseed + RainbowUtil.loadEncoded(this.l1_Q3, bArr, len_pkseed, false);
            int r93 = r92 + RainbowUtil.loadEncoded(this.l1_Q5, bArr, r92, true);
            int r94 = r93 + RainbowUtil.loadEncoded(this.l1_Q6, bArr, r93, false);
            int r95 = r94 + RainbowUtil.loadEncoded(this.l1_Q9, bArr, r94, true);
            if (r95 + RainbowUtil.loadEncoded(this.l2_Q9, bArr, r95, true) != bArr.length) {
                throw new IllegalArgumentException("unparsed data in key encoding");
            }
            return;
        }
        this.pk = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, m10, n10, n10);
        int r32 = 0;
        for (int r96 = 0; r96 < n10; r96++) {
            for (int r42 = 0; r42 < n10; r42++) {
                for (int r52 = 0; r52 < m10; r52++) {
                    short[][][] sArr = this.pk;
                    if (r96 > r42) {
                        sArr[r52][r96][r42] = 0;
                    } else {
                        sArr[r52][r96][r42] = (short) (bArr[r32] & 255);
                        r32++;
                    }
                }
            }
        }
    }

    public RainbowPublicKeyParameters(RainbowParameters rainbowParameters, byte[] bArr, short[][][] sArr, short[][][] sArr2, short[][][] sArr3, short[][][] sArr4, short[][][] sArr5) {
        super(false, rainbowParameters);
        this.pk_seed = (byte[]) bArr.clone();
        this.l1_Q3 = RainbowUtil.cloneArray(sArr);
        this.l1_Q5 = RainbowUtil.cloneArray(sArr2);
        this.l1_Q6 = RainbowUtil.cloneArray(sArr3);
        this.l1_Q9 = RainbowUtil.cloneArray(sArr4);
        this.l2_Q9 = RainbowUtil.cloneArray(sArr5);
    }

    public RainbowPublicKeyParameters(RainbowParameters rainbowParameters, short[][][] sArr, short[][][] sArr2, short[][][] sArr3, short[][][] sArr4, short[][][] sArr5, short[][][] sArr6, short[][][] sArr7, short[][][] sArr8, short[][][] sArr9, short[][][] sArr10, short[][][] sArr11, short[][][] sArr12) {
        super(false, rainbowParameters);
        int v12 = rainbowParameters.getV1();
        int o12 = rainbowParameters.getO1();
        int o22 = rainbowParameters.getO2();
        this.pk = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, rainbowParameters.getM(), rainbowParameters.getN(), rainbowParameters.getN());
        for (int r22 = 0; r22 < o12; r22++) {
            for (int r6 = 0; r6 < v12; r6++) {
                System.arraycopy(sArr[r22][r6], 0, this.pk[r22][r6], 0, v12);
                System.arraycopy(sArr2[r22][r6], 0, this.pk[r22][r6], v12, o12);
                System.arraycopy(sArr3[r22][r6], 0, this.pk[r22][r6], v12 + o12, o22);
            }
            for (int r62 = 0; r62 < o12; r62++) {
                int r92 = r62 + v12;
                System.arraycopy(sArr4[r22][r62], 0, this.pk[r22][r92], v12, o12);
                System.arraycopy(sArr5[r22][r62], 0, this.pk[r22][r92], v12 + o12, o22);
            }
            for (int r63 = 0; r63 < o22; r63++) {
                System.arraycopy(sArr6[r22][r63], 0, this.pk[r22][r63 + v12 + o12], v12 + o12, o22);
            }
        }
        for (int r23 = 0; r23 < o22; r23++) {
            for (int r64 = 0; r64 < v12; r64++) {
                int r93 = r23 + o12;
                System.arraycopy(sArr7[r23][r64], 0, this.pk[r93][r64], 0, v12);
                System.arraycopy(sArr8[r23][r64], 0, this.pk[r93][r64], v12, o12);
                System.arraycopy(sArr9[r23][r64], 0, this.pk[r93][r64], v12 + o12, o22);
            }
            for (int r65 = 0; r65 < o12; r65++) {
                int r94 = r23 + o12;
                int r10 = r65 + v12;
                System.arraycopy(sArr10[r23][r65], 0, this.pk[r94][r10], v12, o12);
                System.arraycopy(sArr11[r23][r65], 0, this.pk[r94][r10], v12 + o12, o22);
            }
            for (int r66 = 0; r66 < o22; r66++) {
                System.arraycopy(sArr12[r23][r66], 0, this.pk[r23 + o12][r66 + v12 + o12], v12 + o12, o22);
            }
        }
    }

    public byte[] getEncoded() {
        return getParameters().getVersion() != Version.CLASSIC ? Arrays.concatenate(Arrays.concatenate(Arrays.concatenate(Arrays.concatenate(Arrays.concatenate(this.pk_seed, RainbowUtil.getEncoded(this.l1_Q3, false)), RainbowUtil.getEncoded(this.l1_Q5, true)), RainbowUtil.getEncoded(this.l1_Q6, false)), RainbowUtil.getEncoded(this.l1_Q9, true)), RainbowUtil.getEncoded(this.l2_Q9, true)) : RainbowUtil.getEncoded(this.pk, true);
    }

    public short[][][] getPk() {
        return RainbowUtil.cloneArray(this.pk);
    }
}
