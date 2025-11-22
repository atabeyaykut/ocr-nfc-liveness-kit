package org.bouncycastle.pqc.legacy.crypto.rainbow;

/* loaded from: classes2.dex */
public class RainbowPrivateKeyParameters extends RainbowKeyParameters {
    private short[][] A1inv;
    private short[][] A2inv;

    /* renamed from: b1, reason: collision with root package name */
    private short[] f12048b1;

    /* renamed from: b2, reason: collision with root package name */
    private short[] f12049b2;
    private Layer[] layers;
    private int[] vi;

    public RainbowPrivateKeyParameters(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] r82, Layer[] layerArr) {
        super(true, r82[r82.length - 1] - r82[0]);
        this.A1inv = sArr;
        this.f12048b1 = sArr2;
        this.A2inv = sArr3;
        this.f12049b2 = sArr4;
        this.vi = r82;
        this.layers = layerArr;
    }

    public short[] getB1() {
        return this.f12048b1;
    }

    public short[] getB2() {
        return this.f12049b2;
    }

    public short[][] getInvA1() {
        return this.A1inv;
    }

    public short[][] getInvA2() {
        return this.A2inv;
    }

    public Layer[] getLayers() {
        return this.layers;
    }

    public int[] getVi() {
        return this.vi;
    }
}
