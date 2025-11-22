package kotlinx.coroutines.flow;

@r9.e(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt", f = "Errors.kt", l = {156}, m = "catchImpl")
/* loaded from: classes2.dex */
public final class o<T> extends r9.c {

    /* renamed from: a, reason: collision with root package name */
    public kotlin.jvm.internal.v f9094a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f9095b;

    /* renamed from: c, reason: collision with root package name */
    public int f9096c;

    public o(p9.d<? super o> dVar) {
        super(dVar);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) {
        this.f9095b = obj;
        this.f9096c |= Integer.MIN_VALUE;
        return b8.f.n(null, null, this);
    }
}
