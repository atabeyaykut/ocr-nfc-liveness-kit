package pf;

import c5.w;
import io.realm.RealmQuery;
import io.realm.d0;
import io.realm.g0;
import io.realm.y0;
import java.util.ArrayList;
import java.util.List;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.service.EBYSDocumentServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import ud.d0;
import x9.p;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public d0 f13139a;

    /* renamed from: b, reason: collision with root package name */
    public String f13140b;

    /* renamed from: c, reason: collision with root package name */
    public String f13141c;

    /* renamed from: d, reason: collision with root package name */
    public String f13142d;

    /* renamed from: e, reason: collision with root package name */
    public gf.b f13143e;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.ebys.ElectronicDocServicesRepository", f = "ElectronicDocServicesRepository.kt", l = {73, 96}, m = "fetchElectronicServiceList")
    /* renamed from: pf.a$a, reason: collision with other inner class name */
    public static final class C0220a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f13144a;

        /* renamed from: c, reason: collision with root package name */
        public int f13146c;

        public C0220a(p9.d<? super C0220a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f13144a = obj;
            this.f13146c |= Integer.MIN_VALUE;
            return a.this.b(this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.ebys.ElectronicDocServicesRepository$fetchElectronicServiceList$2", f = "ElectronicDocServicesRepository.kt", l = {}, m = "invokeSuspend")
    public static final class b extends r9.i implements p<a0, p9.d<? super Success<List<? extends ServiceModelRealm>>>, Object> {
        public b(p9.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return a.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends ServiceModelRealm>>> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            return new Success(a.a(a.this));
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.ebys.ElectronicDocServicesRepository$fetchElectronicServiceList$3", f = "ElectronicDocServicesRepository.kt", l = {}, m = "invokeSuspend")
    public static final class c extends r9.i implements p<a0, p9.d<? super Success<List<? extends ServiceModelRealm>>>, Object> {
        public c(p9.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return a.this.new c(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends ServiceModelRealm>>> dVar) {
            return ((c) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            return new Success(a.a(a.this));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ArrayList a(a aVar) {
        aVar.getClass();
        g0 g0VarT = g0.t();
        g0VarT.m();
        RealmQuery realmQueryJ = g0VarT.J(EBYSDocumentServiceModelRealm.class);
        realmQueryJ.h("serviceInsertion");
        y0 y0VarD = realmQueryJ.d();
        ArrayList arrayList = new ArrayList();
        d0.c cVar = new d0.c();
        while (cVar.hasNext()) {
            EBYSDocumentServiceModelRealm eBYSDocumentServiceModelRealm = (EBYSDocumentServiceModelRealm) cVar.next();
            RealmQuery realmQueryJ2 = g0VarT.J(ServiceModelRealm.class);
            realmQueryJ2.b(eBYSDocumentServiceModelRealm.getServiceCode(), "serviceCode");
            ServiceModelRealm serviceModelRealm = (ServiceModelRealm) realmQueryJ2.e();
            if (serviceModelRealm != null) {
                arrayList.add(serviceModelRealm);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<java.util.List<tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm>>> r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: pf.a.b(p9.d):java.lang.Object");
    }
}
