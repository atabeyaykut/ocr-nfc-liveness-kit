package androidx.camera.core.impl.utils.futures;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.core.util.Preconditions;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@RequiresApi(21)
/* loaded from: classes.dex */
class ChainingListenableFuture<I, O> extends FutureChain<O> implements Runnable {

    @Nullable
    private AsyncFunction<? super I, ? extends O> mFunction;

    @Nullable
    private m5.a<? extends I> mInputFuture;
    private final BlockingQueue<Boolean> mMayInterruptIfRunningChannel = new LinkedBlockingQueue(1);
    private final CountDownLatch mOutputCreated = new CountDownLatch(1);

    @Nullable
    volatile m5.a<? extends O> mOutputFuture;

    public ChainingListenableFuture(@NonNull AsyncFunction<? super I, ? extends O> asyncFunction, @NonNull m5.a<? extends I> aVar) {
        this.mFunction = (AsyncFunction) Preconditions.checkNotNull(asyncFunction);
        this.mInputFuture = (m5.a) Preconditions.checkNotNull(aVar);
    }

    private void cancel(@Nullable Future<?> future, boolean z10) {
        if (future != null) {
            future.cancel(z10);
        }
    }

    private <E> void putUninterruptibly(@NonNull BlockingQueue<E> blockingQueue, @NonNull E e10) {
        boolean z10 = false;
        while (true) {
            try {
                blockingQueue.put(e10);
                break;
            } catch (InterruptedException unused) {
                z10 = true;
            } catch (Throwable th2) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private <E> E takeUninterruptibly(@NonNull BlockingQueue<E> blockingQueue) {
        E eTake;
        boolean z10 = false;
        while (true) {
            try {
                eTake = blockingQueue.take();
                break;
            } catch (InterruptedException unused) {
                z10 = true;
            } catch (Throwable th2) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        return eTake;
    }

    @Override // androidx.camera.core.impl.utils.futures.FutureChain, java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        if (!super.cancel(z10)) {
            return false;
        }
        putUninterruptibly(this.mMayInterruptIfRunningChannel, Boolean.valueOf(z10));
        cancel(this.mInputFuture, z10);
        cancel(this.mOutputFuture, z10);
        return true;
    }

    @Override // androidx.camera.core.impl.utils.futures.FutureChain, java.util.concurrent.Future
    @Nullable
    public O get() throws ExecutionException, InterruptedException {
        if (!isDone()) {
            m5.a<? extends I> aVar = this.mInputFuture;
            if (aVar != null) {
                aVar.get();
            }
            this.mOutputCreated.await();
            m5.a<? extends O> aVar2 = this.mOutputFuture;
            if (aVar2 != null) {
                aVar2.get();
            }
        }
        return (O) super.get();
    }

    @Override // androidx.camera.core.impl.utils.futures.FutureChain, java.util.concurrent.Future
    @Nullable
    public O get(long j10, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (!isDone()) {
            TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
            if (timeUnit != timeUnit2) {
                j10 = timeUnit2.convert(j10, timeUnit);
                timeUnit = timeUnit2;
            }
            m5.a<? extends I> aVar = this.mInputFuture;
            if (aVar != null) {
                long jNanoTime = System.nanoTime();
                aVar.get(j10, timeUnit);
                j10 -= Math.max(0L, System.nanoTime() - jNanoTime);
            }
            long jNanoTime2 = System.nanoTime();
            if (!this.mOutputCreated.await(j10, timeUnit)) {
                throw new TimeoutException();
            }
            j10 -= Math.max(0L, System.nanoTime() - jNanoTime2);
            m5.a<? extends O> aVar2 = this.mOutputFuture;
            if (aVar2 != null) {
                aVar2.get(j10, timeUnit);
            }
        }
        return (O) super.get(j10, timeUnit);
    }

    @Override // java.lang.Runnable
    public void run() {
        final m5.a<? extends O> aVarApply;
        try {
            try {
                try {
                    aVarApply = this.mFunction.apply(Futures.getUninterruptibly(this.mInputFuture));
                    this.mOutputFuture = aVarApply;
                } catch (Throwable th2) {
                    this.mFunction = null;
                    this.mInputFuture = null;
                    this.mOutputCreated.countDown();
                    throw th2;
                }
            } catch (CancellationException unused) {
                cancel(false);
            } catch (ExecutionException e10) {
                setException(e10.getCause());
            }
        } catch (Error e11) {
            e = e11;
            setException(e);
            this.mFunction = null;
            this.mInputFuture = null;
            this.mOutputCreated.countDown();
            return;
        } catch (UndeclaredThrowableException e12) {
            e = e12.getCause();
            setException(e);
            this.mFunction = null;
            this.mInputFuture = null;
            this.mOutputCreated.countDown();
            return;
        } catch (Exception e13) {
            e = e13;
            setException(e);
            this.mFunction = null;
            this.mInputFuture = null;
            this.mOutputCreated.countDown();
            return;
        }
        if (!isCancelled()) {
            aVarApply.addListener(new Runnable() { // from class: androidx.camera.core.impl.utils.futures.ChainingListenableFuture.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        try {
                            ChainingListenableFuture.this.set(Futures.getUninterruptibly(aVarApply));
                        } catch (CancellationException unused2) {
                            ChainingListenableFuture.this.cancel(false);
                            ChainingListenableFuture.this.mOutputFuture = null;
                            return;
                        } catch (ExecutionException e14) {
                            ChainingListenableFuture.this.setException(e14.getCause());
                        }
                        ChainingListenableFuture.this.mOutputFuture = null;
                    } catch (Throwable th3) {
                        ChainingListenableFuture.this.mOutputFuture = null;
                        throw th3;
                    }
                }
            }, CameraXExecutors.directExecutor());
            this.mFunction = null;
            this.mInputFuture = null;
            this.mOutputCreated.countDown();
            return;
        }
        aVarApply.cancel(((Boolean) takeUninterruptibly(this.mMayInterruptIfRunningChannel)).booleanValue());
        this.mOutputFuture = null;
        this.mFunction = null;
        this.mInputFuture = null;
        this.mOutputCreated.countDown();
    }
}
