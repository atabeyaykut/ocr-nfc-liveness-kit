package ma;

import cc.l1;
import cc.p1;
import java.util.Collection;
import java.util.List;
import ma.b;

/* loaded from: classes2.dex */
public interface u extends b {

    public interface a<D extends u> {
        a<D> a(a0 a0Var);

        a<D> b(j jVar);

        D build();

        a<D> c(List<a1> list);

        a d(Boolean bool);

        a<D> e(lb.f fVar);

        a<D> f();

        a<D> g(l1 l1Var);

        a h(d dVar);

        a<D> i();

        a<D> j(na.h hVar);

        a k();

        a l();

        a<D> m(o0 o0Var);

        a<D> n(cc.e0 e0Var);

        a<D> o();

        a<D> p(b.a aVar);

        a<D> q(q qVar);

        a<D> r();
    }

    boolean B0();

    boolean L();

    u Y();

    @Override // ma.b, ma.a, ma.j
    u a();

    @Override // ma.k, ma.j
    j b();

    u c(p1 p1Var);

    @Override // ma.b, ma.a
    Collection<? extends u> e();

    boolean isInfix();

    boolean isInline();

    boolean isOperator();

    boolean isSuspend();

    a<? extends u> r();

    boolean v0();
}
