package org.bouncycastle.crypto.params;

/* loaded from: classes2.dex */
public class GOST3410ValidationParameters {

    /* renamed from: c, reason: collision with root package name */
    private int f11633c;
    private long cL;

    /* renamed from: x0, reason: collision with root package name */
    private int f11634x0;
    private long x0L;

    public GOST3410ValidationParameters(int r12, int r22) {
        this.f11634x0 = r12;
        this.f11633c = r22;
    }

    public GOST3410ValidationParameters(long j10, long j11) {
        this.x0L = j10;
        this.cL = j11;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410ValidationParameters)) {
            return false;
        }
        GOST3410ValidationParameters gOST3410ValidationParameters = (GOST3410ValidationParameters) obj;
        return gOST3410ValidationParameters.f11633c == this.f11633c && gOST3410ValidationParameters.f11634x0 == this.f11634x0 && gOST3410ValidationParameters.cL == this.cL && gOST3410ValidationParameters.x0L == this.x0L;
    }

    public int getC() {
        return this.f11633c;
    }

    public long getCL() {
        return this.cL;
    }

    public int getX0() {
        return this.f11634x0;
    }

    public long getX0L() {
        return this.x0L;
    }

    public int hashCode() {
        int r02 = this.f11634x0 ^ this.f11633c;
        long j10 = this.x0L;
        int r03 = (r02 ^ ((int) j10)) ^ ((int) (j10 >> 32));
        long j11 = this.cL;
        return (r03 ^ ((int) j11)) ^ ((int) (j11 >> 32));
    }
}
