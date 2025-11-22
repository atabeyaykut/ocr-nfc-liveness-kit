package h5;

import androidx.annotation.NonNull;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public final class o<T> implements g, f, d {

    /* renamed from: a, reason: collision with root package name */
    public final CountDownLatch f6844a = new CountDownLatch(1);

    @Override // h5.d
    public final void a() {
        this.f6844a.countDown();
    }

    @Override // h5.f
    public final void e(@NonNull Exception exc) {
        this.f6844a.countDown();
    }

    @Override // h5.g
    public final void onSuccess(T t10) {
        this.f6844a.countDown();
    }
}
