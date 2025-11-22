package h6;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class r implements Callable<Void> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f6954a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f6955b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ t f6956c;

    public r(t tVar, long j10, String str) {
        this.f6956c = tVar;
        this.f6954a = j10;
        this.f6955b = str;
    }

    @Override // java.util.concurrent.Callable
    public final Void call() throws Exception {
        t tVar = this.f6956c;
        b0 b0Var = tVar.f6969l;
        if (b0Var != null && b0Var.f6890e.get()) {
            return null;
        }
        tVar.f6965h.f7287b.c(this.f6954a, this.f6955b);
        return null;
    }
}
