package t2;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class c extends a {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f15597a;

    /* renamed from: b, reason: collision with root package name */
    public final String f15598b;

    /* renamed from: c, reason: collision with root package name */
    public final String f15599c;

    /* renamed from: d, reason: collision with root package name */
    public final String f15600d;

    /* renamed from: e, reason: collision with root package name */
    public final String f15601e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f15602g;

    /* renamed from: h, reason: collision with root package name */
    public final String f15603h;

    /* renamed from: i, reason: collision with root package name */
    public final String f15604i;

    /* renamed from: j, reason: collision with root package name */
    public final String f15605j;

    /* renamed from: k, reason: collision with root package name */
    public final String f15606k;

    /* renamed from: l, reason: collision with root package name */
    public final String f15607l;

    public c(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f15597a = num;
        this.f15598b = str;
        this.f15599c = str2;
        this.f15600d = str3;
        this.f15601e = str4;
        this.f = str5;
        this.f15602g = str6;
        this.f15603h = str7;
        this.f15604i = str8;
        this.f15605j = str9;
        this.f15606k = str10;
        this.f15607l = str11;
    }

    @Override // t2.a
    @Nullable
    public final String a() {
        return this.f15607l;
    }

    @Override // t2.a
    @Nullable
    public final String b() {
        return this.f15605j;
    }

    @Override // t2.a
    @Nullable
    public final String c() {
        return this.f15600d;
    }

    @Override // t2.a
    @Nullable
    public final String d() {
        return this.f15603h;
    }

    @Override // t2.a
    @Nullable
    public final String e() {
        return this.f15599c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        Integer num = this.f15597a;
        if (num != null ? num.equals(aVar.l()) : aVar.l() == null) {
            String str = this.f15598b;
            if (str != null ? str.equals(aVar.i()) : aVar.i() == null) {
                String str2 = this.f15599c;
                if (str2 != null ? str2.equals(aVar.e()) : aVar.e() == null) {
                    String str3 = this.f15600d;
                    if (str3 != null ? str3.equals(aVar.c()) : aVar.c() == null) {
                        String str4 = this.f15601e;
                        if (str4 != null ? str4.equals(aVar.k()) : aVar.k() == null) {
                            String str5 = this.f;
                            if (str5 != null ? str5.equals(aVar.j()) : aVar.j() == null) {
                                String str6 = this.f15602g;
                                if (str6 != null ? str6.equals(aVar.g()) : aVar.g() == null) {
                                    String str7 = this.f15603h;
                                    if (str7 != null ? str7.equals(aVar.d()) : aVar.d() == null) {
                                        String str8 = this.f15604i;
                                        if (str8 != null ? str8.equals(aVar.f()) : aVar.f() == null) {
                                            String str9 = this.f15605j;
                                            if (str9 != null ? str9.equals(aVar.b()) : aVar.b() == null) {
                                                String str10 = this.f15606k;
                                                if (str10 != null ? str10.equals(aVar.h()) : aVar.h() == null) {
                                                    String str11 = this.f15607l;
                                                    String strA = aVar.a();
                                                    if (str11 == null) {
                                                        if (strA == null) {
                                                            return true;
                                                        }
                                                    } else if (str11.equals(strA)) {
                                                        return true;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // t2.a
    @Nullable
    public final String f() {
        return this.f15604i;
    }

    @Override // t2.a
    @Nullable
    public final String g() {
        return this.f15602g;
    }

    @Override // t2.a
    @Nullable
    public final String h() {
        return this.f15606k;
    }

    public final int hashCode() {
        Integer num = this.f15597a;
        int r12 = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.f15598b;
        int r13 = (r12 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f15599c;
        int r14 = (r13 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f15600d;
        int r15 = (r14 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f15601e;
        int r16 = (r15 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.f;
        int r17 = (r16 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.f15602g;
        int r18 = (r17 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.f15603h;
        int r19 = (r18 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.f15604i;
        int r110 = (r19 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.f15605j;
        int r111 = (r110 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.f15606k;
        int r112 = (r111 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.f15607l;
        return (str11 != null ? str11.hashCode() : 0) ^ r112;
    }

    @Override // t2.a
    @Nullable
    public final String i() {
        return this.f15598b;
    }

    @Override // t2.a
    @Nullable
    public final String j() {
        return this.f;
    }

    @Override // t2.a
    @Nullable
    public final String k() {
        return this.f15601e;
    }

    @Override // t2.a
    @Nullable
    public final Integer l() {
        return this.f15597a;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("AndroidClientInfo{sdkVersion=");
        sb2.append(this.f15597a);
        sb2.append(", model=");
        sb2.append(this.f15598b);
        sb2.append(", hardware=");
        sb2.append(this.f15599c);
        sb2.append(", device=");
        sb2.append(this.f15600d);
        sb2.append(", product=");
        sb2.append(this.f15601e);
        sb2.append(", osBuild=");
        sb2.append(this.f);
        sb2.append(", manufacturer=");
        sb2.append(this.f15602g);
        sb2.append(", fingerprint=");
        sb2.append(this.f15603h);
        sb2.append(", locale=");
        sb2.append(this.f15604i);
        sb2.append(", country=");
        sb2.append(this.f15605j);
        sb2.append(", mccMnc=");
        sb2.append(this.f15606k);
        sb2.append(", applicationBuild=");
        return androidx.camera.camera2.internal.c.h(sb2, this.f15607l, "}");
    }
}
