package j6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j6.a0;

/* loaded from: classes2.dex */
public final class g extends a0.e {

    /* renamed from: a, reason: collision with root package name */
    public final String f8151a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8152b;

    /* renamed from: c, reason: collision with root package name */
    public final long f8153c;

    /* renamed from: d, reason: collision with root package name */
    public final Long f8154d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f8155e;
    public final a0.e.a f;

    /* renamed from: g, reason: collision with root package name */
    public final a0.e.f f8156g;

    /* renamed from: h, reason: collision with root package name */
    public final a0.e.AbstractC0145e f8157h;

    /* renamed from: i, reason: collision with root package name */
    public final a0.e.c f8158i;

    /* renamed from: j, reason: collision with root package name */
    public final b0<a0.e.d> f8159j;

    /* renamed from: k, reason: collision with root package name */
    public final int f8160k;

    public static final class a extends a0.e.b {

        /* renamed from: a, reason: collision with root package name */
        public String f8161a;

        /* renamed from: b, reason: collision with root package name */
        public String f8162b;

        /* renamed from: c, reason: collision with root package name */
        public Long f8163c;

        /* renamed from: d, reason: collision with root package name */
        public Long f8164d;

        /* renamed from: e, reason: collision with root package name */
        public Boolean f8165e;
        public a0.e.a f;

        /* renamed from: g, reason: collision with root package name */
        public a0.e.f f8166g;

        /* renamed from: h, reason: collision with root package name */
        public a0.e.AbstractC0145e f8167h;

        /* renamed from: i, reason: collision with root package name */
        public a0.e.c f8168i;

        /* renamed from: j, reason: collision with root package name */
        public b0<a0.e.d> f8169j;

        /* renamed from: k, reason: collision with root package name */
        public Integer f8170k;

        public a() {
        }

        public a(a0.e eVar) {
            this.f8161a = eVar.e();
            this.f8162b = eVar.g();
            this.f8163c = Long.valueOf(eVar.i());
            this.f8164d = eVar.c();
            this.f8165e = Boolean.valueOf(eVar.k());
            this.f = eVar.a();
            this.f8166g = eVar.j();
            this.f8167h = eVar.h();
            this.f8168i = eVar.b();
            this.f8169j = eVar.d();
            this.f8170k = Integer.valueOf(eVar.f());
        }

        public final g a() {
            String strF = this.f8161a == null ? " generator" : "";
            if (this.f8162b == null) {
                strF = strF.concat(" identifier");
            }
            if (this.f8163c == null) {
                strF = android.support.v4.media.a.f(strF, " startedAt");
            }
            if (this.f8165e == null) {
                strF = android.support.v4.media.a.f(strF, " crashed");
            }
            if (this.f == null) {
                strF = android.support.v4.media.a.f(strF, " app");
            }
            if (this.f8170k == null) {
                strF = android.support.v4.media.a.f(strF, " generatorType");
            }
            if (strF.isEmpty()) {
                return new g(this.f8161a, this.f8162b, this.f8163c.longValue(), this.f8164d, this.f8165e.booleanValue(), this.f, this.f8166g, this.f8167h, this.f8168i, this.f8169j, this.f8170k.intValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(strF));
        }
    }

    public g() {
        throw null;
    }

    public g(String str, String str2, long j10, Long l5, boolean z10, a0.e.a aVar, a0.e.f fVar, a0.e.AbstractC0145e abstractC0145e, a0.e.c cVar, b0 b0Var, int r12) {
        this.f8151a = str;
        this.f8152b = str2;
        this.f8153c = j10;
        this.f8154d = l5;
        this.f8155e = z10;
        this.f = aVar;
        this.f8156g = fVar;
        this.f8157h = abstractC0145e;
        this.f8158i = cVar;
        this.f8159j = b0Var;
        this.f8160k = r12;
    }

    @Override // j6.a0.e
    @NonNull
    public final a0.e.a a() {
        return this.f;
    }

    @Override // j6.a0.e
    @Nullable
    public final a0.e.c b() {
        return this.f8158i;
    }

    @Override // j6.a0.e
    @Nullable
    public final Long c() {
        return this.f8154d;
    }

    @Override // j6.a0.e
    @Nullable
    public final b0<a0.e.d> d() {
        return this.f8159j;
    }

    @Override // j6.a0.e
    @NonNull
    public final String e() {
        return this.f8151a;
    }

    public final boolean equals(Object obj) {
        Long l5;
        a0.e.f fVar;
        a0.e.AbstractC0145e abstractC0145e;
        a0.e.c cVar;
        b0<a0.e.d> b0Var;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.e)) {
            return false;
        }
        a0.e eVar = (a0.e) obj;
        return this.f8151a.equals(eVar.e()) && this.f8152b.equals(eVar.g()) && this.f8153c == eVar.i() && ((l5 = this.f8154d) != null ? l5.equals(eVar.c()) : eVar.c() == null) && this.f8155e == eVar.k() && this.f.equals(eVar.a()) && ((fVar = this.f8156g) != null ? fVar.equals(eVar.j()) : eVar.j() == null) && ((abstractC0145e = this.f8157h) != null ? abstractC0145e.equals(eVar.h()) : eVar.h() == null) && ((cVar = this.f8158i) != null ? cVar.equals(eVar.b()) : eVar.b() == null) && ((b0Var = this.f8159j) != null ? b0Var.equals(eVar.d()) : eVar.d() == null) && this.f8160k == eVar.f();
    }

    @Override // j6.a0.e
    public final int f() {
        return this.f8160k;
    }

    @Override // j6.a0.e
    @NonNull
    public final String g() {
        return this.f8152b;
    }

    @Override // j6.a0.e
    @Nullable
    public final a0.e.AbstractC0145e h() {
        return this.f8157h;
    }

    public final int hashCode() {
        int r02 = (((this.f8151a.hashCode() ^ 1000003) * 1000003) ^ this.f8152b.hashCode()) * 1000003;
        long j10 = this.f8153c;
        int r03 = (r02 ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003;
        Long l5 = this.f8154d;
        int r04 = (((((r03 ^ (l5 == null ? 0 : l5.hashCode())) * 1000003) ^ (this.f8155e ? 1231 : 1237)) * 1000003) ^ this.f.hashCode()) * 1000003;
        a0.e.f fVar = this.f8156g;
        int r05 = (r04 ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        a0.e.AbstractC0145e abstractC0145e = this.f8157h;
        int r06 = (r05 ^ (abstractC0145e == null ? 0 : abstractC0145e.hashCode())) * 1000003;
        a0.e.c cVar = this.f8158i;
        int r07 = (r06 ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        b0<a0.e.d> b0Var = this.f8159j;
        return ((r07 ^ (b0Var != null ? b0Var.hashCode() : 0)) * 1000003) ^ this.f8160k;
    }

    @Override // j6.a0.e
    public final long i() {
        return this.f8153c;
    }

    @Override // j6.a0.e
    @Nullable
    public final a0.e.f j() {
        return this.f8156g;
    }

    @Override // j6.a0.e
    public final boolean k() {
        return this.f8155e;
    }

    @Override // j6.a0.e
    public final a l() {
        return new a(this);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Session{generator=");
        sb2.append(this.f8151a);
        sb2.append(", identifier=");
        sb2.append(this.f8152b);
        sb2.append(", startedAt=");
        sb2.append(this.f8153c);
        sb2.append(", endedAt=");
        sb2.append(this.f8154d);
        sb2.append(", crashed=");
        sb2.append(this.f8155e);
        sb2.append(", app=");
        sb2.append(this.f);
        sb2.append(", user=");
        sb2.append(this.f8156g);
        sb2.append(", os=");
        sb2.append(this.f8157h);
        sb2.append(", device=");
        sb2.append(this.f8158i);
        sb2.append(", events=");
        sb2.append(this.f8159j);
        sb2.append(", generatorType=");
        return androidx.browser.browseractions.a.b(sb2, this.f8160k, "}");
    }
}
