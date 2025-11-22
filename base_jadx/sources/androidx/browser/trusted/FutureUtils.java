package androidx.browser.trusted;

import androidx.annotation.NonNull;
import androidx.concurrent.futures.ResolvableFuture;

/* loaded from: classes.dex */
class FutureUtils {
    private FutureUtils() {
    }

    @NonNull
    public static <T> m5.a<T> immediateFailedFuture(@NonNull Throwable th2) {
        ResolvableFuture resolvableFutureCreate = ResolvableFuture.create();
        resolvableFutureCreate.setException(th2);
        return resolvableFutureCreate;
    }
}
