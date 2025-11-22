package nc;

import androidx.core.location.LocationRequestCompat;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import nc.o0;

/* loaded from: classes2.dex */
public final class d0 extends o0 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;
    public static final d0 f;

    /* renamed from: g, reason: collision with root package name */
    public static final long f10788g;

    static {
        Long l5;
        d0 d0Var = new d0();
        f = d0Var;
        d0Var.j(false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l5 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l5 = 1000L;
        }
        f10788g = timeUnit.toNanos(l5.longValue());
    }

    public final synchronized void Z() {
        int r02 = debugStatus;
        if (r02 == 2 || r02 == 3) {
            debugStatus = 3;
            P();
            notifyAll();
        }
    }

    @Override // nc.p0
    public final Thread p() {
        Thread thread = _thread;
        if (thread == null) {
            synchronized (this) {
                thread = _thread;
                if (thread == null) {
                    thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                    _thread = thread;
                    thread.setDaemon(true);
                    thread.start();
                }
            }
        }
        return thread;
    }

    @Override // nc.p0
    public final void q(long j10, o0.b bVar) {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z10;
        w1.f10849a.set(this);
        try {
            synchronized (this) {
                int r02 = debugStatus;
                if (r02 == 2 || r02 == 3) {
                    z10 = false;
                } else {
                    debugStatus = 1;
                    notifyAll();
                    z10 = true;
                }
            }
            if (!z10) {
                _thread = null;
                Z();
                if (J()) {
                    return;
                }
                p();
                return;
            }
            long j10 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long jO = O();
                if (jO == LocationRequestCompat.PASSIVE_INTERVAL) {
                    long jNanoTime = System.nanoTime();
                    if (j10 == LocationRequestCompat.PASSIVE_INTERVAL) {
                        j10 = f10788g + jNanoTime;
                    }
                    long j11 = j10 - jNanoTime;
                    if (j11 <= 0) {
                        _thread = null;
                        Z();
                        if (J()) {
                            return;
                        }
                        p();
                        return;
                    }
                    if (jO > j11) {
                        jO = j11;
                    }
                } else {
                    j10 = Long.MAX_VALUE;
                }
                if (jO > 0) {
                    int r03 = debugStatus;
                    if (r03 == 2 || r03 == 3) {
                        _thread = null;
                        Z();
                        if (J()) {
                            return;
                        }
                        p();
                        return;
                    }
                    LockSupport.parkNanos(this, jO);
                }
            }
        } catch (Throwable th2) {
            _thread = null;
            Z();
            if (!J()) {
                p();
            }
            throw th2;
        }
    }

    @Override // nc.o0
    public final void s(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.s(runnable);
    }

    @Override // nc.o0, nc.n0
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }
}
