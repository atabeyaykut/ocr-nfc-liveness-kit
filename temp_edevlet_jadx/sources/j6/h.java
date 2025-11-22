package j6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j6.a0;

/* loaded from: classes2.dex */
public final class h extends a0.e.a {

    /* renamed from: a, reason: collision with root package name */
    public final String f8171a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8172b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8173c;

    /* renamed from: d, reason: collision with root package name */
    public final a0.e.a.AbstractC0136a f8174d = null;

    /* renamed from: e, reason: collision with root package name */
    public final String f8175e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f8176g;

    public h(String str, String str2, String str3, String str4, String str5, String str6) {
        this.f8171a = str;
        this.f8172b = str2;
        this.f8173c = str3;
        this.f8175e = str4;
        this.f = str5;
        this.f8176g = str6;
    }

    @Override // j6.a0.e.a
    @Nullable
    public final String a() {
        return this.f;
    }

    @Override // j6.a0.e.a
    @Nullable
    public final String b() {
        return this.f8176g;
    }

    @Override // j6.a0.e.a
    @Nullable
    public final String c() {
        return this.f8173c;
    }

    @Override // j6.a0.e.a
    @NonNull
    public final String d() {
        return this.f8171a;
    }

    @Override // j6.a0.e.a
    @Nullable
    public final String e() {
        return this.f8175e;
    }

    public final boolean equals(Object obj) {
        String str;
        a0.e.a.AbstractC0136a abstractC0136a;
        String str2;
        String str3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.e.a)) {
            return false;
        }
        a0.e.a aVar = (a0.e.a) obj;
        if (this.f8171a.equals(aVar.d()) && this.f8172b.equals(aVar.g()) && ((str = this.f8173c) != null ? str.equals(aVar.c()) : aVar.c() == null) && ((abstractC0136a = this.f8174d) != null ? abstractC0136a.equals(aVar.f()) : aVar.f() == null) && ((str2 = this.f8175e) != null ? str2.equals(aVar.e()) : aVar.e() == null) && ((str3 = this.f) != null ? str3.equals(aVar.a()) : aVar.a() == null)) {
            String str4 = this.f8176g;
            String strB = aVar.b();
            if (str4 == null) {
                if (strB == null) {
                    return true;
                }
            } else if (str4.equals(strB)) {
                return true;
            }
        }
        return false;
    }

    @Override // j6.a0.e.a
    @Nullable
    public final a0.e.a.AbstractC0136a f() {
        return this.f8174d;
    }

    @Override // j6.a0.e.a
    @NonNull
    public final String g() {
        return this.f8172b;
    }

    public final int hashCode() {
        int r02 = (((this.f8171a.hashCode() ^ 1000003) * 1000003) ^ this.f8172b.hashCode()) * 1000003;
        String str = this.f8173c;
        int r03 = (r02 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        a0.e.a.AbstractC0136a abstractC0136a = this.f8174d;
        int r04 = (r03 ^ (abstractC0136a == null ? 0 : abstractC0136a.hashCode())) * 1000003;
        String str2 = this.f8175e;
        int r05 = (r04 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f;
        int r06 = (r05 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f8176g;
        return r06 ^ (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Application{identifier=");
        sb2.append(this.f8171a);
        sb2.append(", version=");
        sb2.append(this.f8172b);
        sb2.append(", displayVersion=");
        sb2.append(this.f8173c);
        sb2.append(", organization=");
        sb2.append(this.f8174d);
        sb2.append(", installationUuid=");
        sb2.append(this.f8175e);
        sb2.append(", developmentPlatform=");
        sb2.append(this.f);
        sb2.append(", developmentPlatformVersion=");
        return androidx.camera.camera2.internal.c.h(sb2, this.f8176g, "}");
    }
}
