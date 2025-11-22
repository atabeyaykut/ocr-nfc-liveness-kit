package vf;

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
import tr.gov.turkiye.edevlet.kapisi.data.service.NewestServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import ud.d0;
import x9.p;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public d0 f18576a;

    /* renamed from: b, reason: collision with root package name */
    public String f18577b;

    /* renamed from: c, reason: collision with root package name */
    public String f18578c;

    /* renamed from: d, reason: collision with root package name */
    public String f18579d;

    /* renamed from: e, reason: collision with root package name */
    public gf.b f18580e;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.newest.NewestServicesRepository", f = "NewestServicesRepository.kt", l = {73, 96}, m = "fetchNewestServices")
    /* renamed from: vf.a$a, reason: collision with other inner class name */
    public static final class C0291a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f18581a;

        /* renamed from: c, reason: collision with root package name */
        public int f18583c;

        public C0291a(p9.d<? super C0291a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f18581a = obj;
            this.f18583c |= Integer.MIN_VALUE;
            return a.this.b(this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.newest.NewestServicesRepository$fetchNewestServices$2", f = "NewestServicesRepository.kt", l = {}, m = "invokeSuspend")
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

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            return new Success(a.a(a.this));
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.newest.NewestServicesRepository$fetchNewestServices$3", f = "NewestServicesRepository.kt", l = {}, m = "invokeSuspend")
    public static final class c extends r9.i implements p<a0, p9.d<? super Success<List<? extends ServiceModelRealm>>>, Object> {
        public c(p9.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return a.this.new c(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends ServiceModelRealm>>> dVar) {
            return ((c) create(a0Var, dVar)).invokeSuspend(m.f9594a);
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
        RealmQuery realmQueryJ = g0VarT.J(NewestServiceModelRealm.class);
        realmQueryJ.h("serviceInsertion");
        y0 y0VarD = realmQueryJ.d();
        ArrayList arrayList = new ArrayList();
        d0.c cVar = new d0.c();
        while (cVar.hasNext()) {
            NewestServiceModelRealm newestServiceModelRealm = (NewestServiceModelRealm) cVar.next();
            RealmQuery realmQueryJ2 = g0VarT.J(ServiceModelRealm.class);
            realmQueryJ2.b(newestServiceModelRealm.getServiceCode(), "serviceCode");
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
        throw new UnsupportedOperationException("Method not decompiled: vf.a.b(p9.d):java.lang.Object");
    }
}
