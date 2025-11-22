package lh;

import c5.v;
import c5.w;
import l9.m;
import lh.j;
import nc.a0;
import nc.f0;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRViewModel$generateQR$1", f = "MobileAccidentGenerateQRViewModel.kt", l = {29}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class h extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f9846a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f9847b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f9848c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRViewModel$generateQR$1$job$1", f = "MobileAccidentGenerateQRViewModel.kt", l = {27}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f9849a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ e f9850b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e eVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f9850b = eVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f9850b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f9849a;
            if (r12 == 0) {
                w.F(obj);
                j jVar = this.f9850b.f9836h;
                j.a aVar2 = new j.a();
                this.f9849a = 1;
                if (jVar.d(aVar2, this) == aVar) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(e eVar, p9.d<? super h> dVar) {
        super(2, dVar);
        this.f9848c = eVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        h hVar = new h(this.f9848c, dVar);
        hVar.f9847b = obj;
        return hVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((h) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f9846a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f9847b;
            e eVar = this.f9848c;
            f0 f0VarN = v.n(a0Var, eVar.f9836h.f9855c, new a(eVar, null), 2);
            this.f9846a = 1;
            if (f0VarN.m0(this) == aVar) {
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
