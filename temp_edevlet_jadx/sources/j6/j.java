package j6;

import androidx.annotation.NonNull;
import j6.a0;

/* loaded from: classes2.dex */
public final class j extends a0.e.c {

    /* renamed from: a, reason: collision with root package name */
    public final int f8177a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8178b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8179c;

    /* renamed from: d, reason: collision with root package name */
    public final long f8180d;

    /* renamed from: e, reason: collision with root package name */
    public final long f8181e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final int f8182g;

    /* renamed from: h, reason: collision with root package name */
    public final String f8183h;

    /* renamed from: i, reason: collision with root package name */
    public final String f8184i;

    public static final class a extends a0.e.c.a {

        /* renamed from: a, reason: collision with root package name */
        public Integer f8185a;

        /* renamed from: b, reason: collision with root package name */
        public String f8186b;

        /* renamed from: c, reason: collision with root package name */
        public Integer f8187c;

        /* renamed from: d, reason: collision with root package name */
        public Long f8188d;

        /* renamed from: e, reason: collision with root package name */
        public Long f8189e;
        public Boolean f;

        /* renamed from: g, reason: collision with root package name */
        public Integer f8190g;

        /* renamed from: h, reason: collision with root package name */
        public String f8191h;

        /* renamed from: i, reason: collision with root package name */
        public String f8192i;

        public final j a() {
            String strF = this.f8185a == null ? " arch" : "";
            if (this.f8186b == null) {
                strF = strF.concat(" model");
            }
            if (this.f8187c == null) {
                strF = android.support.v4.media.a.f(strF, " cores");
            }
            if (this.f8188d == null) {
                strF = android.support.v4.media.a.f(strF, " ram");
            }
            if (this.f8189e == null) {
                strF = android.support.v4.media.a.f(strF, " diskSpace");
            }
            if (this.f == null) {
                strF = android.support.v4.media.a.f(strF, " simulator");
            }
            if (this.f8190g == null) {
                strF = android.support.v4.media.a.f(strF, " state");
            }
            if (this.f8191h == null) {
                strF = android.support.v4.media.a.f(strF, " manufacturer");
            }
            if (this.f8192i == null) {
                strF = android.support.v4.media.a.f(strF, " modelClass");
            }
            if (strF.isEmpty()) {
                return new j(this.f8185a.intValue(), this.f8186b, this.f8187c.intValue(), this.f8188d.longValue(), this.f8189e.longValue(), this.f.booleanValue(), this.f8190g.intValue(), this.f8191h, this.f8192i);
            }
            throw new IllegalStateException("Missing required properties:".concat(strF));
        }
    }

    public j(int r12, String str, int r32, long j10, long j11, boolean z10, int r92, String str2, String str3) {
        this.f8177a = r12;
        this.f8178b = str;
        this.f8179c = r32;
        this.f8180d = j10;
        this.f8181e = j11;
        this.f = z10;
        this.f8182g = r92;
        this.f8183h = str2;
        this.f8184i = str3;
    }

    @Override // j6.a0.e.c
    @NonNull
    public final int a() {
        return this.f8177a;
    }

    @Override // j6.a0.e.c
    public final int b() {
        return this.f8179c;
    }

    @Override // j6.a0.e.c
    public final long c() {
        return this.f8181e;
    }

    @Override // j6.a0.e.c
    @NonNull
    public final String d() {
        return this.f8183h;
    }

    @Override // j6.a0.e.c
    @NonNull
    public final String e() {
        return this.f8178b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.e.c)) {
            return false;
        }
        a0.e.c cVar = (a0.e.c) obj;
        return this.f8177a == cVar.a() && this.f8178b.equals(cVar.e()) && this.f8179c == cVar.b() && this.f8180d == cVar.g() && this.f8181e == cVar.c() && this.f == cVar.i() && this.f8182g == cVar.h() && this.f8183h.equals(cVar.d()) && this.f8184i.equals(cVar.f());
    }

    @Override // j6.a0.e.c
    @NonNull
    public final String f() {
        return this.f8184i;
    }

    @Override // j6.a0.e.c
    public final long g() {
        return this.f8180d;
    }

    @Override // j6.a0.e.c
    public final int h() {
        return this.f8182g;
    }

    public final int hashCode() {
        int r02 = (((((this.f8177a ^ 1000003) * 1000003) ^ this.f8178b.hashCode()) * 1000003) ^ this.f8179c) * 1000003;
        long j10 = this.f8180d;
        int r03 = (r02 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f8181e;
        return ((((((((r03 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ (this.f ? 1231 : 1237)) * 1000003) ^ this.f8182g) * 1000003) ^ this.f8183h.hashCode()) * 1000003) ^ this.f8184i.hashCode();
    }

    @Override // j6.a0.e.c
    public final boolean i() {
        return this.f;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Device{arch=");
        sb2.append(this.f8177a);
        sb2.append(", model=");
        sb2.append(this.f8178b);
        sb2.append(", cores=");
        sb2.append(this.f8179c);
        sb2.append(", ram=");
        sb2.append(this.f8180d);
        sb2.append(", diskSpace=");
        sb2.append(this.f8181e);
        sb2.append(", simulator=");
        sb2.append(this.f);
        sb2.append(", state=");
        sb2.append(this.f8182g);
        sb2.append(", manufacturer=");
        sb2.append(this.f8183h);
        sb2.append(", modelClass=");
        return androidx.camera.camera2.internal.c.h(sb2, this.f8184i, "}");
    }
}
