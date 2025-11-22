package org.bouncycastle.pqc.legacy.crypto.mceliece;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.legacy.math.linearalgebra.PolynomialRingGF2;

/* loaded from: classes2.dex */
public class McElieceParameters implements CipherParameters {
    public static final int DEFAULT_M = 11;
    public static final int DEFAULT_T = 50;
    private Digest digest;
    private int fieldPoly;

    /* renamed from: m, reason: collision with root package name */
    private int f12006m;

    /* renamed from: n, reason: collision with root package name */
    private int f12007n;

    /* renamed from: t, reason: collision with root package name */
    private int f12008t;

    public McElieceParameters() {
        this(11, 50);
    }

    public McElieceParameters(int r22) {
        this(r22, (Digest) null);
    }

    public McElieceParameters(int r22, int r32) {
        this(r22, r32, (Digest) null);
    }

    public McElieceParameters(int r22, int r32, int r42) {
        this(r22, r32, r42, null);
    }

    public McElieceParameters(int r32, int r42, int r52, Digest digest) {
        this.f12006m = r32;
        if (r32 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (r32 > 32) {
            throw new IllegalArgumentException(" m is too large");
        }
        int r02 = 1 << r32;
        this.f12007n = r02;
        this.f12008t = r42;
        if (r42 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (r42 > r02) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        if (PolynomialRingGF2.degree(r52) != r32 || !PolynomialRingGF2.isIrreducible(r52)) {
            throw new IllegalArgumentException("polynomial is not a field polynomial for GF(2^m)");
        }
        this.fieldPoly = r52;
        this.digest = digest;
    }

    public McElieceParameters(int r32, int r42, Digest digest) {
        if (r32 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (r32 > 32) {
            throw new IllegalArgumentException("m is too large");
        }
        this.f12006m = r32;
        int r02 = 1 << r32;
        this.f12007n = r02;
        if (r42 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (r42 > r02) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        this.f12008t = r42;
        this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(r32);
        this.digest = digest;
    }

    public McElieceParameters(int r32, Digest digest) {
        if (r32 < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        this.f12006m = 0;
        this.f12007n = 1;
        while (true) {
            int r12 = this.f12007n;
            if (r12 >= r32) {
                int r33 = r12 >>> 1;
                this.f12008t = r33;
                int r02 = this.f12006m;
                this.f12008t = r33 / r02;
                this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(r02);
                this.digest = digest;
                return;
            }
            this.f12007n = r12 << 1;
            this.f12006m++;
        }
    }

    public McElieceParameters(Digest digest) {
        this(11, 50, digest);
    }

    public int getFieldPoly() {
        return this.fieldPoly;
    }

    public int getM() {
        return this.f12006m;
    }

    public int getN() {
        return this.f12007n;
    }

    public int getT() {
        return this.f12008t;
    }
}
