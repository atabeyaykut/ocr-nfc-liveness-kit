package c5;

import androidx.annotation.GuardedBy;

/* loaded from: classes.dex */
public final class q2<V> {

    /* renamed from: g, reason: collision with root package name */
    public static final Object f1864g = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final String f1865a;

    /* renamed from: b, reason: collision with root package name */
    public final p2<V> f1866b;

    /* renamed from: c, reason: collision with root package name */
    public final V f1867c;

    /* renamed from: d, reason: collision with root package name */
    public final V f1868d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f1869e = new Object();

    @GuardedBy("cachingLock")
    public volatile V f = null;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ q2(String str, Object obj, Object obj2, p2 p2Var) {
        this.f1865a = str;
        this.f1867c = obj;
        this.f1868d = obj2;
        this.f1866b = p2Var;
    }

    public final V a(V v10) {
        synchronized (this.f1869e) {
        }
        if (v10 != null) {
            return v10;
        }
        if (x5.a.f19155h == null) {
            return this.f1867c;
        }
        synchronized (f1864g) {
            if (com.google.android.gms.internal.clearcut.z.c()) {
                return this.f == null ? this.f1867c : this.f;
            }
            try {
                for (q2<?> q2Var : r2.f1889a) {
                    if (com.google.android.gms.internal.clearcut.z.c()) {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                    V v11 = null;
                    try {
                        p2<?> p2Var = q2Var.f1866b;
                        if (p2Var != null) {
                            v11 = (V) p2Var.a();
                        }
                    } catch (IllegalStateException unused) {
                    }
                    synchronized (f1864g) {
                        q2Var.f = v11;
                    }
                }
            } catch (SecurityException unused2) {
            }
            p2<V> p2Var2 = this.f1866b;
            if (p2Var2 == null) {
                return this.f1867c;
            }
            try {
                return p2Var2.a();
            } catch (IllegalStateException unused3) {
                return this.f1867c;
            } catch (SecurityException unused4) {
                return this.f1867c;
            }
        }
    }
}
