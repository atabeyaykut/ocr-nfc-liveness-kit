package v7;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import h5.z;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public abstract class j {

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f18272b = new AtomicInteger(0);

    /* renamed from: a, reason: collision with root package name */
    @RecentlyNonNull
    public final m f18271a = new m();

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f18273c = new AtomicBoolean(false);

    @RecentlyNonNull
    public final z a(@RecentlyNonNull final Executor executor, @RecentlyNonNull final Callable callable, @RecentlyNonNull final h5.q qVar) {
        r3.r.l(this.f18272b.get() > 0);
        if (qVar.b()) {
            z zVar = new z();
            zVar.s();
            return zVar;
        }
        final h5.a aVar = new h5.a();
        final h5.l lVar = new h5.l(aVar.f6839a);
        this.f18271a.a(new Runnable() { // from class: v7.t
            @Override // java.lang.Runnable
            public final void run() throws Exception {
                Callable callable2 = callable;
                h5.l lVar2 = lVar;
                j jVar = this.f18290a;
                jVar.getClass();
                h5.q qVar2 = qVar;
                boolean zB = qVar2.b();
                h5.a aVar2 = aVar;
                if (!zB) {
                    AtomicBoolean atomicBoolean = jVar.f18273c;
                    try {
                        try {
                            if (!atomicBoolean.get()) {
                                jVar.b();
                                atomicBoolean.set(true);
                            }
                            if (qVar2.b()) {
                                aVar2.a();
                                return;
                            }
                            Object objCall = callable2.call();
                            if (qVar2.b()) {
                                aVar2.a();
                                return;
                            } else {
                                lVar2.b(objCall);
                                return;
                            }
                        } catch (RuntimeException e10) {
                            throw new r7.a("Internal error has occurred when executing ML Kit tasks", e10);
                        }
                    } catch (Exception e11) {
                        if (!qVar2.b()) {
                            lVar2.a(e11);
                            return;
                        }
                    }
                }
                aVar2.a();
            }
        }, new Executor() { // from class: v7.u
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                try {
                    executor.execute(runnable);
                } catch (RuntimeException e10) {
                    if (qVar.b()) {
                        aVar.a();
                    } else {
                        lVar.a(e10);
                    }
                    throw e10;
                }
            }
        });
        return lVar.f6841a;
    }

    @VisibleForTesting
    @WorkerThread
    public abstract void b() throws r7.a;

    @WorkerThread
    public abstract void c();
}
