package rc;

import java.io.InterruptedIOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import vc.e;

/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public ThreadPoolExecutor f14492a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque<e.a> f14493b = new ArrayDeque<>();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque<e.a> f14494c = new ArrayDeque<>();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayDeque<vc.e> f14495d = new ArrayDeque<>();

    public final synchronized void a() {
        Iterator<e.a> it = this.f14493b.iterator();
        while (it.hasNext()) {
            vc.e.this.cancel();
        }
        Iterator<e.a> it2 = this.f14494c.iterator();
        while (it2.hasNext()) {
            vc.e.this.cancel();
        }
        Iterator<vc.e> it3 = this.f14495d.iterator();
        while (it3.hasNext()) {
            it3.next().cancel();
        }
    }

    public final synchronized ExecutorService b() {
        ThreadPoolExecutor threadPoolExecutor;
        if (this.f14492a == null) {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            SynchronousQueue synchronousQueue = new SynchronousQueue();
            String name = sc.c.f + " Dispatcher";
            kotlin.jvm.internal.h.f(name, "name");
            this.f14492a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, timeUnit, synchronousQueue, new sc.b(name, false));
        }
        threadPoolExecutor = this.f14492a;
        kotlin.jvm.internal.h.c(threadPoolExecutor);
        return threadPoolExecutor;
    }

    public final void c(e.a call) {
        kotlin.jvm.internal.h.f(call, "call");
        call.f18515a.decrementAndGet();
        ArrayDeque<e.a> arrayDeque = this.f14494c;
        synchronized (this) {
            if (!arrayDeque.remove(call)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            l9.m mVar = l9.m.f9594a;
        }
        e();
    }

    public final void d(vc.e call) {
        kotlin.jvm.internal.h.f(call, "call");
        ArrayDeque<vc.e> arrayDeque = this.f14495d;
        synchronized (this) {
            if (!arrayDeque.remove(call)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            l9.m mVar = l9.m.f9594a;
        }
        e();
    }

    public final void e() {
        byte[] bArr = sc.c.f15380a;
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<e.a> it = this.f14493b.iterator();
            kotlin.jvm.internal.h.e(it, "readyAsyncCalls.iterator()");
            while (it.hasNext()) {
                e.a next = it.next();
                if (this.f14494c.size() >= 64) {
                    break;
                }
                if (next.f18515a.get() < 5) {
                    it.remove();
                    next.f18515a.incrementAndGet();
                    arrayList.add(next);
                    this.f14494c.add(next);
                }
            }
            f();
            l9.m mVar = l9.m.f9594a;
        }
        int size = arrayList.size();
        for (int r22 = 0; r22 < size; r22++) {
            e.a aVar = (e.a) arrayList.get(r22);
            ExecutorService executorServiceB = b();
            aVar.getClass();
            vc.e eVar = vc.e.this;
            l lVar = eVar.f18512r.f14550a;
            byte[] bArr2 = sc.c.f15380a;
            try {
                try {
                    ((ThreadPoolExecutor) executorServiceB).execute(aVar);
                } catch (RejectedExecutionException e10) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e10);
                    eVar.h(interruptedIOException);
                    aVar.f18516b.a(eVar, interruptedIOException);
                    eVar.f18512r.f14550a.c(aVar);
                }
            } catch (Throwable th2) {
                eVar.f18512r.f14550a.c(aVar);
                throw th2;
            }
        }
    }

    public final synchronized int f() {
        return this.f14494c.size() + this.f14495d.size();
    }
}
