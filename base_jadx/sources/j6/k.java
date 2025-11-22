package j6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j6.a0;

/* loaded from: classes2.dex */
public final class k extends a0.e.d {

    /* renamed from: a, reason: collision with root package name */
    public final long f8193a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8194b;

    /* renamed from: c, reason: collision with root package name */
    public final a0.e.d.a f8195c;

    /* renamed from: d, reason: collision with root package name */
    public final a0.e.d.c f8196d;

    /* renamed from: e, reason: collision with root package name */
    public final a0.e.d.AbstractC0144d f8197e;

    public static final class a extends a0.e.d.b {

        /* renamed from: a, reason: collision with root package name */
        public Long f8198a;

        /* renamed from: b, reason: collision with root package name */
        public String f8199b;

        /* renamed from: c, reason: collision with root package name */
        public a0.e.d.a f8200c;

        /* renamed from: d, reason: collision with root package name */
        public a0.e.d.c f8201d;

        /* renamed from: e, reason: collision with root package name */
        public a0.e.d.AbstractC0144d f8202e;

        public a() {
        }

        public a(a0.e.d dVar) {
            this.f8198a = Long.valueOf(dVar.d());
            this.f8199b = dVar.e();
            this.f8200c = dVar.a();
            this.f8201d = dVar.b();
            this.f8202e = dVar.c();
        }

        public final k a() {
            String strF = this.f8198a == null ? " timestamp" : "";
            if (this.f8199b == null) {
                strF = strF.concat(" type");
            }
            if (this.f8200c == null) {
                strF = android.support.v4.media.a.f(strF, " app");
            }
            if (this.f8201d == null) {
                strF = android.support.v4.media.a.f(strF, " device");
            }
            if (strF.isEmpty()) {
                return new k(this.f8198a.longValue(), this.f8199b, this.f8200c, this.f8201d, this.f8202e);
            }
            throw new IllegalStateException("Missing required properties:".concat(strF));
        }
    }

    public k(long j10, String str, a0.e.d.a aVar, a0.e.d.c cVar, a0.e.d.AbstractC0144d abstractC0144d) {
        this.f8193a = j10;
        this.f8194b = str;
        this.f8195c = aVar;
        this.f8196d = cVar;
        this.f8197e = abstractC0144d;
    }

    @Override // j6.a0.e.d
    @NonNull
    public final a0.e.d.a a() {
        return this.f8195c;
    }

    @Override // j6.a0.e.d
    @NonNull
    public final a0.e.d.c b() {
        return this.f8196d;
    }

    @Override // j6.a0.e.d
    @Nullable
    public final a0.e.d.AbstractC0144d c() {
        return this.f8197e;
    }

    @Override // j6.a0.e.d
    public final long d() {
        return this.f8193a;
    }

    @Override // j6.a0.e.d
    @NonNull
    public final String e() {
        return this.f8194b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.e.d)) {
            return false;
        }
        a0.e.d dVar = (a0.e.d) obj;
        if (this.f8193a == dVar.d() && this.f8194b.equals(dVar.e()) && this.f8195c.equals(dVar.a()) && this.f8196d.equals(dVar.b())) {
            a0.e.d.AbstractC0144d abstractC0144d = this.f8197e;
            a0.e.d.AbstractC0144d abstractC0144dC = dVar.c();
            if (abstractC0144d == null) {
                if (abstractC0144dC == null) {
                    return true;
                }
            } else if (abstractC0144d.equals(abstractC0144dC)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f8193a;
        int r12 = (((((((((int) ((j10 >>> 32) ^ j10)) ^ 1000003) * 1000003) ^ this.f8194b.hashCode()) * 1000003) ^ this.f8195c.hashCode()) * 1000003) ^ this.f8196d.hashCode()) * 1000003;
        a0.e.d.AbstractC0144d abstractC0144d = this.f8197e;
        return (abstractC0144d == null ? 0 : abstractC0144d.hashCode()) ^ r12;
    }

    public final String toString() {
        return "Event{timestamp=" + this.f8193a + ", type=" + this.f8194b + ", app=" + this.f8195c + ", device=" + this.f8196d + ", log=" + this.f8197e + "}";
    }
}
