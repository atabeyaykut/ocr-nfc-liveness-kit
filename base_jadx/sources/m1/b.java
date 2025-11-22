package m1;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class b implements e, d {

    /* renamed from: a, reason: collision with root package name */
    public final Object f9886a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final e f9887b;

    /* renamed from: c, reason: collision with root package name */
    public volatile d f9888c;

    /* renamed from: d, reason: collision with root package name */
    public volatile d f9889d;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("requestLock")
    public int f9890e = 3;

    @GuardedBy("requestLock")
    public int f = 3;

    public b(Object obj, @Nullable e eVar) {
        this.f9886a = obj;
        this.f9887b = eVar;
    }

    @Override // m1.e, m1.d
    public final boolean a() {
        boolean z10;
        synchronized (this.f9886a) {
            z10 = this.f9888c.a() || this.f9889d.a();
        }
        return z10;
    }

    @Override // m1.d
    public final boolean b(d dVar) {
        if (!(dVar instanceof b)) {
            return false;
        }
        b bVar = (b) dVar;
        return this.f9888c.b(bVar.f9888c) && this.f9889d.b(bVar.f9889d);
    }

    @Override // m1.e
    public final void c(d dVar) {
        synchronized (this.f9886a) {
            if (dVar.equals(this.f9888c)) {
                this.f9890e = 4;
            } else if (dVar.equals(this.f9889d)) {
                this.f = 4;
            }
            e eVar = this.f9887b;
            if (eVar != null) {
                eVar.c(this);
            }
        }
    }

    @Override // m1.d
    public final void clear() {
        synchronized (this.f9886a) {
            this.f9890e = 3;
            this.f9888c.clear();
            if (this.f != 3) {
                this.f = 3;
                this.f9889d.clear();
            }
        }
    }

    @Override // m1.d
    public final void d() {
        synchronized (this.f9886a) {
            if (this.f9890e == 1) {
                this.f9890e = 2;
                this.f9888c.d();
            }
            if (this.f == 1) {
                this.f = 2;
                this.f9889d.d();
            }
        }
    }

    @Override // m1.e
    public final boolean e(d dVar) {
        boolean z10;
        synchronized (this.f9886a) {
            e eVar = this.f9887b;
            z10 = eVar == null || eVar.e(this);
        }
        return z10;
    }

    @Override // m1.e
    public final boolean f(d dVar) {
        boolean z10;
        synchronized (this.f9886a) {
            e eVar = this.f9887b;
            z10 = false;
            if ((eVar == null || eVar.f(this)) && dVar.equals(this.f9888c)) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override // m1.d
    public final boolean g() {
        boolean z10;
        synchronized (this.f9886a) {
            z10 = this.f9890e == 3 && this.f == 3;
        }
        return z10;
    }

    @Override // m1.e
    public final e getRoot() {
        e root;
        synchronized (this.f9886a) {
            e eVar = this.f9887b;
            root = eVar != null ? eVar.getRoot() : this;
        }
        return root;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0036  */
    @Override // m1.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean h(m1.d r6) {
        /*
            r5 = this;
            java.lang.Object r0 = r5.f9886a
            monitor-enter(r0)
            m1.e r1 = r5.f9887b     // Catch: java.lang.Throwable -> L39
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L12
            boolean r1 = r1.h(r5)     // Catch: java.lang.Throwable -> L39
            if (r1 == 0) goto L10
            goto L12
        L10:
            r1 = 0
            goto L13
        L12:
            r1 = 1
        L13:
            if (r1 == 0) goto L36
            int r1 = r5.f9890e     // Catch: java.lang.Throwable -> L39
            r4 = 5
            if (r1 == r4) goto L21
            m1.d r1 = r5.f9888c     // Catch: java.lang.Throwable -> L39
            boolean r6 = r6.equals(r1)     // Catch: java.lang.Throwable -> L39
            goto L33
        L21:
            m1.d r1 = r5.f9889d     // Catch: java.lang.Throwable -> L39
            boolean r6 = r6.equals(r1)     // Catch: java.lang.Throwable -> L39
            if (r6 == 0) goto L32
            int r6 = r5.f     // Catch: java.lang.Throwable -> L39
            r1 = 4
            if (r6 == r1) goto L30
            if (r6 != r4) goto L32
        L30:
            r6 = 1
            goto L33
        L32:
            r6 = 0
        L33:
            if (r6 == 0) goto L36
            goto L37
        L36:
            r2 = 0
        L37:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L39
            return r2
        L39:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L39
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: m1.b.h(m1.d):boolean");
    }

    @Override // m1.d
    public final void i() {
        synchronized (this.f9886a) {
            if (this.f9890e != 1) {
                this.f9890e = 1;
                this.f9888c.i();
            }
        }
    }

    @Override // m1.d
    public final boolean isRunning() {
        boolean z10;
        synchronized (this.f9886a) {
            z10 = true;
            if (this.f9890e != 1 && this.f != 1) {
                z10 = false;
            }
        }
        return z10;
    }

    @Override // m1.d
    public final boolean j() {
        boolean z10;
        synchronized (this.f9886a) {
            z10 = this.f9890e == 4 || this.f == 4;
        }
        return z10;
    }

    @Override // m1.e
    public final void k(d dVar) {
        synchronized (this.f9886a) {
            if (dVar.equals(this.f9889d)) {
                this.f = 5;
                e eVar = this.f9887b;
                if (eVar != null) {
                    eVar.k(this);
                }
                return;
            }
            this.f9890e = 5;
            if (this.f != 1) {
                this.f = 1;
                this.f9889d.i();
            }
        }
    }
}
