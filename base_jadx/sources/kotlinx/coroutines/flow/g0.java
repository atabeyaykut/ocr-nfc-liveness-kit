package kotlinx.coroutines.flow;

import androidx.constraintlayout.core.motion.utils.TypedValues;

@r9.e(c = "kotlinx.coroutines.flow.SubscribedFlowCollector", f = "Share.kt", l = {419, TypedValues.CycleType.TYPE_WAVE_PERIOD}, m = "onSubscription")
/* loaded from: classes2.dex */
public final class g0 extends r9.c {

    /* renamed from: a, reason: collision with root package name */
    public h0 f9059a;

    /* renamed from: b, reason: collision with root package name */
    public qc.m f9060b;

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f9061c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ h0<Object> f9062d;

    /* renamed from: e, reason: collision with root package name */
    public int f9063e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(h0<Object> h0Var, p9.d<? super g0> dVar) {
        super(dVar);
        this.f9062d = h0Var;
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) {
        this.f9061c = obj;
        this.f9063e |= Integer.MIN_VALUE;
        return this.f9062d.a(this);
    }
}
