package j6;

import j6.c0;

/* loaded from: classes2.dex */
public final class y extends c0.b {

    /* renamed from: a, reason: collision with root package name */
    public final int f8275a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8276b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8277c;

    /* renamed from: d, reason: collision with root package name */
    public final long f8278d;

    /* renamed from: e, reason: collision with root package name */
    public final long f8279e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final int f8280g;

    /* renamed from: h, reason: collision with root package name */
    public final String f8281h;

    /* renamed from: i, reason: collision with root package name */
    public final String f8282i;

    public y(int r12, String str, int r32, long j10, long j11, boolean z10, int r92, String str2, String str3) {
        this.f8275a = r12;
        if (str == null) {
            throw new NullPointerException("Null model");
        }
        this.f8276b = str;
        this.f8277c = r32;
        this.f8278d = j10;
        this.f8279e = j11;
        this.f = z10;
        this.f8280g = r92;
        if (str2 == null) {
            throw new NullPointerException("Null manufacturer");
        }
        this.f8281h = str2;
        if (str3 == null) {
            throw new NullPointerException("Null modelClass");
        }
        this.f8282i = str3;
    }

    @Override // j6.c0.b
    public final int a() {
        return this.f8275a;
    }

    @Override // j6.c0.b
    public final int b() {
        return this.f8277c;
    }

    @Override // j6.c0.b
    public final long c() {
        return this.f8279e;
    }

    @Override // j6.c0.b
    public final boolean d() {
        return this.f;
    }

    @Override // j6.c0.b
    public final String e() {
        return this.f8281h;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c0.b)) {
            return false;
        }
        c0.b bVar = (c0.b) obj;
        return this.f8275a == bVar.a() && this.f8276b.equals(bVar.f()) && this.f8277c == bVar.b() && this.f8278d == bVar.i() && this.f8279e == bVar.c() && this.f == bVar.d() && this.f8280g == bVar.h() && this.f8281h.equals(bVar.e()) && this.f8282i.equals(bVar.g());
    }

    @Override // j6.c0.b
    public final String f() {
        return this.f8276b;
    }

    @Override // j6.c0.b
    public final String g() {
        return this.f8282i;
    }

    @Override // j6.c0.b
    public final int h() {
        return this.f8280g;
    }

    public final int hashCode() {
        int r02 = (((((this.f8275a ^ 1000003) * 1000003) ^ this.f8276b.hashCode()) * 1000003) ^ this.f8277c) * 1000003;
        long j10 = this.f8278d;
        int r03 = (r02 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f8279e;
        return ((((((((r03 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ (this.f ? 1231 : 1237)) * 1000003) ^ this.f8280g) * 1000003) ^ this.f8281h.hashCode()) * 1000003) ^ this.f8282i.hashCode();
    }

    @Override // j6.c0.b
    public final long i() {
        return this.f8278d;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("DeviceData{arch=");
        sb2.append(this.f8275a);
        sb2.append(", model=");
        sb2.append(this.f8276b);
        sb2.append(", availableProcessors=");
        sb2.append(this.f8277c);
        sb2.append(", totalRam=");
        sb2.append(this.f8278d);
        sb2.append(", diskSpace=");
        sb2.append(this.f8279e);
        sb2.append(", isEmulator=");
        sb2.append(this.f);
        sb2.append(", state=");
        sb2.append(this.f8280g);
        sb2.append(", manufacturer=");
        sb2.append(this.f8281h);
        sb2.append(", modelClass=");
        return androidx.camera.camera2.internal.c.h(sb2, this.f8282i, "}");
    }
}
