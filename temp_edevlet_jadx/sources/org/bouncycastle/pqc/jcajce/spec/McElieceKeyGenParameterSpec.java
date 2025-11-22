package org.bouncycastle.pqc.jcajce.spec;

import java.security.InvalidParameterException;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.pqc.legacy.math.linearalgebra.PolynomialRingGF2;

/* loaded from: classes2.dex */
public class McElieceKeyGenParameterSpec implements AlgorithmParameterSpec {
    public static final int DEFAULT_M = 11;
    public static final int DEFAULT_T = 50;
    private int fieldPoly;

    /* renamed from: m, reason: collision with root package name */
    private int f11978m;

    /* renamed from: n, reason: collision with root package name */
    private int f11979n;

    /* renamed from: t, reason: collision with root package name */
    private int f11980t;

    public McElieceKeyGenParameterSpec() {
        this(11, 50);
    }

    public McElieceKeyGenParameterSpec(int r32) {
        if (r32 < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        this.f11978m = 0;
        this.f11979n = 1;
        while (true) {
            int r12 = this.f11979n;
            if (r12 >= r32) {
                int r33 = r12 >>> 1;
                this.f11980t = r33;
                int r02 = this.f11978m;
                this.f11980t = r33 / r02;
                this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(r02);
                return;
            }
            this.f11979n = r12 << 1;
            this.f11978m++;
        }
    }

    public McElieceKeyGenParameterSpec(int r32, int r42) throws InvalidParameterException {
        if (r32 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (r32 > 32) {
            throw new IllegalArgumentException("m is too large");
        }
        this.f11978m = r32;
        int r02 = 1 << r32;
        this.f11979n = r02;
        if (r42 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (r42 > r02) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        this.f11980t = r42;
        this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(r32);
    }

    public McElieceKeyGenParameterSpec(int r32, int r42, int r52) {
        this.f11978m = r32;
        if (r32 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (r32 > 32) {
            throw new IllegalArgumentException(" m is too large");
        }
        int r02 = 1 << r32;
        this.f11979n = r02;
        this.f11980t = r42;
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
    }

    public int getFieldPoly() {
        return this.fieldPoly;
    }

    public int getM() {
        return this.f11978m;
    }

    public int getN() {
        return this.f11979n;
    }

    public int getT() {
        return this.f11980t;
    }
}
