package c5;

import androidx.annotation.Nullable;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class h4 extends y4 {

    /* renamed from: l, reason: collision with root package name */
    public static final AtomicLong f1595l = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public g4 f1596c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public g4 f1597d;

    /* renamed from: e, reason: collision with root package name */
    public final PriorityBlockingQueue<f4<?>> f1598e;
    public final LinkedBlockingQueue f;

    /* renamed from: g, reason: collision with root package name */
    public final e4 f1599g;

    /* renamed from: h, reason: collision with root package name */
    public final e4 f1600h;

    /* renamed from: j, reason: collision with root package name */
    public final Object f1601j;

    /* renamed from: k, reason: collision with root package name */
    public final Semaphore f1602k;

    public h4(i4 i4Var) {
        super(i4Var);
        this.f1601j = new Object();
        this.f1602k = new Semaphore(2);
        this.f1598e = new PriorityBlockingQueue<>();
        this.f = new LinkedBlockingQueue();
        this.f1599g = new e4(this, "Thread death: Uncaught exception on worker thread");
        this.f1600h = new e4(this, "Thread death: Uncaught exception on network thread");
    }

    @Override // c5.x4
    public final void b() {
        if (Thread.currentThread() != this.f1596c) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // c5.y4
    public final boolean c() {
        return false;
    }

    public final void g() {
        if (Thread.currentThread() != this.f1597d) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Nullable
    public final <T> T h(AtomicReference<T> atomicReference, long j10, String str, Runnable runnable) {
        synchronized (atomicReference) {
            h4 h4Var = ((i4) this.f2115a).f1636k;
            i4.e(h4Var);
            h4Var.p(runnable);
            try {
                atomicReference.wait(j10);
            } catch (InterruptedException unused) {
                e3 e3Var = ((i4) this.f2115a).f1635j;
                i4.e(e3Var);
                e3Var.f1508j.a(str.length() != 0 ? "Interrupted waiting for ".concat(str) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t10 = atomicReference.get();
        if (t10 == null) {
            e3 e3Var2 = ((i4) this.f2115a).f1635j;
            i4.e(e3Var2);
            e3Var2.f1508j.a(str.length() != 0 ? "Timed out waiting for ".concat(str) : new String("Timed out waiting for "));
        }
        return t10;
    }

    public final f4 n(Callable callable) throws IllegalStateException {
        d();
        f4<?> f4Var = new f4<>(this, callable, false);
        if (Thread.currentThread() == this.f1596c) {
            if (!this.f1598e.isEmpty()) {
                e3 e3Var = ((i4) this.f2115a).f1635j;
                i4.e(e3Var);
                e3Var.f1508j.a("Callable skipped the worker queue.");
            }
            f4Var.run();
        } else {
            s(f4Var);
        }
        return f4Var;
    }

    public final void o(Runnable runnable) throws IllegalStateException {
        d();
        f4 f4Var = new f4(this, runnable, false, "Task exception on network thread");
        synchronized (this.f1601j) {
            this.f.add(f4Var);
            g4 g4Var = this.f1597d;
            if (g4Var == null) {
                g4 g4Var2 = new g4(this, "Measurement Network", this.f);
                this.f1597d = g4Var2;
                g4Var2.setUncaughtExceptionHandler(this.f1600h);
                this.f1597d.start();
            } else {
                g4Var.a();
            }
        }
    }

    public final void p(Runnable runnable) throws IllegalStateException {
        d();
        r3.r.i(runnable);
        s(new f4<>(this, runnable, false, "Task exception on worker thread"));
    }

    public final void q(Runnable runnable) throws IllegalStateException {
        d();
        s(new f4<>(this, runnable, true, "Task exception on worker thread"));
    }

    public final boolean r() {
        return Thread.currentThread() == this.f1596c;
    }

    public final void s(f4<?> f4Var) {
        synchronized (this.f1601j) {
            this.f1598e.add(f4Var);
            g4 g4Var = this.f1596c;
            if (g4Var == null) {
                g4 g4Var2 = new g4(this, "Measurement Worker", this.f1598e);
                this.f1596c = g4Var2;
                g4Var2.setUncaughtExceptionHandler(this.f1599g);
                this.f1596c.start();
            } else {
                g4Var.a();
            }
        }
    }
}
