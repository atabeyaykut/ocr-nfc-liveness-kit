package b3;

/* loaded from: classes.dex */
public final class a extends e {

    /* renamed from: b, reason: collision with root package name */
    public final long f1092b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1093c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1094d;

    /* renamed from: e, reason: collision with root package name */
    public final long f1095e;
    public final int f;

    public a(long j10, int r32, int r42, long j11, int r72) {
        this.f1092b = j10;
        this.f1093c = r32;
        this.f1094d = r42;
        this.f1095e = j11;
        this.f = r72;
    }

    @Override // b3.e
    public final int a() {
        return this.f1094d;
    }

    @Override // b3.e
    public final long b() {
        return this.f1095e;
    }

    @Override // b3.e
    public final int c() {
        return this.f1093c;
    }

    @Override // b3.e
    public final int d() {
        return this.f;
    }

    @Override // b3.e
    public final long e() {
        return this.f1092b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f1092b == eVar.e() && this.f1093c == eVar.c() && this.f1094d == eVar.a() && this.f1095e == eVar.b() && this.f == eVar.d();
    }

    public final int hashCode() {
        long j10 = this.f1092b;
        int r12 = (((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f1093c) * 1000003) ^ this.f1094d) * 1000003;
        long j11 = this.f1095e;
        return this.f ^ ((r12 ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("EventStoreConfig{maxStorageSizeInBytes=");
        sb2.append(this.f1092b);
        sb2.append(", loadBatchSize=");
        sb2.append(this.f1093c);
        sb2.append(", criticalSectionEnterTimeoutMs=");
        sb2.append(this.f1094d);
        sb2.append(", eventCleanUpAge=");
        sb2.append(this.f1095e);
        sb2.append(", maxBlobByteSizePerRow=");
        return androidx.browser.browseractions.a.b(sb2, this.f, "}");
    }
}
