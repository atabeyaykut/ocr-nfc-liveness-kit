package b9;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class d<T> extends y8.d<T> implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final T f1187a;

    /* JADX WARN: Multi-variable type inference failed */
    public d(j9.a aVar) {
        this.f1187a = aVar;
    }

    @Override // java.util.concurrent.Callable
    public final T call() {
        return this.f1187a;
    }
}
