package h9;

import io.realm.g0;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Util;
import io.realm.internal.c;
import io.realm.internal.o;
import io.realm.internal.p;
import io.realm.s0;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class b extends o {

    /* renamed from: a, reason: collision with root package name */
    public final o f7028a;

    /* renamed from: b, reason: collision with root package name */
    public final Set<Class<? extends s0>> f7029b;

    public b(o oVar, HashSet hashSet) {
        this.f7028a = oVar;
        HashSet hashSet2 = new HashSet();
        if (oVar != null) {
            Set<Class<? extends s0>> setF = oVar.f();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                Class cls = (Class) it.next();
                if (setF.contains(cls)) {
                    hashSet2.add(cls);
                }
            }
        }
        this.f7029b = Collections.unmodifiableSet(hashSet2);
    }

    @Override // io.realm.internal.o
    public final s0 a(g0 g0Var, s0 s0Var, boolean z10, HashMap map, Set set) {
        q(Util.a(s0Var.getClass()));
        return this.f7028a.a(g0Var, s0Var, z10, map, set);
    }

    @Override // io.realm.internal.o
    public final c b(Class<? extends s0> cls, OsSchemaInfo osSchemaInfo) {
        q(cls);
        return this.f7028a.b(cls, osSchemaInfo);
    }

    @Override // io.realm.internal.o
    public final <T extends s0> Class<T> c(String str) {
        return this.f7028a.c(str);
    }

    @Override // io.realm.internal.o
    public final HashMap d() {
        HashMap map = new HashMap();
        for (Map.Entry entry : this.f7028a.d().entrySet()) {
            if (this.f7029b.contains(entry.getKey())) {
                map.put((Class) entry.getKey(), (OsObjectSchemaInfo) entry.getValue());
            }
        }
        return map;
    }

    @Override // io.realm.internal.o
    public final Set<Class<? extends s0>> f() {
        return this.f7029b;
    }

    @Override // io.realm.internal.o
    public final String i(Class<? extends s0> cls) {
        q(cls);
        o oVar = this.f7028a;
        oVar.getClass();
        return oVar.i(Util.a(cls));
    }

    @Override // io.realm.internal.o
    public final boolean j(Class<? extends s0> cls) {
        return this.f7028a.j(cls);
    }

    @Override // io.realm.internal.o
    public final long k(g0 g0Var, s0 s0Var, HashMap map) {
        q(Util.a(s0Var.getClass()));
        return this.f7028a.k(g0Var, s0Var, map);
    }

    @Override // io.realm.internal.o
    public final void l(g0 g0Var, Collection<? extends s0> collection) {
        q(Util.a(collection.iterator().next().getClass()));
        this.f7028a.l(g0Var, collection);
    }

    @Override // io.realm.internal.o
    public final <E extends s0> boolean m(Class<E> cls) {
        q(Util.a(cls));
        return this.f7028a.m(cls);
    }

    @Override // io.realm.internal.o
    public final <E extends s0> E n(Class<E> cls, Object obj, p pVar, c cVar, boolean z10, List<String> list) {
        q(cls);
        return (E) this.f7028a.n(cls, obj, pVar, cVar, z10, list);
    }

    @Override // io.realm.internal.o
    public final boolean o() {
        o oVar = this.f7028a;
        if (oVar == null) {
            return true;
        }
        return oVar.o();
    }

    @Override // io.realm.internal.o
    public final void p(g0 g0Var, s0 s0Var, s0 s0Var2, HashMap map, Set set) {
        q(Util.a(s0Var2.getClass()));
        this.f7028a.p(g0Var, s0Var, s0Var2, map, set);
    }

    public final void q(Class<? extends s0> cls) {
        if (!this.f7029b.contains(cls)) {
            throw new IllegalArgumentException(cls.getSimpleName().concat(" is not part of the schema for this Realm"));
        }
    }
}
