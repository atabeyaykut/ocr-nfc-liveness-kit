package a3;

import a3.e;
import java.util.Set;

/* loaded from: classes.dex */
public final class c extends e.a {

    /* renamed from: a, reason: collision with root package name */
    public final long f51a;

    /* renamed from: b, reason: collision with root package name */
    public final long f52b;

    /* renamed from: c, reason: collision with root package name */
    public final Set<e.b> f53c;

    public static final class a extends e.a.AbstractC0007a {

        /* renamed from: a, reason: collision with root package name */
        public Long f54a;

        /* renamed from: b, reason: collision with root package name */
        public Long f55b;

        /* renamed from: c, reason: collision with root package name */
        public Set<e.b> f56c;

        public final c a() {
            String strF = this.f54a == null ? " delta" : "";
            if (this.f55b == null) {
                strF = strF.concat(" maxAllowedDelay");
            }
            if (this.f56c == null) {
                strF = android.support.v4.media.a.f(strF, " flags");
            }
            if (strF.isEmpty()) {
                return new c(this.f54a.longValue(), this.f55b.longValue(), this.f56c);
            }
            throw new IllegalStateException("Missing required properties:".concat(strF));
        }
    }

    public c(long j10, long j11, Set set) {
        this.f51a = j10;
        this.f52b = j11;
        this.f53c = set;
    }

    @Override // a3.e.a
    public final long a() {
        return this.f51a;
    }

    @Override // a3.e.a
    public final Set<e.b> b() {
        return this.f53c;
    }

    @Override // a3.e.a
    public final long c() {
        return this.f52b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e.a)) {
            return false;
        }
        e.a aVar = (e.a) obj;
        return this.f51a == aVar.a() && this.f52b == aVar.c() && this.f53c.equals(aVar.b());
    }

    public final int hashCode() {
        long j10 = this.f51a;
        int r12 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        long j11 = this.f52b;
        return this.f53c.hashCode() ^ ((r12 ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003);
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.f51a + ", maxAllowedDelay=" + this.f52b + ", flags=" + this.f53c + "}";
    }
}
