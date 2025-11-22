package io.realm;

import io.realm.h0;
import io.realm.internal.OsObjectStore;
import io.realm.internal.Util;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class g {
    public static boolean a(a aVar, s0 s0Var, String str) {
        if (s0Var instanceof io.realm.internal.n) {
            io.realm.internal.n nVar = (io.realm.internal.n) s0Var;
            if (nVar instanceof p) {
                if (nVar.b().f7533e != aVar) {
                    if (aVar.f7454b == nVar.b().f7533e.f7454b) {
                        throw new IllegalArgumentException("Cannot pass DynamicRealmObject between Realm instances.");
                    }
                    throw new IllegalStateException("Cannot pass an object to a Realm instance created in another thread.");
                }
                f0<p> f0Var = ((p) s0Var).f7789a;
                f0Var.f7533e.b();
                String strF = f0Var.f7531c.q().f();
                if (str.equals(h0.class.getCanonicalName()) || str.equals(strF)) {
                    return false;
                }
                throw new IllegalArgumentException(String.format(Locale.US, "The object has a different type from %s's. Type of the %s is '%s', type of object is '%s'.", "list", "list", str, strF));
            }
            if (nVar.b().f7531c != null && nVar.b().f7533e.f7455c.f7746c.equals(aVar.f7455c.f7746c)) {
                if (aVar == nVar.b().f7533e) {
                    return false;
                }
                throw new IllegalArgumentException("Cannot pass an object from another Realm instance.");
            }
        }
        return true;
    }

    public static <E extends s0> E b(a aVar, E e10) {
        g0 g0Var = (g0) aVar;
        io.realm.internal.o oVar = g0Var.f7455c.f7751i;
        Class<?> cls = e10.getClass();
        oVar.getClass();
        return OsObjectStore.b(g0Var.f7457e, oVar.i(Util.a(cls))) != null ? (E) g0Var.p(e10, new v[0]) : (E) g0Var.o(e10, new v[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static h0 c(a aVar, h0 h0Var) {
        k0 k0Var = h0Var.f7550a;
        if (k0Var.f7681b == h0.a.OBJECT) {
            Class<?> clsC = k0Var.c();
            s0 s0Var = (s0) h0Var.f7550a.d(clsC);
            if (s0Var instanceof io.realm.internal.n) {
                io.realm.internal.n nVar = (io.realm.internal.n) s0Var;
                if (nVar instanceof p) {
                    if (nVar.b().f7533e == aVar) {
                        return h0Var;
                    }
                    if (aVar.f7454b == nVar.b().f7533e.f7454b) {
                        throw new IllegalArgumentException("Cannot copy DynamicRealmObject between Realm instances.");
                    }
                    throw new IllegalStateException("Cannot copy an object to a Realm instance created in another thread.");
                }
                if (aVar.i().b(clsC).f7895b.p()) {
                    throw new IllegalArgumentException("Embedded objects are not supported by RealmAny.");
                }
                if (nVar.b().f7531c != null && nVar.b().f7533e.f7455c.f7746c.equals(aVar.f7455c.f7746c)) {
                    if (aVar == nVar.b().f7533e) {
                        return h0Var;
                    }
                    throw new IllegalArgumentException("Cannot copy an object from another Realm instance.");
                }
            }
            s0 s0VarB = b(aVar, s0Var);
            h0Var = new h0(s0VarB == null ? new z() : new u0(s0VarB));
        }
        return h0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean d(io.realm.a r5, io.realm.s0 r6) {
        /*
            boolean r0 = r5 instanceof io.realm.g0
            if (r0 == 0) goto L17
            io.realm.z0 r5 = r5.i()
            java.lang.Class r6 = r6.getClass()
            io.realm.x0 r5 = r5.b(r6)
            io.realm.internal.Table r5 = r5.f7895b
            boolean r5 = r5.p()
            return r5
        L17:
            io.realm.p r6 = (io.realm.p) r6
            io.realm.f0<io.realm.p> r6 = r6.f7789a
            io.realm.a r0 = r6.f7533e
            r0.b()
            io.realm.internal.p r6 = r6.f7531c
            io.realm.internal.Table r6 = r6.q()
            java.lang.String r6 = r6.f()
            io.realm.z0 r5 = r5.i()
            r5.getClass()
            java.lang.String r0 = io.realm.internal.Table.n(r6)
            java.util.HashMap r1 = r5.f7911d
            java.lang.Object r2 = r1.get(r0)
            io.realm.x0 r2 = (io.realm.x0) r2
            if (r2 == 0) goto L51
            io.realm.internal.Table r3 = r2.f7895b
            boolean r4 = r3.q()
            if (r4 == 0) goto L51
            java.lang.String r3 = r3.f()
            boolean r3 = r3.equals(r6)
            if (r3 != 0) goto L69
        L51:
            io.realm.a r5 = r5.f
            io.realm.internal.OsSharedRealm r2 = r5.f7457e
            boolean r2 = r2.hasTable(r0)
            if (r2 == 0) goto L70
            io.realm.t r2 = new io.realm.t
            io.realm.internal.OsSharedRealm r6 = r5.f7457e
            io.realm.internal.Table r6 = r6.getTable(r0)
            r2.<init>(r5, r6)
            r1.put(r0, r2)
        L69:
            io.realm.internal.Table r5 = r2.f7895b
            boolean r5 = r5.p()
            return r5
        L70:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "The class "
            java.lang.String r1 = " doesn't exist in this Realm."
            java.lang.String r6 = androidx.browser.browseractions.a.a(r0, r6, r1)
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.g.d(io.realm.a, io.realm.s0):boolean");
    }

    public static void e(g0 g0Var, s0 s0Var, long j10) {
        io.realm.internal.o oVar = g0Var.f7455c.f7751i;
        Class<? extends s0> clsA = Util.a(s0Var.getClass());
        oVar.p(g0Var, s0Var, oVar.n(clsA, g0Var, g0Var.v(clsA).o(j10), g0Var.f7539j.a(clsA), true, Collections.EMPTY_LIST), new HashMap(), Collections.EMPTY_SET);
    }
}
