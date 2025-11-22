package ya;

import ja.o;
import java.util.Iterator;
import lc.e;
import lc.w;
import lc.y;
import m9.t;
import na.h;
import p4.g7;
import x9.l;

/* loaded from: classes2.dex */
public final class e implements na.h {

    /* renamed from: a, reason: collision with root package name */
    public final g7 f19356a;

    /* renamed from: b, reason: collision with root package name */
    public final cb.d f19357b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f19358c;

    /* renamed from: d, reason: collision with root package name */
    public final bc.h<cb.a, na.c> f19359d;

    public static final class a extends kotlin.jvm.internal.j implements l<cb.a, na.c> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final na.c invoke(cb.a aVar) {
            cb.a annotation = aVar;
            kotlin.jvm.internal.h.f(annotation, "annotation");
            lb.f fVar = wa.c.f18835a;
            e eVar = e.this;
            return wa.c.b(eVar.f19356a, annotation, eVar.f19358c);
        }
    }

    public e(g7 c10, cb.d annotationOwner, boolean z10) {
        kotlin.jvm.internal.h.f(c10, "c");
        kotlin.jvm.internal.h.f(annotationOwner, "annotationOwner");
        this.f19356a = c10;
        this.f19357b = annotationOwner;
        this.f19358c = z10;
        this.f19359d = ((c) c10.f12358a).f19333a.e(new a());
    }

    @Override // na.h
    public final boolean P(lb.c cVar) {
        return h.b.b(this, cVar);
    }

    @Override // na.h
    public final boolean isEmpty() {
        cb.d dVar = this.f19357b;
        if (!dVar.getAnnotations().isEmpty()) {
            return false;
        }
        dVar.o();
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator<na.c> iterator() {
        cb.d dVar = this.f19357b;
        y yVarZ0 = w.Z0(t.U0(dVar.getAnnotations()), this.f19359d);
        lb.f fVar = wa.c.f18835a;
        return new e.a(w.W0(w.b1(yVarZ0, wa.c.a(o.a.f8383m, dVar, this.f19356a)), lc.t.f9739a));
    }

    @Override // na.h
    public final na.c n(lb.c fqName) {
        na.c cVarInvoke;
        kotlin.jvm.internal.h.f(fqName, "fqName");
        cb.d dVar = this.f19357b;
        cb.a aVarN = dVar.n(fqName);
        if (aVarN != null && (cVarInvoke = this.f19359d.invoke(aVarN)) != null) {
            return cVarInvoke;
        }
        lb.f fVar = wa.c.f18835a;
        return wa.c.a(fqName, dVar, this.f19356a);
    }
}
