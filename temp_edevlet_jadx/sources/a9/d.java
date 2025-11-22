package a9;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class d<T> extends y8.b<T> implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final T f137b;

    public d(T t10) {
        this.f137b = t10;
    }

    @Override // java.util.concurrent.Callable
    public final T call() {
        return this.f137b;
    }
}
