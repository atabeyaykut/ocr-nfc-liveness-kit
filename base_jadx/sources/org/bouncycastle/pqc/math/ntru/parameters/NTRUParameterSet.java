package org.bouncycastle.pqc.math.ntru.parameters;

import org.bouncycastle.pqc.math.ntru.Polynomial;

/* loaded from: classes2.dex */
public abstract class NTRUParameterSet {
    private final int logQ;

    /* renamed from: n, reason: collision with root package name */
    private final int f12068n;
    private final int prfKeyBytes;
    private final int seedBytes;
    private final int sharedKeyBytes;

    public NTRUParameterSet(int r12, int r22, int r32, int r42, int r52) {
        this.f12068n = r12;
        this.logQ = r22;
        this.seedBytes = r32;
        this.prfKeyBytes = r42;
        this.sharedKeyBytes = r52;
    }

    public abstract Polynomial createPolynomial();

    public int logQ() {
        return this.logQ;
    }

    public int n() {
        return this.f12068n;
    }

    public int ntruCiphertextBytes() {
        return owcpaBytes();
    }

    public int ntruPublicKeyBytes() {
        return owcpaPublicKeyBytes();
    }

    public int ntruSecretKeyBytes() {
        return owcpaSecretKeyBytes() + this.prfKeyBytes;
    }

    public int owcpaBytes() {
        return ((packDegree() * this.logQ) + 7) / 8;
    }

    public int owcpaMsgBytes() {
        return packTrinaryBytes() * 2;
    }

    public int owcpaPublicKeyBytes() {
        return ((packDegree() * this.logQ) + 7) / 8;
    }

    public int owcpaSecretKeyBytes() {
        return owcpaPublicKeyBytes() + (packTrinaryBytes() * 2);
    }

    public int packDegree() {
        return this.f12068n - 1;
    }

    public int packTrinaryBytes() {
        return (packDegree() + 4) / 5;
    }

    public int prfKeyBytes() {
        return this.prfKeyBytes;
    }

    public int q() {
        return 1 << this.logQ;
    }

    public abstract int sampleFgBytes();

    public int sampleFixedTypeBytes() {
        return (((this.f12068n - 1) * 30) + 7) / 8;
    }

    public int sampleIidBytes() {
        return this.f12068n - 1;
    }

    public abstract int sampleRmBytes();

    public int seedBytes() {
        return this.seedBytes;
    }

    public int sharedKeyBytes() {
        return this.sharedKeyBytes;
    }
}
