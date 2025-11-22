package j6;

import j6.c0;

/* loaded from: classes2.dex */
public final class z extends c0.c {

    /* renamed from: a, reason: collision with root package name */
    public final String f8283a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8284b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f8285c;

    public z(String str, String str2, boolean z10) {
        if (str == null) {
            throw new NullPointerException("Null osRelease");
        }
        this.f8283a = str;
        if (str2 == null) {
            throw new NullPointerException("Null osCodeName");
        }
        this.f8284b = str2;
        this.f8285c = z10;
    }

    @Override // j6.c0.c
    public final boolean a() {
        return this.f8285c;
    }

    @Override // j6.c0.c
    public final String b() {
        return this.f8284b;
    }

    @Override // j6.c0.c
    public final String c() {
        return this.f8283a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c0.c)) {
            return false;
        }
        c0.c cVar = (c0.c) obj;
        return this.f8283a.equals(cVar.c()) && this.f8284b.equals(cVar.b()) && this.f8285c == cVar.a();
    }

    public final int hashCode() {
        return ((((this.f8283a.hashCode() ^ 1000003) * 1000003) ^ this.f8284b.hashCode()) * 1000003) ^ (this.f8285c ? 1231 : 1237);
    }

    public final String toString() {
        return "OsData{osRelease=" + this.f8283a + ", osCodeName=" + this.f8284b + ", isRooted=" + this.f8285c + "}";
    }
}
