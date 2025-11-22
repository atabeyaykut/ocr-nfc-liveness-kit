package h6;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class s implements Callable<Void> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f6957a;

    public s(t tVar) {
        this.f6957a = tVar;
    }

    @Override // java.util.concurrent.Callable
    public final Void call() throws Exception {
        t.a(this.f6957a);
        return null;
    }
}
