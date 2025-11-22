package lb;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final c f9660a;

    /* renamed from: b, reason: collision with root package name */
    public final c f9661b;

    /* renamed from: c, reason: collision with root package name */
    public final f f9662c;

    /* renamed from: d, reason: collision with root package name */
    public final c f9663d;

    static {
        c.j(h.f);
    }

    public a(c packageName, f fVar) {
        kotlin.jvm.internal.h.f(packageName, "packageName");
        this.f9660a = packageName;
        this.f9661b = null;
        this.f9662c = fVar;
        this.f9663d = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return kotlin.jvm.internal.h.a(this.f9660a, aVar.f9660a) && kotlin.jvm.internal.h.a(this.f9661b, aVar.f9661b) && kotlin.jvm.internal.h.a(this.f9662c, aVar.f9662c) && kotlin.jvm.internal.h.a(this.f9663d, aVar.f9663d);
    }

    public final int hashCode() {
        int r02 = this.f9660a.hashCode() * 31;
        c cVar = this.f9661b;
        int r22 = (this.f9662c.hashCode() + ((r02 + (cVar == null ? 0 : cVar.hashCode())) * 31)) * 31;
        c cVar2 = this.f9663d;
        return r22 + (cVar2 != null ? cVar2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(mc.j.B(this.f9660a.b(), '.', '/'));
        sb2.append("/");
        c cVar = this.f9661b;
        if (cVar != null) {
            sb2.append(cVar);
            sb2.append(".");
        }
        sb2.append(this.f9662c);
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
