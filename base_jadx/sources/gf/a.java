package gf;

import c5.w;
import l9.m;
import nc.a0;
import r9.i;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.core.network.InteractorKt$launchObserve$1", f = "Interactor.kt", l = {123}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class a extends i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f6703a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p<kotlinx.coroutines.flow.f<Object>, p9.d<? super m>, Object> f6704b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6705c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public a(p<? super kotlinx.coroutines.flow.f<Object>, ? super p9.d<? super m>, ? extends Object> pVar, Object obj, p9.d<? super a> dVar) {
        super(2, dVar);
        this.f6704b = pVar;
        this.f6705c = obj;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [gf.d, java.lang.Object] */
    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        return new a(this.f6704b, this.f6705c, dVar);
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [gf.d, java.lang.Object] */
    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f6703a;
        if (r12 == 0) {
            w.F(obj);
            kotlinx.coroutines.flow.f<Object> fVarA = this.f6705c.a();
            this.f6703a = 1;
            if (this.f6704b.mo7invoke(fVarA, this) == aVar) {
                return aVar;
            }
        } else {
            if (r12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
        }
        return m.f9594a;
    }
}
