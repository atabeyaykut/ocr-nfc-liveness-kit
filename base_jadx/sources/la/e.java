package la;

import ja.o;
import java.util.Collection;
import kotlin.jvm.internal.w;
import m9.x;
import ma.b0;
import pa.g0;

/* loaded from: classes2.dex */
public final class e implements oa.b {

    /* renamed from: g, reason: collision with root package name */
    public static final lb.f f9617g;

    /* renamed from: h, reason: collision with root package name */
    public static final lb.b f9618h;

    /* renamed from: a, reason: collision with root package name */
    public final b0 f9619a;

    /* renamed from: b, reason: collision with root package name */
    public final x9.l<b0, ma.j> f9620b;

    /* renamed from: c, reason: collision with root package name */
    public final bc.i f9621c;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f9616e = {w.c(new kotlin.jvm.internal.r(w.a(e.class), "cloneable", "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"))};

    /* renamed from: d, reason: collision with root package name */
    public static final a f9615d = new a();
    public static final lb.c f = ja.o.f8364k;

    public static final class a {
    }

    static {
        lb.d dVar = o.a.f8373c;
        lb.f fVarG = dVar.g();
        kotlin.jvm.internal.h.e(fVarG, "cloneable.shortName()");
        f9617g = fVarG;
        f9618h = lb.b.l(dVar.h());
    }

    public e() {
        throw null;
    }

    public e(bc.l lVar, g0 g0Var) {
        d computeContainingDeclaration = d.f9614a;
        kotlin.jvm.internal.h.f(computeContainingDeclaration, "computeContainingDeclaration");
        this.f9619a = g0Var;
        this.f9620b = computeContainingDeclaration;
        this.f9621c = lVar.d(new f(this, lVar));
    }

    @Override // oa.b
    public final ma.e a(lb.b classId) {
        kotlin.jvm.internal.h.f(classId, "classId");
        if (!kotlin.jvm.internal.h.a(classId, f9618h)) {
            return null;
        }
        return (pa.n) b8.f.O(this.f9621c, f9616e[0]);
    }

    @Override // oa.b
    public final Collection<ma.e> b(lb.c packageFqName) {
        kotlin.jvm.internal.h.f(packageFqName, "packageFqName");
        if (!kotlin.jvm.internal.h.a(packageFqName, f)) {
            return x.f10175a;
        }
        return x5.a.r((pa.n) b8.f.O(this.f9621c, f9616e[0]));
    }

    @Override // oa.b
    public final boolean c(lb.c packageFqName, lb.f name) {
        kotlin.jvm.internal.h.f(packageFqName, "packageFqName");
        kotlin.jvm.internal.h.f(name, "name");
        return kotlin.jvm.internal.h.a(name, f9617g) && kotlin.jvm.internal.h.a(packageFqName, f);
    }
}
