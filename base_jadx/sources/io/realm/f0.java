package io.realm;

import io.realm.internal.OsObject;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.UncheckedRow;
import io.realm.s0;
import java.util.List;

/* loaded from: classes2.dex */
public final class f0<E extends s0> {

    /* renamed from: a, reason: collision with root package name */
    public final E f7529a;

    /* renamed from: c, reason: collision with root package name */
    public io.realm.internal.p f7531c;

    /* renamed from: d, reason: collision with root package name */
    public OsObject f7532d;

    /* renamed from: e, reason: collision with root package name */
    public io.realm.a f7533e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public List<String> f7534g;

    /* renamed from: b, reason: collision with root package name */
    public boolean f7530b = true;

    /* renamed from: h, reason: collision with root package name */
    public io.realm.internal.k<OsObject.b> f7535h = new io.realm.internal.k<>();

    public static class a<T extends s0> implements w0<T> {

        /* renamed from: a, reason: collision with root package name */
        public final n0<T> f7536a;

        public a(n0<T> n0Var) {
            if (n0Var == null) {
                throw new IllegalArgumentException("Listener should not be null");
            }
            this.f7536a = n0Var;
        }

        @Override // io.realm.w0
        public final void a(s0 s0Var) {
            this.f7536a.a();
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                if (this.f7536a == ((a) obj).f7536a) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.f7536a.hashCode();
        }
    }

    public f0(E e10) {
        this.f7529a = e10;
    }

    public final void a(s0 s0Var) {
        if (!v0.isValid(s0Var) || !v0.isManaged(s0Var)) {
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        }
        if (((io.realm.internal.n) s0Var).b().f7533e != this.f7533e) {
            throw new IllegalArgumentException("'value' belongs to a different Realm.");
        }
    }

    public final void b() {
        OsSharedRealm osSharedRealm = this.f7533e.f7457e;
        if (osSharedRealm == null || osSharedRealm.isClosed() || !this.f7531c.isValid() || this.f7532d != null) {
            return;
        }
        OsObject osObject = new OsObject(this.f7533e.f7457e, (UncheckedRow) this.f7531c);
        this.f7532d = osObject;
        osObject.setObserverPairs(this.f7535h);
        this.f7535h = null;
    }

    public final void c() {
        this.f7530b = false;
        this.f7534g = null;
    }
}
