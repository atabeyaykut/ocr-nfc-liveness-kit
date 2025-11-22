package org.bouncycastle.pqc.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.pqc.legacy.math.linearalgebra.PolynomialRingGF2;

/* loaded from: classes2.dex */
public class McElieceCCA2KeyGenParameterSpec implements AlgorithmParameterSpec {
    public static final int DEFAULT_M = 11;
    public static final int DEFAULT_T = 50;
    public static final String SHA1 = "SHA-1";
    public static final String SHA224 = "SHA-224";
    public static final String SHA256 = "SHA-256";
    public static final String SHA384 = "SHA-384";
    public static final String SHA512 = "SHA-512";
    private final String digest;
    private int fieldPoly;

    /* renamed from: m, reason: collision with root package name */
    private final int f11975m;

    /* renamed from: n, reason: collision with root package name */
    private final int f11976n;

    /* renamed from: t, reason: collision with root package name */
    private final int f11977t;

    public McElieceCCA2KeyGenParameterSpec() {
        this(11, 50, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int r22) {
        this(r22, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int r22, int r32) {
        this(r22, r32, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int r22, int r32, int r42) {
        this(r22, r32, r42, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int r32, int r42, int r52, String str) {
        this.f11975m = r32;
        if (r32 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (r32 > 32) {
            throw new IllegalArgumentException(" m is too large");
        }
        int r02 = 1 << r32;
        this.f11976n = r02;
        this.f11977t = r42;
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
        this.digest = str;
    }

    public McElieceCCA2KeyGenParameterSpec(int r32, int r42, String str) {
        if (r32 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (r32 > 32) {
            throw new IllegalArgumentException("m is too large");
        }
        this.f11975m = r32;
        int r02 = 1 << r32;
        this.f11976n = r02;
        if (r42 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (r42 > r02) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        this.f11977t = r42;
        this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(r32);
        this.digest = str;
    }

    public McElieceCCA2KeyGenParameterSpec(int r32, String str) {
        int r02 = 1;
        if (r32 < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        int r12 = 0;
        while (r02 < r32) {
            r02 <<= 1;
            r12++;
        }
        this.f11977t = (r02 >>> 1) / r12;
        this.f11975m = r12;
        this.f11976n = r02;
        this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(r12);
        this.digest = str;
    }

    public String getDigest() {
        return this.digest;
    }

    public int getFieldPoly() {
        return this.fieldPoly;
    }

    public int getM() {
        return this.f11975m;
    }

    public int getN() {
        return this.f11976n;
    }

    public int getT() {
        return this.f11977t;
    }
}
