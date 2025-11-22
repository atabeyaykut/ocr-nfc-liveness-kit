package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.concurrent.Executor;

@RequiresApi(21)
/* loaded from: classes.dex */
public interface Observable<T> {

    public interface Observer<T> {
        void onError(@NonNull Throwable th2);

        void onNewData(@Nullable T t10);
    }

    void addObserver(@NonNull Executor executor, @NonNull Observer<? super T> observer);

    @NonNull
    m5.a<T> fetchData();

    void removeObserver(@NonNull Observer<? super T> observer);
}
