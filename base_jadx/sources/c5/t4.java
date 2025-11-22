package c5;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class t4 implements Callable<byte[]> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w4 f2000a;

    public t4(w4 w4Var, s sVar, String str) {
        this.f2000a = w4Var;
    }

    @Override // java.util.concurrent.Callable
    public final byte[] call() throws Exception {
        w4 w4Var = this.f2000a;
        w4Var.f2101a.a();
        a6 a6Var = w4Var.f2101a.f1824h;
        o7.I(a6Var);
        a6Var.b();
        throw new IllegalStateException("Unexpected call on client side");
    }
}
