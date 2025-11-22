package q;

/* loaded from: classes.dex */
public final class c implements f {

    /* renamed from: a, reason: collision with root package name */
    public final e f13257a;

    public c(e eVar) {
        this.f13257a = eVar;
    }

    @Override // q.f
    public final Object b(e.i iVar) {
        return this.f13257a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            if (kotlin.jvm.internal.h.a(this.f13257a, ((c) obj).f13257a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f13257a.hashCode();
    }
}
