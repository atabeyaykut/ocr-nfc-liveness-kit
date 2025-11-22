package uh;

import c5.w;
import io.realm.g0;
import io.realm.q0;
import l9.m;
import nc.a0;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import x9.p;

/* loaded from: classes3.dex */
public final class a {

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.policy.MobileAccidentPolicyRepository", f = "MobileAccidentPolicyRepository.kt", l = {37}, m = "providePolicyList")
    /* renamed from: uh.a$a, reason: collision with other inner class name */
    public static final class C0282a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f18158a;

        /* renamed from: c, reason: collision with root package name */
        public int f18160c;

        public C0282a(p9.d<? super C0282a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f18158a = obj;
            this.f18160c |= Integer.MIN_VALUE;
            return a.this.a(this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.policy.MobileAccidentPolicyRepository$providePolicyList$2", f = "MobileAccidentPolicyRepository.kt", l = {}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, p9.d<? super Result<q0<AccidentReportPolicy>>>, Object> {
        public b(p9.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Result<q0<AccidentReportPolicy>>> dVar) {
            return new b(dVar).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            g0 g0VarT = g0.t();
            g0VarT.m();
            MKTAccidentReport mKTAccidentReport = (MKTAccidentReport) g0VarT.J(MKTAccidentReport.class).e();
            if (mKTAccidentReport == null) {
                return new ErrorResult(new ServiceErrorException());
            }
            AccidentReportVehicle vehicle = mKTAccidentReport.getVehicle();
            return new Success(vehicle != null ? vehicle.getPolicies() : null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<io.realm.q0<tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy>>> r6) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r6 instanceof uh.a.C0282a
            if (r0 == 0) goto L13
            r0 = r6
            uh.a$a r0 = (uh.a.C0282a) r0
            int r1 = r0.f18160c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f18160c = r1
            goto L18
        L13:
            uh.a$a r0 = new uh.a$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f18158a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f18160c
            r3 = 1
            if (r2 == 0) goto L2f
            if (r2 != r3) goto L27
            c5.w.F(r6)     // Catch: java.lang.Exception -> L48
            goto L45
        L27:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L2f:
            c5.w.F(r6)
            kotlinx.coroutines.scheduling.c r6 = nc.j0.f10808a     // Catch: java.lang.Exception -> L48
            nc.k1 r6 = kotlinx.coroutines.internal.m.f9167a     // Catch: java.lang.Exception -> L48
            uh.a$b r2 = new uh.a$b     // Catch: java.lang.Exception -> L48
            r4 = 0
            r2.<init>(r4)     // Catch: java.lang.Exception -> L48
            r0.f18160c = r3     // Catch: java.lang.Exception -> L48
            java.lang.Object r6 = c5.v.N(r6, r2, r0)     // Catch: java.lang.Exception -> L48
            if (r6 != r1) goto L45
            return r1
        L45:
            tr.gov.turkiye.edevlet.kapisi.data.extension.Result r6 = (tr.gov.turkiye.edevlet.kapisi.data.extension.Result) r6     // Catch: java.lang.Exception -> L48
            goto L52
        L48:
            tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult r6 = new tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult
            tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorException r0 = new tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorException
            r0.<init>()
            r6.<init>(r0)
        L52:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: uh.a.a(p9.d):java.lang.Object");
    }
}
