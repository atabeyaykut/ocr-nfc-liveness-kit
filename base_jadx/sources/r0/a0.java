package r0;

import androidx.lifecycle.LifecycleOwner;
import com.airbnb.mvrx.MavericksViewModel$assertOneActiveSubscription$observer$1;

@r9.e(c = "com.airbnb.mvrx.MavericksViewModel$assertOneActiveSubscription$1", f = "MavericksViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class a0 extends r9.i implements x9.q<kotlinx.coroutines.flow.g<Object>, Throwable, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z f13696a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e1 f13697b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LifecycleOwner f13698c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MavericksViewModel$assertOneActiveSubscription$observer$1 f13699d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(z zVar, e1 e1Var, LifecycleOwner lifecycleOwner, MavericksViewModel$assertOneActiveSubscription$observer$1 mavericksViewModel$assertOneActiveSubscription$observer$1, p9.d dVar) {
        super(3, dVar);
        this.f13696a = zVar;
        this.f13697b = e1Var;
        this.f13698c = lifecycleOwner;
        this.f13699d = mavericksViewModel$assertOneActiveSubscription$observer$1;
    }

    @Override // x9.q
    public final Object i(kotlinx.coroutines.flow.g<Object> gVar, Throwable th2, p9.d<? super l9.m> dVar) {
        kotlinx.coroutines.flow.g<Object> create = gVar;
        p9.d<? super l9.m> continuation = dVar;
        kotlin.jvm.internal.h.f(create, "$this$create");
        kotlin.jvm.internal.h.f(continuation, "continuation");
        return new a0(this.f13696a, this.f13697b, this.f13698c, this.f13699d, continuation).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        c5.w.F(obj);
        this.f13696a.f.remove(this.f13697b.f13738a);
        this.f13698c.getLifecycle().removeObserver(this.f13699d);
        return l9.m.f9594a;
    }
}
