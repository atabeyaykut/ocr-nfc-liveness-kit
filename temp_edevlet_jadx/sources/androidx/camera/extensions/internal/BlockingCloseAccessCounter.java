package androidx.camera.extensions.internal;

import androidx.annotation.GuardedBy;
import androidx.annotation.RequiresApi;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

@RequiresApi(21)
/* loaded from: classes.dex */
final class BlockingCloseAccessCounter {
    private static final int COUNTER_DESTROYED_FLAG = -1;

    @GuardedBy("mLock")
    private AtomicInteger mAccessCount = new AtomicInteger(0);
    private final Condition mDoneCondition;
    private final Lock mLock;

    public BlockingCloseAccessCounter() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.mLock = reentrantLock;
        this.mDoneCondition = reentrantLock.newCondition();
    }

    public void decrement() {
        this.mLock.lock();
        try {
            int andDecrement = this.mAccessCount.getAndDecrement();
            if (andDecrement == -1) {
                throw new IllegalStateException("Unable to decrement. Counter already destroyed");
            }
            if (andDecrement == 0) {
                throw new IllegalStateException("Unable to decrement. No corresponding counter increment");
            }
            this.mDoneCondition.signal();
        } finally {
            this.mLock.unlock();
        }
    }

    public void destroyAndWaitForZeroAccess() {
        this.mLock.lock();
        while (!this.mAccessCount.compareAndSet(0, -1)) {
            try {
                try {
                    this.mDoneCondition.await();
                } catch (InterruptedException unused) {
                }
            } finally {
                this.mLock.unlock();
            }
        }
    }

    public boolean tryIncrement() {
        this.mLock.lock();
        try {
            if (this.mAccessCount.get() == -1) {
                this.mLock.unlock();
                return false;
            }
            this.mAccessCount.getAndIncrement();
            this.mLock.unlock();
            return true;
        } catch (Throwable th2) {
            this.mLock.unlock();
            throw th2;
        }
    }
}
