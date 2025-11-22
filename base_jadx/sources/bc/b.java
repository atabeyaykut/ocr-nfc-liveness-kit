package bc;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes2.dex */
public class b implements k {

    /* renamed from: a, reason: collision with root package name */
    public final Lock f1189a;

    public /* synthetic */ b(int r12) {
        this(new ReentrantLock());
    }

    public b(Lock lock) {
        kotlin.jvm.internal.h.f(lock, "lock");
        this.f1189a = lock;
    }

    @Override // bc.k
    public void lock() {
        this.f1189a.lock();
    }

    @Override // bc.k
    public final void unlock() {
        this.f1189a.unlock();
    }
}
