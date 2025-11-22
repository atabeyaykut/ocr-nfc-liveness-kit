package org.bouncycastle.pqc.legacy.crypto.mceliece;

import org.bouncycastle.pqc.legacy.math.linearalgebra.GF2Matrix;

/* loaded from: classes2.dex */
public class McElieceCCA2PublicKeyParameters extends McElieceCCA2KeyParameters {
    private GF2Matrix matrixG;

    /* renamed from: n, reason: collision with root package name */
    private int f11992n;

    /* renamed from: t, reason: collision with root package name */
    private int f11993t;

    public McElieceCCA2PublicKeyParameters(int r22, int r32, GF2Matrix gF2Matrix, String str) {
        super(false, str);
        this.f11992n = r22;
        this.f11993t = r32;
        this.matrixG = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.matrixG;
    }

    public int getK() {
        return this.matrixG.getNumRows();
    }

    public int getN() {
        return this.f11992n;
    }

    public int getT() {
        return this.f11993t;
    }
}
