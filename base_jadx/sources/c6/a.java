package c6;

import cc.e0;
import cc.s1;
import java.util.Collection;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class a implements e, id.c {
    @Override // c6.e
    public Object a(Class cls) {
        a7.b bVarC = c(cls);
        if (bVarC == null) {
            return null;
        }
        return bVarC.get();
    }

    @Override // c6.e
    public Set h(Class cls) {
        return (Set) d(cls).get();
    }

    public abstract void k(ma.b bVar);

    public abstract int m();

    public abstract t1.v n();

    public abstract void o(ma.b bVar, ma.b bVar2);

    public abstract boolean p();

    public abstract s1 q(fc.h hVar);

    public abstract e0 r(fc.h hVar);

    public void s(ma.b member, Collection collection) {
        kotlin.jvm.internal.h.f(member, "member");
        member.w0(collection);
    }
}
