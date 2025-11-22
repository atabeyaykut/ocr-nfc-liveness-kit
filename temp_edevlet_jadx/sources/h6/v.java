package h6;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class v implements Callable<h5.k<Void>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o6.d f6974a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f6975b;

    public v(x xVar, o6.c cVar) {
        this.f6975b = xVar;
        this.f6974a = cVar;
    }

    @Override // java.util.concurrent.Callable
    public final h5.k<Void> call() throws Exception {
        return x.a(this.f6975b, this.f6974a);
    }
}
