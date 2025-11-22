package androidx.camera.core.impl.utils.futures;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

@RequiresApi(21)
/* loaded from: classes.dex */
class ListFuture<V> implements m5.a<List<V>> {
    private final boolean mAllMustSucceed;

    @Nullable
    List<? extends m5.a<? extends V>> mFutures;

    @NonNull
    private final AtomicInteger mRemaining;

    @NonNull
    private final m5.a<List<V>> mResult = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver<List<V>>() { // from class: androidx.camera.core.impl.utils.futures.ListFuture.1
        @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
        public Object attachCompleter(@NonNull CallbackToFutureAdapter.Completer<List<V>> completer) {
            Preconditions.checkState(ListFuture.this.mResultNotifier == null, "The result can only set once!");
            ListFuture.this.mResultNotifier = completer;
            return "ListFuture[" + this + "]";
        }
    });
    CallbackToFutureAdapter.Completer<List<V>> mResultNotifier;

    @Nullable
    List<V> mValues;

    public ListFuture(@NonNull List<? extends m5.a<? extends V>> list, boolean z10, @NonNull Executor executor) {
        this.mFutures = (List) Preconditions.checkNotNull(list);
        this.mValues = new ArrayList(list.size());
        this.mAllMustSucceed = z10;
        this.mRemaining = new AtomicInteger(list.size());
        init(executor);
    }

    private void callAllGets() throws InterruptedException {
        List<? extends m5.a<? extends V>> list = this.mFutures;
        if (list == null || isDone()) {
            return;
        }
        for (m5.a<? extends V> aVar : list) {
            while (!aVar.isDone()) {
                try {
                    aVar.get();
                } catch (Error e10) {
                    throw e10;
                } catch (InterruptedException e11) {
                    throw e11;
                } catch (Throwable unused) {
                    if (this.mAllMustSucceed) {
                        return;
                    }
                }
            }
        }
    }

    private void init(@NonNull Executor executor) {
        addListener(new Runnable() { // from class: androidx.camera.core.impl.utils.futures.ListFuture.2
            @Override // java.lang.Runnable
            public void run() {
                ListFuture listFuture = ListFuture.this;
                listFuture.mValues = null;
                listFuture.mFutures = null;
            }
        }, CameraXExecutors.directExecutor());
        if (this.mFutures.isEmpty()) {
            this.mResultNotifier.set(new ArrayList(this.mValues));
            return;
        }
        for (int r12 = 0; r12 < this.mFutures.size(); r12++) {
            this.mValues.add(null);
        }
        List<? extends m5.a<? extends V>> list = this.mFutures;
        for (final int r02 = 0; r02 < list.size(); r02++) {
            final m5.a<? extends V> aVar = list.get(r02);
            aVar.addListener(new Runnable() { // from class: androidx.camera.core.impl.utils.futures.ListFuture.3
                @Override // java.lang.Runnable
                public void run() {
                    ListFuture.this.setOneValue(r02, aVar);
                }
            }, executor);
        }
    }

    @Override // m5.a
    public void addListener(@NonNull Runnable runnable, @NonNull Executor executor) {
        this.mResult.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        List<? extends m5.a<? extends V>> list = this.mFutures;
        if (list != null) {
            Iterator<? extends m5.a<? extends V>> it = list.iterator();
            while (it.hasNext()) {
                it.next().cancel(z10);
            }
        }
        return this.mResult.cancel(z10);
    }

    @Override // java.util.concurrent.Future
    @Nullable
    public List<V> get() throws ExecutionException, InterruptedException {
        callAllGets();
        return this.mResult.get();
    }

    @Override // java.util.concurrent.Future
    public List<V> get(long j10, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.mResult.get(j10, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.mResult.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.mResult.isDone();
    }

    public void setOneValue(int r72, @NonNull Future<? extends V> future) {
        CallbackToFutureAdapter.Completer<List<V>> completer;
        ArrayList arrayList;
        int r73;
        List<V> list = this.mValues;
        if (isDone() || list == null) {
            Preconditions.checkState(this.mAllMustSucceed, "Future was done before all dependencies completed");
            return;
        }
        try {
            try {
                try {
                    try {
                        Preconditions.checkState(future.isDone(), "Tried to set value from future which is not done");
                        list.set(r72, Futures.getUninterruptibly(future));
                        r73 = this.mRemaining.decrementAndGet();
                        Preconditions.checkState(r73 >= 0, "Less than 0 remaining futures");
                    } catch (ExecutionException e10) {
                        if (this.mAllMustSucceed) {
                            this.mResultNotifier.setException(e10.getCause());
                        }
                        int r74 = this.mRemaining.decrementAndGet();
                        Preconditions.checkState(r74 >= 0, "Less than 0 remaining futures");
                        if (r74 != 0) {
                            return;
                        }
                        List<V> list2 = this.mValues;
                        if (list2 != null) {
                            completer = this.mResultNotifier;
                            arrayList = new ArrayList(list2);
                        }
                    }
                } catch (RuntimeException e11) {
                    if (this.mAllMustSucceed) {
                        this.mResultNotifier.setException(e11);
                    }
                    int r75 = this.mRemaining.decrementAndGet();
                    Preconditions.checkState(r75 >= 0, "Less than 0 remaining futures");
                    if (r75 != 0) {
                        return;
                    }
                    List<V> list3 = this.mValues;
                    if (list3 != null) {
                        completer = this.mResultNotifier;
                        arrayList = new ArrayList(list3);
                    }
                }
            } catch (Error e12) {
                this.mResultNotifier.setException(e12);
                int r76 = this.mRemaining.decrementAndGet();
                Preconditions.checkState(r76 >= 0, "Less than 0 remaining futures");
                if (r76 != 0) {
                    return;
                }
                List<V> list4 = this.mValues;
                if (list4 != null) {
                    completer = this.mResultNotifier;
                    arrayList = new ArrayList(list4);
                }
            } catch (CancellationException unused) {
                if (this.mAllMustSucceed) {
                    cancel(false);
                }
                int r77 = this.mRemaining.decrementAndGet();
                Preconditions.checkState(r77 >= 0, "Less than 0 remaining futures");
                if (r77 != 0) {
                    return;
                }
                List<V> list5 = this.mValues;
                if (list5 != null) {
                    completer = this.mResultNotifier;
                    arrayList = new ArrayList(list5);
                }
            }
            if (r73 == 0) {
                List<V> list6 = this.mValues;
                if (list6 != null) {
                    completer = this.mResultNotifier;
                    arrayList = new ArrayList(list6);
                    completer.set(arrayList);
                    return;
                }
                Preconditions.checkState(isDone());
            }
        } catch (Throwable th2) {
            int r82 = this.mRemaining.decrementAndGet();
            Preconditions.checkState(r82 >= 0, "Less than 0 remaining futures");
            if (r82 == 0) {
                List<V> list7 = this.mValues;
                if (list7 != null) {
                    this.mResultNotifier.set(new ArrayList(list7));
                } else {
                    Preconditions.checkState(isDone());
                }
            }
            throw th2;
        }
    }
}
