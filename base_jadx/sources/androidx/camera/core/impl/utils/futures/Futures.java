package androidx.camera.core.impl.utils.futures;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.arch.core.util.Function;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.ImmediateFuture;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class Futures {
    private static final Function<?, ?> IDENTITY_FUNCTION = new Function<Object, Object>() { // from class: androidx.camera.core.impl.utils.futures.Futures.2
        @Override // androidx.arch.core.util.Function
        public Object apply(Object obj) {
            return obj;
        }
    };

    public static final class CallbackListener<V> implements Runnable {
        final FutureCallback<? super V> mCallback;
        final Future<V> mFuture;

        public CallbackListener(Future<V> future, FutureCallback<? super V> futureCallback) {
            this.mFuture = future;
            this.mCallback = futureCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.mCallback.onSuccess(Futures.getDone(this.mFuture));
            } catch (Error e10) {
                e = e10;
                this.mCallback.onFailure(e);
            } catch (RuntimeException e11) {
                e = e11;
                this.mCallback.onFailure(e);
            } catch (ExecutionException e12) {
                this.mCallback.onFailure(e12.getCause());
            }
        }

        public String toString() {
            return CallbackListener.class.getSimpleName() + "," + this.mCallback;
        }
    }

    private Futures() {
    }

    public static <V> void addCallback(@NonNull m5.a<V> aVar, @NonNull FutureCallback<? super V> futureCallback, @NonNull Executor executor) {
        Preconditions.checkNotNull(futureCallback);
        aVar.addListener(new CallbackListener(aVar, futureCallback), executor);
    }

    @NonNull
    public static <V> m5.a<List<V>> allAsList(@NonNull Collection<? extends m5.a<? extends V>> collection) {
        return new ListFuture(new ArrayList(collection), true, CameraXExecutors.directExecutor());
    }

    @Nullable
    public static <V> V getDone(@NonNull Future<V> future) throws ExecutionException {
        Preconditions.checkState(future.isDone(), "Future was expected to be done, " + future);
        return (V) getUninterruptibly(future);
    }

    @Nullable
    public static <V> V getUninterruptibly(@NonNull Future<V> future) throws ExecutionException {
        V v10;
        boolean z10 = false;
        while (true) {
            try {
                v10 = future.get();
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
        return v10;
    }

    @NonNull
    public static <V> m5.a<V> immediateFailedFuture(@NonNull Throwable th2) {
        return new ImmediateFuture.ImmediateFailedFuture(th2);
    }

    @NonNull
    public static <V> ScheduledFuture<V> immediateFailedScheduledFuture(@NonNull Throwable th2) {
        return new ImmediateFuture.ImmediateFailedScheduledFuture(th2);
    }

    @NonNull
    public static <V> m5.a<V> immediateFuture(@Nullable V v10) {
        return v10 == null ? ImmediateFuture.nullFuture() : new ImmediateFuture.ImmediateSuccessfulFuture(v10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$nonCancellationPropagating$0(m5.a aVar, CallbackToFutureAdapter.Completer completer) throws Exception {
        propagateTransform(false, aVar, IDENTITY_FUNCTION, completer, CameraXExecutors.directExecutor());
        return "nonCancellationPropagating[" + aVar + "]";
    }

    @NonNull
    public static <V> m5.a<V> nonCancellationPropagating(@NonNull m5.a<V> aVar) {
        Preconditions.checkNotNull(aVar);
        return aVar.isDone() ? aVar : CallbackToFutureAdapter.getFuture(new a(0, aVar));
    }

    public static <V> void propagate(@NonNull m5.a<V> aVar, @NonNull CallbackToFutureAdapter.Completer<V> completer) {
        propagateTransform(aVar, IDENTITY_FUNCTION, completer, CameraXExecutors.directExecutor());
    }

    public static <I, O> void propagateTransform(@NonNull m5.a<I> aVar, @NonNull Function<? super I, ? extends O> function, @NonNull CallbackToFutureAdapter.Completer<O> completer, @NonNull Executor executor) {
        propagateTransform(true, aVar, function, completer, executor);
    }

    private static <I, O> void propagateTransform(boolean z10, @NonNull final m5.a<I> aVar, @NonNull final Function<? super I, ? extends O> function, @NonNull final CallbackToFutureAdapter.Completer<O> completer, @NonNull Executor executor) {
        Preconditions.checkNotNull(aVar);
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(completer);
        Preconditions.checkNotNull(executor);
        addCallback(aVar, new FutureCallback<I>() { // from class: androidx.camera.core.impl.utils.futures.Futures.3
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th2) {
                completer.setException(th2);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable I r32) {
                try {
                    completer.set(function.apply(r32));
                } catch (Throwable th2) {
                    completer.setException(th2);
                }
            }
        }, executor);
        if (z10) {
            completer.addCancellationListener(new Runnable() { // from class: androidx.camera.core.impl.utils.futures.Futures.4
                @Override // java.lang.Runnable
                public void run() {
                    aVar.cancel(true);
                }
            }, CameraXExecutors.directExecutor());
        }
    }

    @NonNull
    public static <V> m5.a<List<V>> successfulAsList(@NonNull Collection<? extends m5.a<? extends V>> collection) {
        return new ListFuture(new ArrayList(collection), false, CameraXExecutors.directExecutor());
    }

    @NonNull
    public static <I, O> m5.a<O> transform(@NonNull m5.a<I> aVar, @NonNull final Function<? super I, ? extends O> function, @NonNull Executor executor) {
        Preconditions.checkNotNull(function);
        return transformAsync(aVar, new AsyncFunction<I, O>() { // from class: androidx.camera.core.impl.utils.futures.Futures.1
            @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
            public m5.a<O> apply(I r22) {
                return Futures.immediateFuture(function.apply(r22));
            }
        }, executor);
    }

    @NonNull
    public static <I, O> m5.a<O> transformAsync(@NonNull m5.a<I> aVar, @NonNull AsyncFunction<? super I, ? extends O> asyncFunction, @NonNull Executor executor) {
        ChainingListenableFuture chainingListenableFuture = new ChainingListenableFuture(asyncFunction, aVar);
        aVar.addListener(chainingListenableFuture, executor);
        return chainingListenableFuture;
    }
}
