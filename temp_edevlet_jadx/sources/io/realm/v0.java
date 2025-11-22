package io.realm;

import io.realm.f0;
import io.realm.internal.OsObject;
import io.realm.internal.UncheckedRow;
import io.realm.log.RealmLog;
import java.util.Collections;

/* loaded from: classes2.dex */
public abstract class v0 implements s0 {
    static final String MSG_DELETED_OBJECT = "the object is already deleted.";
    static final String MSG_DYNAMIC_OBJECT = "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead.";
    static final String MSG_NULL_OBJECT = "'model' is null.";

    public static <E extends s0> void addChangeListener(E e10, n0<E> n0Var) {
        addChangeListener(e10, new f0.a(n0Var));
    }

    public static <E extends s0> void addChangeListener(E e10, w0<E> w0Var) {
        if (e10 == null) {
            throw new IllegalArgumentException("Object should not be null");
        }
        if (w0Var == null) {
            throw new IllegalArgumentException("Listener should not be null");
        }
        if (!(e10 instanceof io.realm.internal.n)) {
            throw new IllegalArgumentException("Cannot add listener from this unmanaged RealmObject (created outside of Realm)");
        }
        io.realm.internal.n nVar = (io.realm.internal.n) e10;
        a aVar = nVar.b().f7533e;
        aVar.b();
        ((e9.a) aVar.f7457e.capabilities).a("Listeners cannot be used on current thread.");
        f0 f0VarB = nVar.b();
        io.realm.internal.p pVar = f0VarB.f7531c;
        boolean z10 = pVar instanceof io.realm.internal.l;
        E e11 = f0VarB.f7529a;
        if (z10) {
            f0VarB.f7535h.a(new OsObject.b(e11, w0Var));
            return;
        }
        if (pVar instanceof UncheckedRow) {
            f0VarB.b();
            OsObject osObject = f0VarB.f7532d;
            if (osObject != null) {
                osObject.addListener(e11, w0Var);
            }
        }
    }

    public static <E extends s0> y8.d<j9.a<E>> asChangesetObservable(E e10) {
        if (!(e10 instanceof io.realm.internal.n)) {
            throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
        }
        a aVar = ((io.realm.internal.n) e10).b().f7533e;
        if (aVar instanceof g0) {
            ((j9.b) aVar.f7455c.b()).getClass();
            if (((g0) aVar).j()) {
                return new b9.d(new j9.a(e10));
            }
            j9.b.a();
            new b9.b();
            new b9.g();
            return new b9.h();
        }
        if (!(aVar instanceof n)) {
            throw new UnsupportedOperationException(aVar.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
        }
        n nVar = (n) aVar;
        p pVar = (p) e10;
        ((j9.b) aVar.f7455c.b()).getClass();
        if (nVar.j()) {
            return new b9.d(new j9.a(pVar));
        }
        j9.b.a();
        new b9.b();
        new b9.g();
        return new b9.h();
    }

    public static <E extends s0> y8.b<E> asFlowable(E e10) {
        if (!(e10 instanceof io.realm.internal.n)) {
            throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
        }
        a aVar = ((io.realm.internal.n) e10).b().f7533e;
        if (aVar instanceof g0) {
            ((j9.b) aVar.f7455c.b()).getClass();
            if (!((g0) aVar).j()) {
                j9.b.a();
                int r32 = y8.b.f19328a;
                return new a9.g(new a9.f(new a9.b()));
            }
            int r02 = y8.b.f19328a;
            if (e10 != null) {
                return new a9.d(e10);
            }
            throw new NullPointerException("item is null");
        }
        if (!(aVar instanceof n)) {
            throw new UnsupportedOperationException(aVar.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
        }
        n nVar = (n) aVar;
        p pVar = (p) e10;
        ((j9.b) aVar.f7455c.b()).getClass();
        if (!nVar.j()) {
            j9.b.a();
            int r33 = y8.b.f19328a;
            return new a9.g(new a9.f(new a9.b()));
        }
        int r03 = y8.b.f19328a;
        if (pVar != null) {
            return new a9.d(pVar);
        }
        throw new NullPointerException("item is null");
    }

    public static <E extends s0> void deleteFromRealm(E e10) {
        if (!(e10 instanceof io.realm.internal.n)) {
            throw new IllegalArgumentException("Object not managed by Realm, so it cannot be removed.");
        }
        io.realm.internal.n nVar = (io.realm.internal.n) e10;
        if (nVar.b().f7531c == null) {
            throw new IllegalStateException("Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
        }
        if (nVar.b().f7533e == null) {
            throw new IllegalStateException("Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
        }
        nVar.b().f7533e.b();
        io.realm.internal.p pVar = nVar.b().f7531c;
        pVar.q().r(pVar.Y());
        nVar.b().f7531c = io.realm.internal.g.f7661a;
    }

    public static <E extends s0> E freeze(E e10) {
        if (!(e10 instanceof io.realm.internal.n)) {
            throw new IllegalArgumentException("It is only possible to freeze valid managed Realm objects.");
        }
        io.realm.internal.n nVar = (io.realm.internal.n) e10;
        a aVar = nVar.b().f7533e;
        a aVarD = aVar.j() ? aVar : aVar.d();
        io.realm.internal.p pVarX = nVar.b().f7531c.X(aVarD.f7457e);
        if (aVarD instanceof n) {
            return new p(aVarD, pVarX);
        }
        if (!(aVarD instanceof g0)) {
            throw new UnsupportedOperationException("Unknown Realm type: ".concat(aVarD.getClass().getName()));
        }
        Class<? super Object> superclass = e10.getClass().getSuperclass();
        return (E) aVarD.f7455c.f7751i.n(superclass, aVarD, pVarX, aVar.i().a(superclass), false, Collections.emptyList());
    }

    public static g0 getRealm(s0 s0Var) {
        if (s0Var == null) {
            throw new IllegalArgumentException(MSG_NULL_OBJECT);
        }
        if (s0Var instanceof p) {
            throw new IllegalStateException(MSG_DYNAMIC_OBJECT);
        }
        if (!(s0Var instanceof io.realm.internal.n)) {
            return null;
        }
        a aVar = ((io.realm.internal.n) s0Var).b().f7533e;
        aVar.b();
        if (isValid(s0Var)) {
            return (g0) aVar;
        }
        throw new IllegalStateException(MSG_DELETED_OBJECT);
    }

    public static <E extends s0> boolean isFrozen(E e10) {
        if (e10 instanceof io.realm.internal.n) {
            return ((io.realm.internal.n) e10).b().f7533e.j();
        }
        return false;
    }

    public static <E extends s0> boolean isLoaded(E e10) {
        if (!(e10 instanceof io.realm.internal.n)) {
            return true;
        }
        io.realm.internal.n nVar = (io.realm.internal.n) e10;
        nVar.b().f7533e.b();
        return nVar.b().f7531c.F();
    }

    public static <E extends s0> boolean isManaged(E e10) {
        return e10 instanceof io.realm.internal.n;
    }

    public static <E extends s0> boolean isValid(E e10) {
        if (!(e10 instanceof io.realm.internal.n)) {
            return e10 != null;
        }
        io.realm.internal.p pVar = ((io.realm.internal.n) e10).b().f7531c;
        return pVar != null && pVar.isValid();
    }

    public static <E extends s0> boolean load(E e10) {
        if (isLoaded(e10)) {
            return true;
        }
        if (!(e10 instanceof io.realm.internal.n)) {
            return false;
        }
        io.realm.internal.p pVar = ((io.realm.internal.n) e10).b().f7531c;
        if (!(pVar instanceof io.realm.internal.l)) {
            return true;
        }
        ((io.realm.internal.l) pVar).getClass();
        throw new IllegalStateException("The query has been executed. This 'PendingRow' is not valid anymore.");
    }

    public static <E extends s0> void removeAllChangeListeners(E e10) {
        if (!(e10 instanceof io.realm.internal.n)) {
            throw new IllegalArgumentException("Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)");
        }
        io.realm.internal.n nVar = (io.realm.internal.n) e10;
        a aVar = nVar.b().f7533e;
        if (aVar.isClosed()) {
            RealmLog.a(5, null, "Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", aVar.f7455c.f7746c);
        }
        f0 f0VarB = nVar.b();
        OsObject osObject = f0VarB.f7532d;
        if (osObject != null) {
            osObject.removeListener(f0VarB.f7529a);
            return;
        }
        io.realm.internal.k<OsObject.b> kVar = f0VarB.f7535h;
        kVar.f7668b = true;
        kVar.f7667a.clear();
    }

    public static <E extends s0> void removeChangeListener(E e10, n0<E> n0Var) {
        removeChangeListener(e10, new f0.a(n0Var));
    }

    public static <E extends s0> void removeChangeListener(E e10, w0 w0Var) {
        if (e10 == null) {
            throw new IllegalArgumentException("Object should not be null");
        }
        if (w0Var == null) {
            throw new IllegalArgumentException("Listener should not be null");
        }
        if (!(e10 instanceof io.realm.internal.n)) {
            throw new IllegalArgumentException("Cannot remove listener from this unmanaged RealmObject (created outside of Realm)");
        }
        io.realm.internal.n nVar = (io.realm.internal.n) e10;
        a aVar = nVar.b().f7533e;
        if (aVar.isClosed()) {
            RealmLog.a(5, null, "Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", aVar.f7455c.f7746c);
        }
        f0 f0VarB = nVar.b();
        OsObject osObject = f0VarB.f7532d;
        E e11 = f0VarB.f7529a;
        if (osObject != null) {
            osObject.removeListener(e11, w0Var);
        } else {
            f0VarB.f7535h.d(e11, w0Var);
        }
    }

    public final <E extends s0> void addChangeListener(n0<E> n0Var) {
        addChangeListener(this, (n0<v0>) n0Var);
    }

    public final <E extends s0> void addChangeListener(w0<E> w0Var) {
        addChangeListener(this, (w0<v0>) w0Var);
    }

    public final <E extends v0> y8.d<j9.a<E>> asChangesetObservable() {
        return asChangesetObservable(this);
    }

    public final <E extends v0> y8.b<E> asFlowable() {
        return asFlowable(this);
    }

    public final void deleteFromRealm() {
        deleteFromRealm(this);
    }

    public final <E extends s0> E freeze() {
        return (E) freeze(this);
    }

    public g0 getRealm() {
        return getRealm(this);
    }

    public final boolean isFrozen() {
        return isFrozen(this);
    }

    public final boolean isLoaded() {
        return isLoaded(this);
    }

    public boolean isManaged() {
        return isManaged(this);
    }

    public final boolean isValid() {
        return isValid(this);
    }

    public final boolean load() {
        return load(this);
    }

    public final void removeAllChangeListeners() {
        removeAllChangeListeners(this);
    }

    public final void removeChangeListener(n0 n0Var) {
        removeChangeListener(this, (n0<v0>) n0Var);
    }

    public final void removeChangeListener(w0 w0Var) {
        removeChangeListener(this, w0Var);
    }
}
