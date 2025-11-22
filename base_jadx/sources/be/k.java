package be;

import be.n;
import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.barcode.manual.dynamic.ManualDynamicFieldViewModel$fetchValidationFieldsOnLogin$1", f = "ManualDynamicFieldViewModel.kt", l = {54}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class k extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f1251a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f1252b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ j f1253c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f1254d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.barcode.manual.dynamic.ManualDynamicFieldViewModel$fetchValidationFieldsOnLogin$1$job$1", f = "ManualDynamicFieldViewModel.kt", l = {52}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f1255a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ j f1256b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f1257c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(j jVar, String str, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f1256b = jVar;
            this.f1257c = str;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f1256b, this.f1257c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f1255a;
            if (r12 == 0) {
                w.F(obj);
                n nVar = this.f1256b.f1240h;
                n.a aVar2 = new n.a(this.f1257c, true);
                this.f1255a = 1;
                if (nVar.d(aVar2, this) == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            return l9.m.f9594a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(j jVar, String str, p9.d<? super k> dVar) {
        super(2, dVar);
        this.f1253c = jVar;
        this.f1254d = str;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        k kVar = new k(this.f1253c, this.f1254d, dVar);
        kVar.f1252b = obj;
        return kVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((k) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f1251a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f1252b;
            j jVar = this.f1253c;
            f0 f0VarN = v.n(a0Var, jVar.f1240h.f1264c, new a(jVar, this.f1254d, null), 2);
            this.f1251a = 1;
            if (f0VarN.m0(this) == aVar) {
                return aVar;
            }
        } else {
            if (r12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
        }
        return l9.m.f9594a;
    }
}
