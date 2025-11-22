package io.realm;

import io.realm.internal.Table;
import io.realm.internal.Util;
import io.realm.internal.objectstore.OsKeyPathMapping;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public abstract class z0 {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f7908a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f7909b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f7910c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f7911d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public OsKeyPathMapping f7912e = null;
    public final a f;

    /* renamed from: g, reason: collision with root package name */
    public final io.realm.internal.b f7913g;

    public z0(a aVar, io.realm.internal.b bVar) {
        this.f = aVar;
        this.f7913g = bVar;
    }

    public final io.realm.internal.c a(Class<? extends s0> cls) {
        io.realm.internal.b bVar = this.f7913g;
        if (!(bVar != null)) {
            throw new IllegalStateException("Attempt to use column key before set.");
        }
        ConcurrentHashMap concurrentHashMap = bVar.f7649a;
        io.realm.internal.c cVar = (io.realm.internal.c) concurrentHashMap.get(cls);
        if (cVar != null) {
            return cVar;
        }
        io.realm.internal.c cVarB = bVar.f7650b.b(cls, bVar.f7651c);
        concurrentHashMap.put(cls, cVarB);
        return cVarB;
    }

    public final x0 b(Class<? extends s0> cls) {
        HashMap map = this.f7910c;
        x0 x0Var = (x0) map.get(cls);
        if (x0Var != null) {
            return x0Var;
        }
        Class<? extends s0> clsA = Util.a(cls);
        if (clsA.equals(cls)) {
            x0Var = (x0) map.get(clsA);
        }
        if (x0Var == null) {
            t tVar = new t(this.f, c(cls), a(clsA));
            map.put(clsA, tVar);
            x0Var = tVar;
        }
        if (clsA.equals(cls)) {
            map.put(cls, x0Var);
        }
        return x0Var;
    }

    public final Table c(Class<? extends s0> cls) {
        HashMap map = this.f7909b;
        Table table = (Table) map.get(cls);
        if (table != null) {
            return table;
        }
        Class<? extends s0> clsA = Util.a(cls);
        if (clsA.equals(cls)) {
            table = (Table) map.get(clsA);
        }
        if (table == null) {
            a aVar = this.f;
            io.realm.internal.o oVar = aVar.f7455c.f7751i;
            oVar.getClass();
            table = aVar.f7457e.getTable(Table.n(oVar.i(Util.a(clsA))));
            map.put(clsA, table);
        }
        if (clsA.equals(cls)) {
            map.put(cls, table);
        }
        return table;
    }

    public final Table d(String str) {
        String strN = Table.n(str);
        HashMap map = this.f7908a;
        Table table = (Table) map.get(strN);
        if (table != null) {
            return table;
        }
        Table table2 = this.f.f7457e.getTable(strN);
        map.put(strN, table2);
        return table2;
    }
}
