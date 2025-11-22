package p;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import c5.w;
import coil.request.ViewTargetRequestDelegate;
import nc.a0;

@r9.e(c = "coil.request.ViewTargetRequestManager$dispose$1", f = "ViewTargetRequestManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class p extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q f12194a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(q qVar, p9.d<? super p> dVar) {
        super(2, dVar);
        this.f12194a = qVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        return new p(this.f12194a, dVar);
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((p) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        q qVar = this.f12194a;
        ViewTargetRequestDelegate viewTargetRequestDelegate = qVar.f12197c;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.f2466e.a(null);
            r.b<?> bVar = viewTargetRequestDelegate.f2464c;
            boolean z10 = bVar instanceof LifecycleObserver;
            Lifecycle lifecycle = viewTargetRequestDelegate.f2465d;
            if (z10) {
                lifecycle.removeObserver((LifecycleObserver) bVar);
            }
            lifecycle.removeObserver(viewTargetRequestDelegate);
        }
        qVar.f12197c = null;
        return l9.m.f9594a;
    }
}
