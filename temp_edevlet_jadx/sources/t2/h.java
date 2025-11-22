package t2;

/* loaded from: classes.dex */
public final class h extends n {

    /* renamed from: a, reason: collision with root package name */
    public final long f15629a;

    public h(long j10) {
        this.f15629a = j10;
    }

    @Override // t2.n
    public final long b() {
        return this.f15629a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof n) && this.f15629a == ((n) obj).b();
    }

    public final int hashCode() {
        long j10 = this.f15629a;
        return 1000003 ^ ((int) ((j10 >>> 32) ^ j10));
    }

    public final String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f15629a + "}";
    }
}
