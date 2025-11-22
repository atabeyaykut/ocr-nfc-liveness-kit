package be;

import be.n;
import c5.v;
import c5.w;
import java.util.List;
import nc.a0;
import nc.f0;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyFieldModel;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import x9.p;

/* loaded from: classes3.dex */
public final class j extends af.c<h> {

    /* renamed from: h, reason: collision with root package name */
    public final n f1240h;

    public static final class a extends DaggerMvRxViewModelFactory<j, h> {
        public a(kotlin.jvm.internal.d dVar) {
            super(j.class);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.barcode.manual.dynamic.ManualDynamicFieldViewModel$fetchValidationFields$1", f = "ManualDynamicFieldViewModel.kt", l = {25}, m = "invokeSuspend")
    public static final class b extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f1241a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f1242b;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f1244d;

        @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.barcode.manual.dynamic.ManualDynamicFieldViewModel$fetchValidationFields$1$job$1", f = "ManualDynamicFieldViewModel.kt", l = {23}, m = "invokeSuspend")
        public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f1245a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ j f1246b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ String f1247c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(j jVar, String str, p9.d<? super a> dVar) {
                super(2, dVar);
                this.f1246b = jVar;
                this.f1247c = str;
            }

            @Override // r9.a
            public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
                return new a(this.f1246b, this.f1247c, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f1245a;
                if (r12 == 0) {
                    w.F(obj);
                    n nVar = this.f1246b.f1240h;
                    n.a aVar2 = new n.a(this.f1247c, false);
                    this.f1245a = 1;
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
        public b(String str, p9.d<? super b> dVar) {
            super(2, dVar);
            this.f1244d = str;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            b bVar = j.this.new b(this.f1244d, dVar);
            bVar.f1242b = obj;
            return bVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f1241a;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.f1242b;
                j jVar = j.this;
                f0 f0VarN = v.n(a0Var, jVar.f1240h.f1264c, new a(jVar, this.f1244d, null), 2);
                this.f1241a = 1;
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

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.barcode.manual.dynamic.ManualDynamicFieldViewModel$fetchValidationFields$2", f = "ManualDynamicFieldViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class c extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<List<? extends BarcodeVerifyFieldModel>>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f1248a;

        public static final class a extends kotlin.jvm.internal.j implements p<h, r0.b<? extends Result<List<? extends BarcodeVerifyFieldModel>>>, h> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f1250a = new a();

            public a() {
                super(2);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final h mo7invoke(h hVar, r0.b<? extends Result<List<? extends BarcodeVerifyFieldModel>>> bVar) {
                h execute = hVar;
                r0.b<? extends Result<List<? extends BarcodeVerifyFieldModel>>> result = bVar;
                kotlin.jvm.internal.h.f(execute, "$this$execute");
                kotlin.jvm.internal.h.f(result, "result");
                try {
                    Result<List<? extends BarcodeVerifyFieldModel>> resultA = result.a();
                    List<? extends BarcodeVerifyFieldModel> orThrow = resultA != null ? resultA.getOrThrow() : null;
                    return orThrow != null ? h.copy$default(execute, result, orThrow, null, null, false, 12, null) : h.copy$default(execute, result, null, null, null, false, 14, null);
                } catch (Throwable th2) {
                    return h.copy$default(execute, new r0.i(null, th2), null, null, null, false, 14, null);
                }
            }
        }

        public c(p9.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            c cVar = j.this.new c(dVar);
            cVar.f1248a = obj;
            return cVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<List<? extends BarcodeVerifyFieldModel>>> fVar, p9.d<? super l9.m> dVar) {
            return ((c) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            z.a(j.this, (kotlinx.coroutines.flow.f) this.f1248a, a.f1250a);
            return l9.m.f9594a;
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(h state, n manualDynamicFieldWork, be.a verifyWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(manualDynamicFieldWork, "manualDynamicFieldWork");
        kotlin.jvm.internal.h.f(verifyWork, "verifyWork");
        this.f1240h = manualDynamicFieldWork;
    }

    public final void d(String str) {
        b bVar = new b(str, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, bVar, 3);
        v.D(a0Var, this.f1240h, new c(null));
    }
}
