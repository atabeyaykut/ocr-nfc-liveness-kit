package f3;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class c extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference<a> f5514a;

    /* renamed from: b, reason: collision with root package name */
    public final long f5515b;

    /* renamed from: c, reason: collision with root package name */
    public final CountDownLatch f5516c = new CountDownLatch(1);

    /* renamed from: d, reason: collision with root package name */
    public boolean f5517d = false;

    public c(a aVar, long j10) {
        this.f5514a = new WeakReference<>(aVar);
        this.f5515b = j10;
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        a aVar;
        WeakReference<a> weakReference = this.f5514a;
        try {
            if (this.f5516c.await(this.f5515b, TimeUnit.MILLISECONDS) || (aVar = weakReference.get()) == null) {
                return;
            }
            aVar.b();
            this.f5517d = true;
        } catch (InterruptedException unused) {
            a aVar2 = weakReference.get();
            if (aVar2 != null) {
                aVar2.b();
                this.f5517d = true;
            }
        }
    }
}
