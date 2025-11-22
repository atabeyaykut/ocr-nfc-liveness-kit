package c5;

import android.os.Process;
import androidx.annotation.GuardedBy;
import androidx.work.WorkRequest;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes.dex */
public final class g4 extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final Object f1569a;

    /* renamed from: b, reason: collision with root package name */
    public final BlockingQueue<f4<?>> f1570b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("threadLifeCycleLock")
    public boolean f1571c = false;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ h4 f1572d;

    public g4(h4 h4Var, String str, BlockingQueue<f4<?>> blockingQueue) {
        this.f1572d = h4Var;
        r3.r.i(blockingQueue);
        this.f1569a = new Object();
        this.f1570b = blockingQueue;
        setName(str);
    }

    public final void a() {
        synchronized (this.f1569a) {
            this.f1569a.notifyAll();
        }
    }

    public final void b() {
        synchronized (this.f1572d.f1601j) {
            try {
                if (!this.f1571c) {
                    this.f1572d.f1602k.release();
                    this.f1572d.f1601j.notifyAll();
                    h4 h4Var = this.f1572d;
                    if (this == h4Var.f1596c) {
                        h4Var.f1596c = null;
                    } else if (this == h4Var.f1597d) {
                        h4Var.f1597d = null;
                    } else {
                        e3 e3Var = ((i4) h4Var.f2115a).f1635j;
                        i4.e(e3Var);
                        e3Var.f.a("Current scheduler thread is neither worker nor network");
                    }
                    this.f1571c = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void c(InterruptedException interruptedException) {
        e3 e3Var = ((i4) this.f1572d.f2115a).f1635j;
        i4.e(e3Var);
        e3Var.f1508j.b(interruptedException, String.valueOf(getName()).concat(" was interrupted"));
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws InterruptedException {
        boolean z10 = false;
        while (!z10) {
            try {
                this.f1572d.f1602k.acquire();
                z10 = true;
            } catch (InterruptedException e10) {
                c(e10);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                f4<?> f4VarPoll = this.f1570b.poll();
                if (f4VarPoll == null) {
                    synchronized (this.f1569a) {
                        try {
                            if (this.f1570b.peek() == null) {
                                this.f1572d.getClass();
                                this.f1569a.wait(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
                            }
                        } catch (InterruptedException e11) {
                            c(e11);
                        } finally {
                        }
                    }
                    synchronized (this.f1572d.f1601j) {
                        if (this.f1570b.peek() == null) {
                            break;
                        }
                    }
                } else {
                    Process.setThreadPriority(true != f4VarPoll.f1541b ? 10 : threadPriority);
                    f4VarPoll.run();
                }
            }
            if (((i4) this.f1572d.f2115a).f1633g.p(null, r2.f1907j0)) {
                b();
            }
        } finally {
            b();
        }
    }
}
