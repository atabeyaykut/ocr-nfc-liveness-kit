package io.realm;

import io.realm.internal.OsObjectStore;
import io.realm.internal.OsSharedRealm;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class n extends io.realm.a {

    /* renamed from: j, reason: collision with root package name */
    public final y f7739j;

    public class a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ m0 f7740a;

        public a(m0 m0Var) {
            this.f7740a = m0Var;
        }

        public final void a(int r6) {
            if (r6 <= 0 && !this.f7740a.f7714c.f7754l) {
                n nVar = n.this;
                if (OsObjectStore.c(nVar.f7457e) != -1) {
                    return;
                }
                nVar.f7457e.beginTransaction();
                if (OsObjectStore.c(nVar.f7457e) == -1) {
                    OsObjectStore.d(nVar.f7457e);
                }
                nVar.f7457e.commitTransaction();
            }
        }
    }

    public n(m0 m0Var, OsSharedRealm.a aVar) {
        super(m0Var, null, aVar);
        o0 o0Var = m0Var.f7714c;
        a aVar2 = new a(m0Var);
        synchronized (m0.f7711e) {
            m0 m0VarD = m0.d(o0Var.f7746c, false);
            if (m0VarD == null) {
                aVar2.a(0);
            } else {
                m0VarD.c(aVar2);
            }
        }
        this.f7739j = new y(this);
    }

    @Override // io.realm.a
    public final io.realm.a d() {
        OsSharedRealm.a versionID;
        try {
            versionID = this.f7457e.getVersionID();
        } catch (IllegalStateException unused) {
            OsObjectStore.c(this.f7457e);
            versionID = this.f7457e.getVersionID();
        }
        ArrayList arrayList = m0.f7711e;
        o0 o0Var = this.f7455c;
        return (n) m0.d(o0Var.f7746c, true).b(o0Var, n.class, versionID);
    }

    @Override // io.realm.a
    public final z0 i() {
        return this.f7739j;
    }
}
