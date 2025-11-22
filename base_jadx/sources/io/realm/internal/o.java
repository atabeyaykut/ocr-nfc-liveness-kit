package io.realm.internal;

import io.realm.exceptions.RealmException;
import io.realm.g0;
import io.realm.s0;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class o {
    public static RealmException e(Class<? extends s0> cls) {
        return new RealmException(String.format("'%s' is not part of the schema for this Realm.", cls.toString()));
    }

    public static IllegalStateException g(String str) {
        return new IllegalStateException("This class is not marked embedded: ".concat(str));
    }

    public abstract s0 a(g0 g0Var, s0 s0Var, boolean z10, HashMap map, Set set);

    public abstract c b(Class<? extends s0> cls, OsSchemaInfo osSchemaInfo);

    public abstract <T extends s0> Class<T> c(String str);

    public abstract HashMap d();

    public final boolean equals(Object obj) {
        if (obj instanceof o) {
            return f().equals(((o) obj).f());
        }
        return false;
    }

    public abstract Set<Class<? extends s0>> f();

    public final String h(Class<? extends s0> cls) {
        return i(Util.a(cls));
    }

    public final int hashCode() {
        return f().hashCode();
    }

    public abstract String i(Class<? extends s0> cls);

    public abstract boolean j(Class<? extends s0> cls);

    public abstract long k(g0 g0Var, s0 s0Var, HashMap map);

    public abstract void l(g0 g0Var, Collection<? extends s0> collection);

    public abstract <E extends s0> boolean m(Class<E> cls);

    public abstract <E extends s0> E n(Class<E> cls, Object obj, p pVar, c cVar, boolean z10, List<String> list);

    public boolean o() {
        return false;
    }

    public abstract void p(g0 g0Var, s0 s0Var, s0 s0Var2, HashMap map, Set set);
}
