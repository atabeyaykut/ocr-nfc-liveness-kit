package j;

/* loaded from: classes.dex */
public final class l extends g {

    /* renamed from: a, reason: collision with root package name */
    public final g.l f7947a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7948b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7949c;

    public l(g.l lVar, String str, int r32) {
        this.f7947a = lVar;
        this.f7948b = str;
        this.f7949c = r32;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            if (kotlin.jvm.internal.h.a(this.f7947a, lVar.f7947a) && kotlin.jvm.internal.h.a(this.f7948b, lVar.f7948b) && this.f7949c == lVar.f7949c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int r02 = this.f7947a.hashCode() * 31;
        String str = this.f7948b;
        return g.d.c(this.f7949c) + ((r02 + (str == null ? 0 : str.hashCode())) * 31);
    }
}
