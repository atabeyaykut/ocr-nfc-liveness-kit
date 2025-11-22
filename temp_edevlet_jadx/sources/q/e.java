package q;

import q.a;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: c, reason: collision with root package name */
    public static final e f13260c;

    /* renamed from: a, reason: collision with root package name */
    public final a f13261a;

    /* renamed from: b, reason: collision with root package name */
    public final a f13262b;

    static {
        a.b bVar = a.b.f13255a;
        f13260c = new e(bVar, bVar);
    }

    public e(a aVar, a aVar2) {
        this.f13261a = aVar;
        this.f13262b = aVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return kotlin.jvm.internal.h.a(this.f13261a, eVar.f13261a) && kotlin.jvm.internal.h.a(this.f13262b, eVar.f13262b);
    }

    public final int hashCode() {
        return this.f13262b.hashCode() + (this.f13261a.hashCode() * 31);
    }

    public final String toString() {
        return "Size(width=" + this.f13261a + ", height=" + this.f13262b + ')';
    }
}
