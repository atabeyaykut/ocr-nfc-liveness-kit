package v2;

/* loaded from: classes.dex */
public final class b extends g {

    /* renamed from: a, reason: collision with root package name */
    public final int f18214a;

    /* renamed from: b, reason: collision with root package name */
    public final long f18215b;

    public b(int r12, long j10) {
        if (r12 == 0) {
            throw new NullPointerException("Null status");
        }
        this.f18214a = r12;
        this.f18215b = j10;
    }

    @Override // v2.g
    public final long a() {
        return this.f18215b;
    }

    @Override // v2.g
    public final int b() {
        return this.f18214a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return g.d.b(this.f18214a, gVar.b()) && this.f18215b == gVar.a();
    }

    public final int hashCode() {
        int r02 = (g.d.c(this.f18214a) ^ 1000003) * 1000003;
        long j10 = this.f18215b;
        return r02 ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public final String toString() {
        return "BackendResponse{status=" + androidx.browser.browseractions.a.i(this.f18214a) + ", nextRequestWaitMillis=" + this.f18215b + "}";
    }
}
