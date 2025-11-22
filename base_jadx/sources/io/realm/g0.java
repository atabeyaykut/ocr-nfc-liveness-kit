package io.realm;

import android.os.Looper;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.exceptions.RealmPrimaryKeyConstraintException;
import io.realm.internal.CheckedRow;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Table;
import io.realm.internal.Util;
import io.realm.log.RealmLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes2.dex */
public final class g0 extends io.realm.a {

    /* renamed from: k, reason: collision with root package name */
    public static final Object f7537k = new Object();

    /* renamed from: l, reason: collision with root package name */
    public static o0 f7538l;

    /* renamed from: j, reason: collision with root package name */
    public final u f7539j;

    public interface a {
        void d(g0 g0Var);
    }

    public g0(m0 m0Var, OsSharedRealm.a aVar) {
        super(m0Var, new OsSchemaInfo((Collection<OsObjectSchemaInfo>) m0Var.f7714c.f7751i.d().values()), aVar);
        this.f7539j = new u(this, new io.realm.internal.b(this.f7455c.f7751i, this.f7457e.getSchemaInfo()));
        o0 o0Var = this.f7455c;
        if (o0Var.f7754l) {
            io.realm.internal.o oVar = o0Var.f7751i;
            Iterator<Class<? extends s0>> it = oVar.f().iterator();
            while (it.hasNext()) {
                String strN = Table.n(oVar.h(it.next()));
                if (!this.f7457e.hasTable(strN)) {
                    this.f7457e.close();
                    throw new RealmMigrationNeededException(this.f7455c.f7746c, String.format(Locale.US, "Cannot open the read only Realm. '%s' is missing.", Table.g(strN)));
                }
            }
        }
    }

    public static void F(o0 o0Var) {
        synchronized (f7537k) {
            f7538l = o0Var;
        }
    }

    public static g0 t() {
        o0 o0Var;
        synchronized (f7537k) {
            o0Var = f7538l;
        }
        if (o0Var != null) {
            ArrayList arrayList = m0.f7711e;
            return (g0) m0.d(o0Var.f7746c, true).b(o0Var, g0.class, OsSharedRealm.a.f7624c);
        }
        if (io.realm.a.f7451g == null) {
            throw new IllegalStateException("Call `Realm.init(Context)` before calling this method.");
        }
        throw new IllegalStateException("Set default configuration by using `Realm.setDefaultConfiguration(RealmConfiguration)`.");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void y(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.g0.y(android.content.Context):void");
    }

    public final void B(s0 s0Var) {
        if (!k()) {
            throw new IllegalStateException("Changing Realm data can only be done from inside a transaction.");
        }
        if (s0Var == null) {
            throw new IllegalArgumentException("Null object cannot be inserted into Realm.");
        }
        this.f7455c.f7751i.k(this, s0Var, new HashMap());
    }

    public final void E(Collection<? extends s0> collection) {
        if (!k()) {
            throw new IllegalStateException("Changing Realm data can only be done from inside a transaction.");
        }
        if (collection.isEmpty()) {
            return;
        }
        this.f7455c.f7751i.l(this, collection);
    }

    public final <E extends s0> RealmQuery<E> J(Class<E> cls) {
        b();
        return new RealmQuery<>(this, cls);
    }

    @Override // io.realm.a
    public final io.realm.a d() {
        OsSharedRealm.a versionID = this.f7457e.getVersionID();
        ArrayList arrayList = m0.f7711e;
        o0 o0Var = this.f7455c;
        return (g0) m0.d(o0Var.f7746c, true).b(o0Var, g0.class, versionID);
    }

    @Override // io.realm.a
    public final z0 i() {
        return this.f7539j;
    }

    public final s0 n(s0 s0Var, boolean z10, HashMap map, Set set) {
        b();
        if (!k()) {
            throw new IllegalStateException("`copyOrUpdate` can only be called inside a write transaction.");
        }
        o0 o0Var = this.f7455c;
        if (o0Var.f7751i.m(Util.a(s0Var.getClass()))) {
            throw new IllegalArgumentException("Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object");
        }
        try {
            return o0Var.f7751i.a(this, s0Var, z10, map, set);
        } catch (RuntimeException e10) {
            if (e10.getMessage().startsWith("Attempting to create an object of type")) {
                throw new RealmPrimaryKeyConstraintException(e10.getMessage());
            }
            throw e10;
        }
    }

    public final <E extends s0> E o(E e10, v... vVarArr) {
        if (e10 == null) {
            throw new IllegalArgumentException("Null objects cannot be copied into Realm.");
        }
        HashMap map = new HashMap();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (v vVar : vVarArr) {
            if (vVar != null) {
                linkedHashSet.add(vVar);
            }
        }
        return (E) n(e10, false, map, linkedHashSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <E extends s0> E p(E e10, v... vVarArr) {
        if (e10 == null) {
            throw new IllegalArgumentException("Null objects cannot be copied into Realm.");
        }
        Class<?> cls = e10.getClass();
        if (!this.f7455c.f7751i.j(cls)) {
            throw new IllegalArgumentException("A RealmObject with no @PrimaryKey cannot be updated: " + cls.toString());
        }
        HashMap map = new HashMap();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (v vVar : vVarArr) {
            if (vVar != null) {
                linkedHashSet.add(vVar);
            }
        }
        return (E) n(e10, true, map, linkedHashSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <E extends s0> E q(Class<E> cls, s0 s0Var, String str) {
        b();
        if (s0Var == null) {
            throw new IllegalArgumentException("Nonnull 'parentObject' required.");
        }
        if (Util.c(str)) {
            throw new IllegalArgumentException("Non-empty 'parentProperty' required.");
        }
        if (!v0.isManaged(s0Var) || !v0.isValid(s0Var)) {
            throw new IllegalArgumentException("Only valid, managed objects can be a parent to an embedded object.");
        }
        u uVar = this.f7539j;
        String strF = uVar.b(cls).f7895b.f();
        x0 x0VarB = uVar.b(s0Var.getClass());
        long jA = x0VarB.a(str);
        long jA2 = x0VarB.a(str);
        Table table = x0VarB.f7895b;
        RealmFieldType realmFieldTypeK = table.k(jA2);
        io.realm.internal.p pVar = ((io.realm.internal.n) s0Var).b().f7531c;
        RealmFieldType realmFieldTypeK2 = table.k(x0VarB.a(str));
        if (!(realmFieldTypeK2 == RealmFieldType.OBJECT || realmFieldTypeK2 == RealmFieldType.LIST)) {
            throw new IllegalArgumentException(String.format("Field '%s' does not contain a valid link", str));
        }
        String strB = x0VarB.b(str);
        if (!strB.equals(strF)) {
            throw new IllegalArgumentException(String.format("Parent type %s expects that property '%s' be of type %s but was %s.", table.f(), str, strB, strF));
        }
        long jR = pVar.r(jA, realmFieldTypeK);
        Table tableD = uVar.d(strF);
        tableD.getClass();
        int r22 = CheckedRow.f;
        return (E) this.f7455c.f7751i.n(cls, this, new CheckedRow(tableD.f7634b, tableD, tableD.nativeGetRowPtr(tableD.f7633a, jR)), uVar.a(cls), true, Collections.EMPTY_LIST);
    }

    public final void r(Class<? extends s0> cls) {
        b();
        this.f7539j.c(cls).b();
    }

    public final void s(a aVar) {
        b();
        Looper looper = ((e9.a) this.f7457e.capabilities).f5159a;
        if ((looper != null && looper == Looper.getMainLooper()) && !this.f7455c.f7757o) {
            throw new RealmException("Running transactions on the UI thread has been disabled. It can be enabled by setting 'RealmConfiguration.Builder.allowWritesOnUiThread(true)'.");
        }
        beginTransaction();
        try {
            aVar.d(this);
            c();
        } catch (Throwable th2) {
            if (k()) {
                b();
                this.f7457e.cancelTransaction();
            } else {
                RealmLog.a(5, null, "Could not cancel transaction, not currently in a transaction.", new Object[0]);
            }
            throw th2;
        }
    }

    public final Table v(Class<? extends s0> cls) {
        return this.f7539j.c(cls);
    }

    public g0(OsSharedRealm osSharedRealm) {
        super(osSharedRealm);
        this.f7539j = new u(this, new io.realm.internal.b(this.f7455c.f7751i, osSharedRealm.getSchemaInfo()));
    }
}
