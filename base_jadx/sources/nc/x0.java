package nc;

import java.util.concurrent.CancellationException;

@r9.e(c = "kotlinx.coroutines.InterruptibleKt$runInterruptible$2", f = "Interruptible.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class x0 extends r9.i implements x9.p<a0, p9.d<Object>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f10851a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x9.a<Object> f10852b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x0(x9.a<Object> aVar, p9.d<? super x0> dVar) {
        super(2, dVar);
        this.f10852b = aVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        x0 x0Var = new x0(this.f10852b, dVar);
        x0Var.f10851a = obj;
        return x0Var;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<Object> dVar) {
        return ((x0) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        c5.w.F(obj);
        p9.f coroutineContext = ((a0) this.f10851a).getCoroutineContext();
        x9.a<Object> aVar = this.f10852b;
        try {
            x1 x1Var = new x1(x5.a.k(coroutineContext));
            x1Var.c();
            try {
                return aVar.invoke();
            } finally {
                x1Var.a();
            }
        } catch (InterruptedException e10) {
            throw new CancellationException("Blocking call was interrupted due to parent cancellation").initCause(e10);
        }
    }
}
