package of;

import c5.w;
import io.realm.RealmQuery;
import io.realm.g0;
import java.util.List;
import l9.m;
import m9.t;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm;
import x9.p;

/* loaded from: classes3.dex */
public final class a {

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.concept.ConceptServicesRepository", f = "ConceptServicesRepository.kt", l = {17}, m = "fetchConceptServices")
    /* renamed from: of.a$a, reason: collision with other inner class name */
    public static final class C0211a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f11314a;

        /* renamed from: c, reason: collision with root package name */
        public int f11316c;

        public C0211a(p9.d<? super C0211a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f11314a = obj;
            this.f11316c |= Integer.MIN_VALUE;
            return a.this.a(this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.concept.ConceptServicesRepository$fetchConceptServices$2", f = "ConceptServicesRepository.kt", l = {}, m = "invokeSuspend")
    public static final class b extends r9.i implements p<a0, p9.d<? super Success<List<? extends ConceptServiceModelRealm>>>, Object> {
        public b(p9.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return a.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends ConceptServiceModelRealm>>> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            a.this.getClass();
            g0 realm = g0.t();
            kotlin.jvm.internal.h.e(realm, "realm");
            RealmQuery realmQueryJ = realm.J(ConceptServiceModelRealm.class);
            realmQueryJ.h("serviceInsertion");
            return new Success(t.w1(realmQueryJ.d()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<java.util.List<tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm>>> r6) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r6 instanceof of.a.C0211a
            if (r0 == 0) goto L13
            r0 = r6
            of.a$a r0 = (of.a.C0211a) r0
            int r1 = r0.f11316c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f11316c = r1
            goto L18
        L13:
            of.a$a r0 = new of.a$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f11314a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f11316c
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
            of.a$b r2 = new of.a$b     // Catch: java.lang.Exception -> L48
            r4 = 0
            r2.<init>(r4)     // Catch: java.lang.Exception -> L48
            r0.f11316c = r3     // Catch: java.lang.Exception -> L48
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
        throw new UnsupportedOperationException("Method not decompiled: of.a.a(p9.d):java.lang.Object");
    }
}
