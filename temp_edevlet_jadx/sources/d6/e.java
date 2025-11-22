package d6;

import h5.l;
import h6.o0;
import h6.p0;
import h6.v;
import h6.x;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
public final class e implements Callable<Void> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f4671a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f4672b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ o6.c f4673c;

    public e(boolean z10, x xVar, o6.c cVar) {
        this.f4671a = z10;
        this.f4672b = xVar;
        this.f4673c = cVar;
    }

    @Override // java.util.concurrent.Callable
    public final Void call() throws Exception {
        if (!this.f4671a) {
            return null;
        }
        x xVar = this.f4672b;
        xVar.getClass();
        v vVar = new v(xVar, this.f4673c);
        ExecutorService executorService = p0.f6951a;
        xVar.f6987k.execute(new o0(vVar, new l()));
        return null;
    }
}
