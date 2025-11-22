package vg;

import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import r9.i;
import vg.g;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.services.list.InstitutionListViewModel$provideInstitutionList$1", f = "InstitutionListViewModel.kt", l = {24}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class e extends i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f18644a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f18645b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f18646c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f18647d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f18648e;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.services.list.InstitutionListViewModel$provideInstitutionList$1$job$1", f = "InstitutionListViewModel.kt", l = {22}, m = "invokeSuspend")
    public static final class a extends i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f18649a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f18650b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f18651c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f18652d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, int r22, int r32, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f18650b = dVar;
            this.f18651c = r22;
            this.f18652d = r32;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f18650b, this.f18651c, this.f18652d, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f18649a;
            if (r12 == 0) {
                w.F(obj);
                g gVar = this.f18650b.f18643h;
                g.a aVar2 = new g.a(this.f18651c, this.f18652d);
                this.f18649a = 1;
                if (gVar.d(aVar2, this) == aVar) {
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
    public e(d dVar, int r22, int r32, p9.d<? super e> dVar2) {
        super(2, dVar2);
        this.f18646c = dVar;
        this.f18647d = r22;
        this.f18648e = r32;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        e eVar = new e(this.f18646c, this.f18647d, this.f18648e, dVar);
        eVar.f18645b = obj;
        return eVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((e) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f18644a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f18645b;
            d dVar = this.f18646c;
            f0 f0VarN = v.n(a0Var, dVar.f18643h.f18657c, new a(dVar, this.f18647d, this.f18648e, null), 2);
            this.f18644a = 1;
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
