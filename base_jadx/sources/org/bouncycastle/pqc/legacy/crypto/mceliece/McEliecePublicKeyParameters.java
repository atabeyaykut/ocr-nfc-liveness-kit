package org.bouncycastle.pqc.legacy.crypto.mceliece;

import org.bouncycastle.pqc.legacy.math.linearalgebra.GF2Matrix;

/* loaded from: classes2.dex */
public class McEliecePublicKeyParameters extends McElieceKeyParameters {

    /* renamed from: g, reason: collision with root package name */
    private GF2Matrix f12017g;

    /* renamed from: n, reason: collision with root package name */
    private int f12018n;

    /* renamed from: t, reason: collision with root package name */
    private int f12019t;

    public McEliecePublicKeyParameters(int r32, int r42, GF2Matrix gF2Matrix) {
        super(false, null);
        this.f12018n = r32;
        this.f12019t = r42;
        this.f12017g = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.f12017g;
    }

    public int getK() {
        return this.f12017g.getNumRows();
    }

    public int getN() {
        return this.f12018n;
    }

    public int getT() {
        return this.f12019t;
    }
}
