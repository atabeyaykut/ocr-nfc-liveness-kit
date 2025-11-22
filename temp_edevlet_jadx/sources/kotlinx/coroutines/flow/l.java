package kotlinx.coroutines.flow;

@r9.e(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt", f = "Emitters.kt", l = {216}, m = "invokeSafely$FlowKt__EmittersKt")
/* loaded from: classes2.dex */
public final class l<T> extends r9.c {

    /* renamed from: a, reason: collision with root package name */
    public Throwable f9077a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f9078b;

    /* renamed from: c, reason: collision with root package name */
    public int f9079c;

    public l(p9.d<? super l> dVar) {
        super(dVar);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) {
        this.f9078b = obj;
        this.f9079c |= Integer.MIN_VALUE;
        return a2.b.f(null, null, null, this);
    }
}
