package m1;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class j implements e, d {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final e f9915a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f9916b;

    /* renamed from: c, reason: collision with root package name */
    public volatile d f9917c;

    /* renamed from: d, reason: collision with root package name */
    public volatile d f9918d;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("requestLock")
    public int f9919e = 3;

    @GuardedBy("requestLock")
    public int f = 3;

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("requestLock")
    public boolean f9920g;

    public j(Object obj, @Nullable e eVar) {
        this.f9916b = obj;
        this.f9915a = eVar;
    }

    @Override // m1.e, m1.d
    public final boolean a() {
        boolean z10;
        synchronized (this.f9916b) {
            z10 = this.f9918d.a() || this.f9917c.a();
        }
        return z10;
    }

    @Override // m1.d
    public final boolean b(d dVar) {
        if (!(dVar instanceof j)) {
            return false;
        }
        j jVar = (j) dVar;
        if (this.f9917c == null) {
            if (jVar.f9917c != null) {
                return false;
            }
        } else if (!this.f9917c.b(jVar.f9917c)) {
            return false;
        }
        if (this.f9918d == null) {
            if (jVar.f9918d != null) {
                return false;
            }
        } else if (!this.f9918d.b(jVar.f9918d)) {
            return false;
        }
        return true;
    }

    @Override // m1.e
    public final void c(d dVar) {
        synchronized (this.f9916b) {
            if (dVar.equals(this.f9918d)) {
                this.f = 4;
                return;
            }
            this.f9919e = 4;
            e eVar = this.f9915a;
            if (eVar != null) {
                eVar.c(this);
            }
            if (!ab.b.a(this.f)) {
                this.f9918d.clear();
            }
        }
    }

    @Override // m1.d
    public final void clear() {
        synchronized (this.f9916b) {
            this.f9920g = false;
            this.f9919e = 3;
            this.f = 3;
            this.f9918d.clear();
            this.f9917c.clear();
        }
    }

    @Override // m1.d
    public final void d() {
        synchronized (this.f9916b) {
            if (!ab.b.a(this.f)) {
                this.f = 2;
                this.f9918d.d();
            }
            if (!ab.b.a(this.f9919e)) {
                this.f9919e = 2;
                this.f9917c.d();
            }
        }
    }

    @Override // m1.e
    public final boolean e(d dVar) {
        boolean z10;
        synchronized (this.f9916b) {
            e eVar = this.f9915a;
            z10 = true;
            if (!(eVar == null || eVar.e(this)) || (!dVar.equals(this.f9917c) && this.f9919e == 4)) {
                z10 = false;
            }
        }
        return z10;
    }

    @Override // m1.e
    public final boolean f(d dVar) {
        boolean z10;
        synchronized (this.f9916b) {
            e eVar = this.f9915a;
            z10 = true;
            if (!(eVar == null || eVar.f(this)) || !dVar.equals(this.f9917c) || this.f9919e == 2) {
                z10 = false;
            }
        }
        return z10;
    }

    @Override // m1.d
    public final boolean g() {
        boolean z10;
        synchronized (this.f9916b) {
            z10 = this.f9919e == 3;
        }
        return z10;
    }

    @Override // m1.e
    public final e getRoot() {
        e root;
        synchronized (this.f9916b) {
            e eVar = this.f9915a;
            root = eVar != null ? eVar.getRoot() : this;
        }
        return root;
    }

    @Override // m1.e
    public final boolean h(d dVar) {
        boolean z10;
        synchronized (this.f9916b) {
            e eVar = this.f9915a;
            z10 = false;
            if ((eVar == null || eVar.h(this)) && dVar.equals(this.f9917c) && !a()) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override // m1.d
    public final void i() {
        synchronized (this.f9916b) {
            this.f9920g = true;
            try {
                if (this.f9919e != 4 && this.f != 1) {
                    this.f = 1;
                    this.f9918d.i();
                }
                if (this.f9920g && this.f9919e != 1) {
                    this.f9919e = 1;
                    this.f9917c.i();
                }
            } finally {
                this.f9920g = false;
            }
        }
    }

    @Override // m1.d
    public final boolean isRunning() {
        boolean z10;
        synchronized (this.f9916b) {
            z10 = true;
            if (this.f9919e != 1) {
                z10 = false;
            }
        }
        return z10;
    }

    @Override // m1.d
    public final boolean j() {
        boolean z10;
        synchronized (this.f9916b) {
            z10 = this.f9919e == 4;
        }
        return z10;
    }

    @Override // m1.e
    public final void k(d dVar) {
        synchronized (this.f9916b) {
            if (!dVar.equals(this.f9917c)) {
                this.f = 5;
                return;
            }
            this.f9919e = 5;
            e eVar = this.f9915a;
            if (eVar != null) {
                eVar.k(this);
            }
        }
    }
}
