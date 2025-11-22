package yf;

import c5.w;
import io.realm.RealmQuery;
import io.realm.d0;
import io.realm.g0;
import io.realm.y0;
import java.util.ArrayList;
import java.util.List;
import l9.m;
import nc.a0;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.WonderServiceModelRealm;
import ud.d0;
import x9.p;

/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public d0 f19661a;

    /* renamed from: b, reason: collision with root package name */
    public String f19662b;

    /* renamed from: c, reason: collision with root package name */
    public String f19663c;

    /* renamed from: d, reason: collision with root package name */
    public String f19664d;

    /* renamed from: e, reason: collision with root package name */
    public gf.b f19665e;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.wonder.WonderServicesRepository", f = "WonderServicesRepository.kt", l = {76, 99}, m = "fetchWonderServices")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f19666a;

        /* renamed from: c, reason: collision with root package name */
        public int f19668c;

        public a(p9.d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f19666a = obj;
            this.f19668c |= Integer.MIN_VALUE;
            return c.this.b(this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.wonder.WonderServicesRepository$fetchWonderServices$2", f = "WonderServicesRepository.kt", l = {}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, p9.d<? super Success<List<? extends ServiceModelRealm>>>, Object> {
        public b(p9.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return c.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends ServiceModelRealm>>> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            return new Success(c.a(c.this));
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.wonder.WonderServicesRepository$fetchWonderServices$3", f = "WonderServicesRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: yf.c$c, reason: collision with other inner class name */
    public static final class C0307c extends i implements p<a0, p9.d<? super Success<List<? extends ServiceModelRealm>>>, Object> {
        public C0307c(p9.d<? super C0307c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return c.this.new C0307c(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends ServiceModelRealm>>> dVar) {
            return ((C0307c) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            return new Success(c.a(c.this));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ArrayList a(c cVar) {
        cVar.getClass();
        g0 g0VarT = g0.t();
        g0VarT.m();
        RealmQuery realmQueryJ = g0VarT.J(WonderServiceModelRealm.class);
        realmQueryJ.h("serviceInsertion");
        y0 y0VarD = realmQueryJ.d();
        ArrayList arrayList = new ArrayList();
        d0.c cVar2 = new d0.c();
        while (cVar2.hasNext()) {
            WonderServiceModelRealm wonderServiceModelRealm = (WonderServiceModelRealm) cVar2.next();
            RealmQuery realmQueryJ2 = g0VarT.J(ServiceModelRealm.class);
            realmQueryJ2.b(wonderServiceModelRealm.getServiceCode(), "serviceCode");
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
            Method dump skipped, instructions count: 563
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yf.c.b(p9.d):java.lang.Object");
    }
}
