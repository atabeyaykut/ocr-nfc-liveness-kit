package mh;

import c5.v;
import c5.w;
import l9.m;
import mh.f;
import nc.a0;
import nc.f0;
import r9.i;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.host.MobileAccidentQRScanViewModel$scanQR$1", f = "MobileAccidentQRScanViewModel.kt", l = {24}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class d extends i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f10444a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f10445b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f10446c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f10447d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.host.MobileAccidentQRScanViewModel$scanQR$1$job$1", f = "MobileAccidentQRScanViewModel.kt", l = {22}, m = "invokeSuspend")
    public static final class a extends i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f10448a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ c f10449b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f10450c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c cVar, String str, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f10449b = cVar;
            this.f10450c = str;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f10449b, this.f10450c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f10448a;
            if (r12 == 0) {
                w.F(obj);
                f fVar = this.f10449b.f10443h;
                f.a aVar2 = new f.a(this.f10450c);
                this.f10448a = 1;
                if (fVar.d(aVar2, this) == aVar) {
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
    public d(c cVar, String str, p9.d<? super d> dVar) {
        super(2, dVar);
        this.f10446c = cVar;
        this.f10447d = str;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        d dVar2 = new d(this.f10446c, this.f10447d, dVar);
        dVar2.f10445b = obj;
        return dVar2;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((d) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f10444a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f10445b;
            c cVar = this.f10446c;
            f0 f0VarN = v.n(a0Var, cVar.f10443h.f10455c, new a(cVar, this.f10447d, null), 2);
            this.f10444a = 1;
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
