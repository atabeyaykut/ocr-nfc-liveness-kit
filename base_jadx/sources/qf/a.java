package qf;

import c5.w;
import io.realm.RealmQuery;
import io.realm.d0;
import io.realm.g0;
import io.realm.y0;
import java.util.ArrayList;
import java.util.List;
import l9.m;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.service.EditorChoiceServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.p;

/* loaded from: classes3.dex */
public final class a {

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.editor.EditorServicesRepository", f = "EditorServicesRepository.kt", l = {18}, m = "fetchEditorServiceList")
    /* renamed from: qf.a$a, reason: collision with other inner class name */
    public static final class C0229a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f13603a;

        /* renamed from: c, reason: collision with root package name */
        public int f13605c;

        public C0229a(p9.d<? super C0229a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f13603a = obj;
            this.f13605c |= Integer.MIN_VALUE;
            return a.this.a(this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.editor.EditorServicesRepository$fetchEditorServiceList$2", f = "EditorServicesRepository.kt", l = {}, m = "invokeSuspend")
    public static final class b extends r9.i implements p<a0, p9.d<? super Success<List<? extends ServiceModelRealm>>>, Object> {
        public b(p9.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return a.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends ServiceModelRealm>>> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            a.this.getClass();
            g0 realm = g0.t();
            kotlin.jvm.internal.h.e(realm, "realm");
            RealmQuery realmQueryJ = realm.J(EditorChoiceServiceModelRealm.class);
            realmQueryJ.h("serviceInsertion");
            y0 y0VarD = realmQueryJ.d();
            ArrayList arrayList = new ArrayList();
            d0.c cVar = new d0.c();
            while (cVar.hasNext()) {
                EditorChoiceServiceModelRealm editorChoiceServiceModelRealm = (EditorChoiceServiceModelRealm) cVar.next();
                RealmQuery realmQueryJ2 = realm.J(ServiceModelRealm.class);
                realmQueryJ2.b(editorChoiceServiceModelRealm.getServiceCode(), "serviceCode");
                ServiceModelRealm serviceModelRealm = (ServiceModelRealm) realmQueryJ2.e();
                if (serviceModelRealm != null) {
                    arrayList.add(serviceModelRealm);
                }
            }
            return new Success(arrayList);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<java.util.List<tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm>>> r6) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r6 instanceof qf.a.C0229a
            if (r0 == 0) goto L13
            r0 = r6
            qf.a$a r0 = (qf.a.C0229a) r0
            int r1 = r0.f13605c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f13605c = r1
            goto L18
        L13:
            qf.a$a r0 = new qf.a$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f13603a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f13605c
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
            qf.a$b r2 = new qf.a$b     // Catch: java.lang.Exception -> L48
            r4 = 0
            r2.<init>(r4)     // Catch: java.lang.Exception -> L48
            r0.f13605c = r3     // Catch: java.lang.Exception -> L48
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
        throw new UnsupportedOperationException("Method not decompiled: qf.a.a(p9.d):java.lang.Object");
    }
}
