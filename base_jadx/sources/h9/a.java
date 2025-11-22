package h9;

import io.realm.exceptions.RealmException;
import io.realm.g0;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Util;
import io.realm.internal.c;
import io.realm.internal.o;
import io.realm.internal.p;
import io.realm.s0;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class a extends o {

    /* renamed from: a, reason: collision with root package name */
    public final Map<Class<? extends s0>, o> f7026a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f7027b = new HashMap();

    public a(o... oVarArr) {
        HashMap map = new HashMap();
        for (o oVar : oVarArr) {
            for (Class<? extends s0> cls : oVar.f()) {
                String strH = oVar.h(cls);
                Class cls2 = (Class) this.f7027b.get(strH);
                if (cls2 != null && !cls2.equals(cls)) {
                    throw new IllegalStateException(String.format("It is not allowed for two different model classes to share the same internal name in Realm. The classes %s and %s are being included from the modules '%s' and '%s' and they share the same internal name '%s'.", cls2, cls, map.get(cls2), oVar, strH));
                }
                map.put(cls, oVar);
                this.f7027b.put(strH, cls);
            }
        }
        this.f7026a = Collections.unmodifiableMap(map);
    }

    @Override // io.realm.internal.o
    public final s0 a(g0 g0Var, s0 s0Var, boolean z10, HashMap map, Set set) {
        return q(Util.a(s0Var.getClass())).a(g0Var, s0Var, z10, map, set);
    }

    @Override // io.realm.internal.o
    public final c b(Class<? extends s0> cls, OsSchemaInfo osSchemaInfo) {
        return q(cls).b(cls, osSchemaInfo);
    }

    @Override // io.realm.internal.o
    public final <T extends s0> Class<T> c(String str) {
        return q((Class) this.f7027b.get(str)).c(str);
    }

    @Override // io.realm.internal.o
    public final HashMap d() {
        HashMap map = new HashMap();
        Iterator<o> it = this.f7026a.values().iterator();
        while (it.hasNext()) {
            map.putAll(it.next().d());
        }
        return map;
    }

    @Override // io.realm.internal.o
    public final Set<Class<? extends s0>> f() {
        return this.f7026a.keySet();
    }

    @Override // io.realm.internal.o
    public final String i(Class<? extends s0> cls) {
        return q(cls).i(Util.a(cls));
    }

    @Override // io.realm.internal.o
    public final boolean j(Class<? extends s0> cls) {
        return q(cls).j(cls);
    }

    @Override // io.realm.internal.o
    public final long k(g0 g0Var, s0 s0Var, HashMap map) {
        return q(Util.a(s0Var.getClass())).k(g0Var, s0Var, map);
    }

    @Override // io.realm.internal.o
    public final void l(g0 g0Var, Collection<? extends s0> collection) {
        q(Util.a(Util.a(collection.iterator().next().getClass()))).l(g0Var, collection);
    }

    @Override // io.realm.internal.o
    public final <E extends s0> boolean m(Class<E> cls) {
        return q(Util.a(cls)).m(cls);
    }

    @Override // io.realm.internal.o
    public final <E extends s0> E n(Class<E> cls, Object obj, p pVar, c cVar, boolean z10, List<String> list) {
        return (E) q(cls).n(cls, obj, pVar, cVar, z10, list);
    }

    @Override // io.realm.internal.o
    public final boolean o() {
        Iterator<Map.Entry<Class<? extends s0>, o>> it = this.f7026a.entrySet().iterator();
        while (it.hasNext()) {
            if (!it.next().getValue().o()) {
                return false;
            }
        }
        return true;
    }

    @Override // io.realm.internal.o
    public final void p(g0 g0Var, s0 s0Var, s0 s0Var2, HashMap map, Set set) {
        q(Util.a(s0Var2.getClass())).p(g0Var, s0Var, s0Var2, map, set);
    }

    public final o q(Class<? extends s0> cls) {
        o oVar = this.f7026a.get(Util.a(cls));
        if (oVar != null) {
            return oVar;
        }
        throw new RealmException(cls.getSimpleName().concat(" is not part of the schema for this Realm"));
    }
}
