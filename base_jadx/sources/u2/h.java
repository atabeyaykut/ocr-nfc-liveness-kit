package u2;

import androidx.annotation.Nullable;
import java.util.Map;
import u2.n;

/* loaded from: classes.dex */
public final class h extends n {

    /* renamed from: a, reason: collision with root package name */
    public final String f17821a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f17822b;

    /* renamed from: c, reason: collision with root package name */
    public final m f17823c;

    /* renamed from: d, reason: collision with root package name */
    public final long f17824d;

    /* renamed from: e, reason: collision with root package name */
    public final long f17825e;
    public final Map<String, String> f;

    public static final class a extends n.a {

        /* renamed from: a, reason: collision with root package name */
        public String f17826a;

        /* renamed from: b, reason: collision with root package name */
        public Integer f17827b;

        /* renamed from: c, reason: collision with root package name */
        public m f17828c;

        /* renamed from: d, reason: collision with root package name */
        public Long f17829d;

        /* renamed from: e, reason: collision with root package name */
        public Long f17830e;
        public Map<String, String> f;

        public final h b() {
            String strF = this.f17826a == null ? " transportName" : "";
            if (this.f17828c == null) {
                strF = strF.concat(" encodedPayload");
            }
            if (this.f17829d == null) {
                strF = android.support.v4.media.a.f(strF, " eventMillis");
            }
            if (this.f17830e == null) {
                strF = android.support.v4.media.a.f(strF, " uptimeMillis");
            }
            if (this.f == null) {
                strF = android.support.v4.media.a.f(strF, " autoMetadata");
            }
            if (strF.isEmpty()) {
                return new h(this.f17826a, this.f17827b, this.f17828c, this.f17829d.longValue(), this.f17830e.longValue(), this.f);
            }
            throw new IllegalStateException("Missing required properties:".concat(strF));
        }

        public final a c(m mVar) {
            if (mVar == null) {
                throw new NullPointerException("Null encodedPayload");
            }
            this.f17828c = mVar;
            return this;
        }

        public final a d(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.f17826a = str;
            return this;
        }
    }

    public h(String str, Integer num, m mVar, long j10, long j11, Map map) {
        this.f17821a = str;
        this.f17822b = num;
        this.f17823c = mVar;
        this.f17824d = j10;
        this.f17825e = j11;
        this.f = map;
    }

    @Override // u2.n
    public final Map<String, String> b() {
        return this.f;
    }

    @Override // u2.n
    @Nullable
    public final Integer c() {
        return this.f17822b;
    }

    @Override // u2.n
    public final m d() {
        return this.f17823c;
    }

    @Override // u2.n
    public final long e() {
        return this.f17824d;
    }

    public final boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f17821a.equals(nVar.g()) && ((num = this.f17822b) != null ? num.equals(nVar.c()) : nVar.c() == null) && this.f17823c.equals(nVar.d()) && this.f17824d == nVar.e() && this.f17825e == nVar.h() && this.f.equals(nVar.b());
    }

    @Override // u2.n
    public final String g() {
        return this.f17821a;
    }

    @Override // u2.n
    public final long h() {
        return this.f17825e;
    }

    public final int hashCode() {
        int r02 = (this.f17821a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f17822b;
        int r03 = (((r02 ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f17823c.hashCode()) * 1000003;
        long j10 = this.f17824d;
        int r04 = (r03 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f17825e;
        return ((r04 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ this.f.hashCode();
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.f17821a + ", code=" + this.f17822b + ", encodedPayload=" + this.f17823c + ", eventMillis=" + this.f17824d + ", uptimeMillis=" + this.f17825e + ", autoMetadata=" + this.f + "}";
    }
}
