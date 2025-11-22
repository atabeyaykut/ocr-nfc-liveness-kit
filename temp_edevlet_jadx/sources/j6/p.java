package j6;

import androidx.annotation.NonNull;
import j6.a0;

/* loaded from: classes2.dex */
public final class p extends a0.e.d.a.b.c {

    /* renamed from: a, reason: collision with root package name */
    public final String f8231a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8232b;

    /* renamed from: c, reason: collision with root package name */
    public final long f8233c;

    public p(String str, String str2, long j10) {
        this.f8231a = str;
        this.f8232b = str2;
        this.f8233c = j10;
    }

    @Override // j6.a0.e.d.a.b.c
    @NonNull
    public final long a() {
        return this.f8233c;
    }

    @Override // j6.a0.e.d.a.b.c
    @NonNull
    public final String b() {
        return this.f8232b;
    }

    @Override // j6.a0.e.d.a.b.c
    @NonNull
    public final String c() {
        return this.f8231a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.e.d.a.b.c)) {
            return false;
        }
        a0.e.d.a.b.c cVar = (a0.e.d.a.b.c) obj;
        return this.f8231a.equals(cVar.c()) && this.f8232b.equals(cVar.b()) && this.f8233c == cVar.a();
    }

    public final int hashCode() {
        int r02 = (((this.f8231a.hashCode() ^ 1000003) * 1000003) ^ this.f8232b.hashCode()) * 1000003;
        long j10 = this.f8233c;
        return r02 ^ ((int) ((j10 >>> 32) ^ j10));
    }

    public final String toString() {
        return "Signal{name=" + this.f8231a + ", code=" + this.f8232b + ", address=" + this.f8233c + "}";
    }
}
