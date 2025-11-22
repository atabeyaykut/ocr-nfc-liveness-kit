package androidx.camera.core.impl;

import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class LiveDataObservable<T> implements Observable<T> {
    final MutableLiveData<Result<T>> mLiveData = new MutableLiveData<>();

    @GuardedBy("mObservers")
    private final Map<Observable.Observer<? super T>, LiveDataObserverAdapter<T>> mObservers = new HashMap();

    public static final class LiveDataObserverAdapter<T> implements Observer<Result<T>> {
        final AtomicBoolean mActive = new AtomicBoolean(true);
        final Executor mExecutor;
        final Observable.Observer<? super T> mObserver;

        public LiveDataObserverAdapter(@NonNull Executor executor, @NonNull Observable.Observer<? super T> observer) {
            this.mExecutor = executor;
            this.mObserver = observer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onChanged$0(Result result) {
            if (this.mActive.get()) {
                if (result.completedSuccessfully()) {
                    this.mObserver.onNewData((Object) result.getValue());
                } else {
                    Preconditions.checkNotNull(result.getError());
                    this.mObserver.onError(result.getError());
                }
            }
        }

        public void disable() {
            this.mActive.set(false);
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@NonNull final Result<T> result) {
            this.mExecutor.execute(new Runnable() { // from class: androidx.camera.core.impl.z
                @Override // java.lang.Runnable
                public final void run() {
                    this.f743a.lambda$onChanged$0(result);
                }
            });
        }
    }

    public static final class Result<T> {

        @Nullable
        private final Throwable mError;

        @Nullable
        private final T mValue;

        private Result(@Nullable T t10, @Nullable Throwable th2) {
            this.mValue = t10;
            this.mError = th2;
        }

        public static <T> Result<T> fromError(@NonNull Throwable th2) {
            return new Result<>(null, (Throwable) Preconditions.checkNotNull(th2));
        }

        public static <T> Result<T> fromValue(@Nullable T t10) {
            return new Result<>(t10, null);
        }

        public boolean completedSuccessfully() {
            return this.mError == null;
        }

        @Nullable
        public Throwable getError() {
            return this.mError;
        }

        @Nullable
        public T getValue() {
            if (completedSuccessfully()) {
                return this.mValue;
            }
            throw new IllegalStateException("Result contains an error. Does not contain a value.");
        }

        @NonNull
        public String toString() {
            StringBuilder sb2;
            Object obj;
            StringBuilder sb3 = new StringBuilder("[Result: <");
            if (completedSuccessfully()) {
                sb2 = new StringBuilder("Value: ");
                obj = this.mValue;
            } else {
                sb2 = new StringBuilder("Error: ");
                obj = this.mError;
            }
            sb2.append(obj);
            sb3.append(sb2.toString());
            sb3.append(">]");
            return sb3.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addObserver$2(LiveDataObserverAdapter liveDataObserverAdapter, LiveDataObserverAdapter liveDataObserverAdapter2) {
        if (liveDataObserverAdapter != null) {
            this.mLiveData.removeObserver(liveDataObserverAdapter);
        }
        this.mLiveData.observeForever(liveDataObserverAdapter2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchData$0(CallbackToFutureAdapter.Completer completer) {
        Throwable error;
        Result<T> value = this.mLiveData.getValue();
        if (value == null) {
            error = new IllegalStateException("Observable has not yet been initialized with a value.");
        } else if (value.completedSuccessfully()) {
            completer.set(value.getValue());
            return;
        } else {
            Preconditions.checkNotNull(value.getError());
            error = value.getError();
        }
        completer.setException(error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$fetchData$1(CallbackToFutureAdapter.Completer completer) throws Exception {
        CameraXExecutors.mainThreadExecutor().execute(new o(1, this, completer));
        return this + " [fetch@" + SystemClock.uptimeMillis() + "]";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeObserver$3(LiveDataObserverAdapter liveDataObserverAdapter) {
        this.mLiveData.removeObserver(liveDataObserverAdapter);
    }

    @Override // androidx.camera.core.impl.Observable
    public void addObserver(@NonNull Executor executor, @NonNull Observable.Observer<? super T> observer) {
        synchronized (this.mObservers) {
            final LiveDataObserverAdapter<T> liveDataObserverAdapter = this.mObservers.get(observer);
            if (liveDataObserverAdapter != null) {
                liveDataObserverAdapter.disable();
            }
            final LiveDataObserverAdapter<T> liveDataObserverAdapter2 = new LiveDataObserverAdapter<>(executor, observer);
            this.mObservers.put(observer, liveDataObserverAdapter2);
            CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.y
                @Override // java.lang.Runnable
                public final void run() {
                    this.f740a.lambda$addObserver$2(liveDataObserverAdapter, liveDataObserverAdapter2);
                }
            });
        }
    }

    @Override // androidx.camera.core.impl.Observable
    @NonNull
    public m5.a<T> fetchData() {
        return CallbackToFutureAdapter.getFuture(new androidx.camera.camera2.interop.c(1, this));
    }

    @NonNull
    public LiveData<Result<T>> getLiveData() {
        return this.mLiveData;
    }

    public void postError(@NonNull Throwable th2) {
        this.mLiveData.postValue(Result.fromError(th2));
    }

    public void postValue(@Nullable T t10) {
        this.mLiveData.postValue(Result.fromValue(t10));
    }

    @Override // androidx.camera.core.impl.Observable
    public void removeObserver(@NonNull Observable.Observer<? super T> observer) {
        synchronized (this.mObservers) {
            final LiveDataObserverAdapter<T> liveDataObserverAdapterRemove = this.mObservers.remove(observer);
            if (liveDataObserverAdapterRemove != null) {
                liveDataObserverAdapterRemove.disable();
                CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f738a.lambda$removeObserver$3(liveDataObserverAdapterRemove);
                    }
                });
            }
        }
    }
}
