package io.realm;

import android.content.Context;
import android.os.Looper;
import io.realm.exceptions.RealmException;
import io.realm.g0;
import io.realm.internal.CheckedRow;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.objectstore.OsKeyPathMapping;
import io.realm.log.RealmLog;
import io.realm.m0;
import java.io.Closeable;
import java.io.File;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class a implements Closeable {

    /* renamed from: g, reason: collision with root package name */
    public static volatile Context f7451g;

    /* renamed from: h, reason: collision with root package name */
    public static final c f7452h;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7453a;

    /* renamed from: b, reason: collision with root package name */
    public final long f7454b;

    /* renamed from: c, reason: collision with root package name */
    public final o0 f7455c;

    /* renamed from: d, reason: collision with root package name */
    public m0 f7456d;

    /* renamed from: e, reason: collision with root package name */
    public OsSharedRealm f7457e;
    public final boolean f;

    /* renamed from: io.realm.a$a, reason: collision with other inner class name */
    public class C0132a implements OsSharedRealm.SchemaChangedCallback {
        public C0132a() {
        }

        @Override // io.realm.internal.OsSharedRealm.SchemaChangedCallback
        public final void onSchemaChanged() {
            a aVar = a.this;
            z0 z0VarI = aVar.i();
            if (z0VarI != null) {
                io.realm.internal.b bVar = z0VarI.f7913g;
                if (bVar != null) {
                    for (Map.Entry entry : bVar.f7649a.entrySet()) {
                        ((io.realm.internal.c) entry.getValue()).c(bVar.f7650b.b((Class) entry.getKey(), bVar.f7651c));
                    }
                }
                z0VarI.f7908a.clear();
                z0VarI.f7909b.clear();
                z0VarI.f7910c.clear();
                z0VarI.f7911d.clear();
            }
            if (aVar instanceof g0) {
                z0VarI.getClass();
                z0VarI.f7912e = new OsKeyPathMapping(z0VarI.f.f7457e.getNativePtr());
            }
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public a f7459a;

        /* renamed from: b, reason: collision with root package name */
        public io.realm.internal.p f7460b;

        /* renamed from: c, reason: collision with root package name */
        public io.realm.internal.c f7461c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f7462d;

        /* renamed from: e, reason: collision with root package name */
        public List<String> f7463e;

        public final void a() {
            this.f7459a = null;
            this.f7460b = null;
            this.f7461c = null;
            this.f7462d = false;
            this.f7463e = null;
        }

        public final void b(a aVar, io.realm.internal.p pVar, io.realm.internal.c cVar, boolean z10, List<String> list) {
            this.f7459a = aVar;
            this.f7460b = pVar;
            this.f7461c = cVar;
            this.f7462d = z10;
            this.f7463e = list;
        }
    }

    public static final class c extends ThreadLocal<b> {
        @Override // java.lang.ThreadLocal
        public final b initialValue() {
            return new b();
        }
    }

    static {
        int r12 = f9.b.f5550b;
        new f9.b(r12, r12);
        new f9.b(1, 1);
        f7452h = new c();
    }

    public a(OsSharedRealm osSharedRealm) {
        new C0132a();
        this.f7454b = Thread.currentThread().getId();
        this.f7455c = osSharedRealm.getConfiguration();
        this.f7456d = null;
        this.f7457e = osSharedRealm;
        this.f7453a = osSharedRealm.isFrozen();
        this.f = false;
    }

    public a(m0 m0Var, OsSchemaInfo osSchemaInfo, OsSharedRealm.a aVar) {
        o0 o0Var = m0Var.f7714c;
        C0132a c0132a = new C0132a();
        this.f7454b = Thread.currentThread().getId();
        this.f7455c = o0Var;
        this.f7456d = null;
        if (osSchemaInfo != null) {
            o0Var.getClass();
        }
        g0.a aVar2 = o0Var.f7753k;
        io.realm.b bVar = aVar2 != null ? new io.realm.b(this, aVar2) : null;
        OsRealmConfig.b bVar2 = new OsRealmConfig.b(o0Var);
        bVar2.f = new File(f7451g.getFilesDir(), ".realm.temp").getAbsolutePath();
        bVar2.f7610e = true;
        bVar2.f7608c = null;
        bVar2.f7607b = osSchemaInfo;
        bVar2.f7609d = bVar;
        OsSharedRealm osSharedRealm = OsSharedRealm.getInstance(bVar2, aVar);
        this.f7457e = osSharedRealm;
        this.f7453a = osSharedRealm.isFrozen();
        this.f = true;
        this.f7457e.registerSchemaChangedCallback(c0132a);
        this.f7456d = m0Var;
    }

    public final void a() {
        Looper looper = ((e9.a) this.f7457e.capabilities).f5159a;
        if ((looper != null && looper == Looper.getMainLooper()) && !this.f7455c.f7758p) {
            throw new RealmException("Queries on the UI thread have been disabled. They can be enabled by setting 'RealmConfiguration.Builder.allowQueriesOnUiThread(true)'.");
        }
    }

    public final void b() {
        OsSharedRealm osSharedRealm = this.f7457e;
        if (osSharedRealm == null || osSharedRealm.isClosed()) {
            throw new IllegalStateException("This Realm instance has already been closed, making it unusable.");
        }
        if (this.f7453a) {
            return;
        }
        if (this.f7454b != Thread.currentThread().getId()) {
            throw new IllegalStateException("Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created.");
        }
    }

    public final void beginTransaction() {
        b();
        this.f7457e.beginTransaction();
    }

    public final void c() {
        b();
        this.f7457e.commitTransaction();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a aVarB;
        if (!this.f7453a && this.f7454b != Thread.currentThread().getId()) {
            throw new IllegalStateException("Realm access from incorrect thread. Realm instance can only be closed on the thread it was created.");
        }
        m0 m0Var = this.f7456d;
        if (m0Var == null) {
            this.f7456d = null;
            OsSharedRealm osSharedRealm = this.f7457e;
            if (osSharedRealm == null || !this.f) {
                return;
            }
            osSharedRealm.close();
            this.f7457e = null;
            return;
        }
        synchronized (m0Var) {
            String str = this.f7455c.f7746c;
            m0.c cVarE = m0Var.e(getClass(), j() ? this.f7457e.getVersionID() : OsSharedRealm.a.f7624c);
            int r42 = cVarE.c();
            int r52 = 0;
            if (r42 <= 0) {
                RealmLog.a(5, null, "%s has been closed already. refCount is %s", str, Integer.valueOf(r42));
            } else {
                int r43 = r42 - 1;
                if (r43 == 0) {
                    cVarE.a();
                    this.f7456d = null;
                    OsSharedRealm osSharedRealm2 = this.f7457e;
                    if (osSharedRealm2 != null && this.f) {
                        osSharedRealm2.close();
                        this.f7457e = null;
                    }
                    for (m0.c cVar : m0Var.f7712a.values()) {
                        if (cVar instanceof m0.d) {
                            r52 += cVar.f7721b.get();
                        }
                    }
                    if (r52 == 0) {
                        m0Var.f7714c = null;
                        for (m0.c cVar2 : m0Var.f7712a.values()) {
                            if ((cVar2 instanceof m0.a) && (aVarB = cVar2.b()) != null) {
                                while (!aVarB.isClosed()) {
                                    aVarB.close();
                                }
                            }
                        }
                        this.f7455c.getClass();
                        io.realm.internal.j.f7665a.getClass();
                    }
                } else {
                    cVarE.f7720a.set(Integer.valueOf(r43));
                }
            }
        }
    }

    public abstract a d();

    public final s0 e(Class cls, long j10, List list) {
        return this.f7455c.f7751i.n(cls, this, i().c(cls).o(j10), i().a(cls), false, list);
    }

    public final <E extends s0> E f(Class<E> cls, String str, long j10) {
        boolean z10 = str != null;
        Table tableD = z10 ? i().d(str) : i().c(cls);
        io.realm.internal.p pVarO = io.realm.internal.g.f7661a;
        if (!z10) {
            io.realm.internal.o oVar = this.f7455c.f7751i;
            if (j10 != -1) {
                pVarO = tableD.o(j10);
            }
            return (E) oVar.n(cls, this, pVarO, i().a(cls), false, Collections.emptyList());
        }
        if (j10 != -1) {
            tableD.getClass();
            int r02 = CheckedRow.f;
            pVarO = new CheckedRow(tableD.f7634b, tableD, tableD.nativeGetRowPtr(tableD.f7633a, j10));
        }
        return new p(this, pVarO);
    }

    public final void finalize() throws Throwable {
        OsSharedRealm osSharedRealm;
        if (this.f && (osSharedRealm = this.f7457e) != null && !osSharedRealm.isClosed()) {
            RealmLog.a(5, null, "Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory.", this.f7455c.f7746c);
            m0 m0Var = this.f7456d;
            if (m0Var != null && !m0Var.f7715d.getAndSet(true)) {
                m0.f.add(m0Var);
            }
        }
        super.finalize();
    }

    public final <E extends s0> E g(Class<E> cls, String str, UncheckedRow uncheckedRow) {
        return str != null ? new p(this, new CheckedRow(uncheckedRow)) : (E) this.f7455c.f7751i.n(cls, this, uncheckedRow, i().a(cls), false, Collections.emptyList());
    }

    public abstract z0 i();

    public final boolean isClosed() {
        if (!this.f7453a) {
            if (this.f7454b != Thread.currentThread().getId()) {
                throw new IllegalStateException("Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created.");
            }
        }
        OsSharedRealm osSharedRealm = this.f7457e;
        return osSharedRealm == null || osSharedRealm.isClosed();
    }

    public final boolean j() {
        OsSharedRealm osSharedRealm = this.f7457e;
        if (osSharedRealm == null || osSharedRealm.isClosed()) {
            throw new IllegalStateException("This Realm instance has already been closed, making it unusable.");
        }
        return this.f7453a;
    }

    public final boolean k() {
        b();
        return this.f7457e.isInTransaction();
    }

    public final void m() {
        b();
        a();
        if (k()) {
            throw new IllegalStateException("Cannot refresh a Realm instance inside a transaction.");
        }
        this.f7457e.refresh();
    }
}
