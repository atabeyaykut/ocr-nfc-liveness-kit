package k;

import k.h;

@r9.e(c = "coil.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {73}, m = "intercept")
/* loaded from: classes.dex */
public final class e extends r9.c {

    /* renamed from: a, reason: collision with root package name */
    public a f8578a;

    /* renamed from: b, reason: collision with root package name */
    public h.a f8579b;

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f8580c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ a f8581d;

    /* renamed from: e, reason: collision with root package name */
    public int f8582e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(a aVar, p9.d<? super e> dVar) {
        super(dVar);
        this.f8581d = aVar;
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) {
        this.f8580c = obj;
        this.f8582e |= Integer.MIN_VALUE;
        return this.f8581d.a(null, this);
    }
}
