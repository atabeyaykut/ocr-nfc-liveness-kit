package j6;

import j6.c0;

/* loaded from: classes2.dex */
public final class x extends c0.a {

    /* renamed from: a, reason: collision with root package name */
    public final String f8270a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8271b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8272c;

    /* renamed from: d, reason: collision with root package name */
    public final String f8273d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8274e;
    public final e6.d f;

    public x(String str, String str2, String str3, String str4, int r52, e6.d dVar) {
        if (str == null) {
            throw new NullPointerException("Null appIdentifier");
        }
        this.f8270a = str;
        if (str2 == null) {
            throw new NullPointerException("Null versionCode");
        }
        this.f8271b = str2;
        if (str3 == null) {
            throw new NullPointerException("Null versionName");
        }
        this.f8272c = str3;
        if (str4 == null) {
            throw new NullPointerException("Null installUuid");
        }
        this.f8273d = str4;
        this.f8274e = r52;
        if (dVar == null) {
            throw new NullPointerException("Null developmentPlatformProvider");
        }
        this.f = dVar;
    }

    @Override // j6.c0.a
    public final String a() {
        return this.f8270a;
    }

    @Override // j6.c0.a
    public final int b() {
        return this.f8274e;
    }

    @Override // j6.c0.a
    public final e6.d c() {
        return this.f;
    }

    @Override // j6.c0.a
    public final String d() {
        return this.f8273d;
    }

    @Override // j6.c0.a
    public final String e() {
        return this.f8271b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c0.a)) {
            return false;
        }
        c0.a aVar = (c0.a) obj;
        return this.f8270a.equals(aVar.a()) && this.f8271b.equals(aVar.e()) && this.f8272c.equals(aVar.f()) && this.f8273d.equals(aVar.d()) && this.f8274e == aVar.b() && this.f.equals(aVar.c());
    }

    @Override // j6.c0.a
    public final String f() {
        return this.f8272c;
    }

    public final int hashCode() {
        return ((((((((((this.f8270a.hashCode() ^ 1000003) * 1000003) ^ this.f8271b.hashCode()) * 1000003) ^ this.f8272c.hashCode()) * 1000003) ^ this.f8273d.hashCode()) * 1000003) ^ this.f8274e) * 1000003) ^ this.f.hashCode();
    }

    public final String toString() {
        return "AppData{appIdentifier=" + this.f8270a + ", versionCode=" + this.f8271b + ", versionName=" + this.f8272c + ", installUuid=" + this.f8273d + ", deliveryMechanism=" + this.f8274e + ", developmentPlatformProvider=" + this.f + "}";
    }
}
