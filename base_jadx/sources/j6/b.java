package j6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j6.a0;

/* loaded from: classes2.dex */
public final class b extends a0 {

    /* renamed from: b, reason: collision with root package name */
    public final String f8116b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8117c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8118d;

    /* renamed from: e, reason: collision with root package name */
    public final String f8119e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f8120g;

    /* renamed from: h, reason: collision with root package name */
    public final a0.e f8121h;

    /* renamed from: i, reason: collision with root package name */
    public final a0.d f8122i;

    public static final class a extends a0.b {

        /* renamed from: a, reason: collision with root package name */
        public String f8123a;

        /* renamed from: b, reason: collision with root package name */
        public String f8124b;

        /* renamed from: c, reason: collision with root package name */
        public Integer f8125c;

        /* renamed from: d, reason: collision with root package name */
        public String f8126d;

        /* renamed from: e, reason: collision with root package name */
        public String f8127e;
        public String f;

        /* renamed from: g, reason: collision with root package name */
        public a0.e f8128g;

        /* renamed from: h, reason: collision with root package name */
        public a0.d f8129h;

        public a() {
        }

        public a(a0 a0Var) {
            this.f8123a = a0Var.g();
            this.f8124b = a0Var.c();
            this.f8125c = Integer.valueOf(a0Var.f());
            this.f8126d = a0Var.d();
            this.f8127e = a0Var.a();
            this.f = a0Var.b();
            this.f8128g = a0Var.h();
            this.f8129h = a0Var.e();
        }

        public final b a() {
            String strF = this.f8123a == null ? " sdkVersion" : "";
            if (this.f8124b == null) {
                strF = strF.concat(" gmpAppId");
            }
            if (this.f8125c == null) {
                strF = android.support.v4.media.a.f(strF, " platform");
            }
            if (this.f8126d == null) {
                strF = android.support.v4.media.a.f(strF, " installationUuid");
            }
            if (this.f8127e == null) {
                strF = android.support.v4.media.a.f(strF, " buildVersion");
            }
            if (this.f == null) {
                strF = android.support.v4.media.a.f(strF, " displayVersion");
            }
            if (strF.isEmpty()) {
                return new b(this.f8123a, this.f8124b, this.f8125c.intValue(), this.f8126d, this.f8127e, this.f, this.f8128g, this.f8129h);
            }
            throw new IllegalStateException("Missing required properties:".concat(strF));
        }
    }

    public b(String str, String str2, int r32, String str3, String str4, String str5, a0.e eVar, a0.d dVar) {
        this.f8116b = str;
        this.f8117c = str2;
        this.f8118d = r32;
        this.f8119e = str3;
        this.f = str4;
        this.f8120g = str5;
        this.f8121h = eVar;
        this.f8122i = dVar;
    }

    @Override // j6.a0
    @NonNull
    public final String a() {
        return this.f;
    }

    @Override // j6.a0
    @NonNull
    public final String b() {
        return this.f8120g;
    }

    @Override // j6.a0
    @NonNull
    public final String c() {
        return this.f8117c;
    }

    @Override // j6.a0
    @NonNull
    public final String d() {
        return this.f8119e;
    }

    @Override // j6.a0
    @Nullable
    public final a0.d e() {
        return this.f8122i;
    }

    public final boolean equals(Object obj) {
        a0.e eVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        if (this.f8116b.equals(a0Var.g()) && this.f8117c.equals(a0Var.c()) && this.f8118d == a0Var.f() && this.f8119e.equals(a0Var.d()) && this.f.equals(a0Var.a()) && this.f8120g.equals(a0Var.b()) && ((eVar = this.f8121h) != null ? eVar.equals(a0Var.h()) : a0Var.h() == null)) {
            a0.d dVar = this.f8122i;
            a0.d dVarE = a0Var.e();
            if (dVar == null) {
                if (dVarE == null) {
                    return true;
                }
            } else if (dVar.equals(dVarE)) {
                return true;
            }
        }
        return false;
    }

    @Override // j6.a0
    public final int f() {
        return this.f8118d;
    }

    @Override // j6.a0
    @NonNull
    public final String g() {
        return this.f8116b;
    }

    @Override // j6.a0
    @Nullable
    public final a0.e h() {
        return this.f8121h;
    }

    public final int hashCode() {
        int r02 = (((((((((((this.f8116b.hashCode() ^ 1000003) * 1000003) ^ this.f8117c.hashCode()) * 1000003) ^ this.f8118d) * 1000003) ^ this.f8119e.hashCode()) * 1000003) ^ this.f.hashCode()) * 1000003) ^ this.f8120g.hashCode()) * 1000003;
        a0.e eVar = this.f8121h;
        int r03 = (r02 ^ (eVar == null ? 0 : eVar.hashCode())) * 1000003;
        a0.d dVar = this.f8122i;
        return r03 ^ (dVar != null ? dVar.hashCode() : 0);
    }

    public final String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.f8116b + ", gmpAppId=" + this.f8117c + ", platform=" + this.f8118d + ", installationUuid=" + this.f8119e + ", buildVersion=" + this.f + ", displayVersion=" + this.f8120g + ", session=" + this.f8121h + ", ndkPayload=" + this.f8122i + "}";
    }
}
