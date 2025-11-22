package wg;

import c5.w;
import io.realm.RealmQuery;
import io.realm.g0;
import io.realm.y0;
import java.util.List;
import l9.m;
import m9.t;
import nc.a0;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import ud.d0;
import x9.p;

/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public d0 f18898a;

    /* renamed from: b, reason: collision with root package name */
    public String f18899b;

    /* renamed from: c, reason: collision with root package name */
    public String f18900c;

    /* renamed from: d, reason: collision with root package name */
    public String f18901d;

    /* renamed from: e, reason: collision with root package name */
    public gf.b f18902e;
    public List<? extends InstitutionModelRealm> f;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.services.municipality.MunicipalityListRepository", f = "MunicipalityListRepository.kt", l = {86, 112}, m = "fetchInstitutionList")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f18903a;

        /* renamed from: c, reason: collision with root package name */
        public int f18905c;

        public a(p9.d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f18903a = obj;
            this.f18905c |= Integer.MIN_VALUE;
            return b.this.b(0, 0, this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.services.municipality.MunicipalityListRepository$fetchInstitutionList$3", f = "MunicipalityListRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: wg.b$b, reason: collision with other inner class name */
    public static final class C0296b extends i implements p<a0, p9.d<? super Success<List<? extends InstitutionModelRealm>>>, Object> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f18907b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f18908c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0296b(int r22, int r32, p9.d<? super C0296b> dVar) {
            super(2, dVar);
            this.f18907b = r22;
            this.f18908c = r32;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return b.this.new C0296b(this.f18907b, this.f18908c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends InstitutionModelRealm>>> dVar) {
            return ((C0296b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            return new Success(t.v1(b.a(b.this, this.f18907b, this.f18908c).h()));
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.services.municipality.MunicipalityListRepository$fetchInstitutionList$4", f = "MunicipalityListRepository.kt", l = {}, m = "invokeSuspend")
    public static final class c extends i implements p<a0, p9.d<? super Success<List<? extends InstitutionModelRealm>>>, Object> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f18910b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f18911c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int r22, int r32, p9.d<? super c> dVar) {
            super(2, dVar);
            this.f18910b = r22;
            this.f18911c = r32;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return b.this.new c(this.f18910b, this.f18911c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends InstitutionModelRealm>>> dVar) {
            return ((c) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            return new Success(t.v1(b.a(b.this, this.f18910b, this.f18911c).h()));
        }
    }

    public static final y0 a(b bVar, int r42, int r52) {
        RealmQuery realmQueryJ;
        bVar.getClass();
        g0 g0VarT = g0.t();
        g0VarT.m();
        if (r42 == 1 || r42 == 2 || r42 == 5 || r42 == 90 || r42 == 91) {
            realmQueryJ = g0VarT.J(InstitutionModelRealm.class);
            realmQueryJ.b(Integer.valueOf(r42), "categoryCode");
            realmQueryJ.b(Integer.valueOf(r52), "cityCode");
        } else {
            realmQueryJ = g0VarT.J(InstitutionModelRealm.class);
            realmQueryJ.b(Integer.valueOf(r42), "categoryCode");
        }
        return realmQueryJ.d();
    }

    public static List c(int r42, int r52) {
        y0 y0VarD;
        g0 g0VarT = g0.t();
        g0VarT.m();
        if (r42 == 1 || r42 == 2 || r42 == 5 || r42 == 90 || r42 == 91) {
            RealmQuery realmQueryJ = g0VarT.J(InstitutionModelRealm.class);
            realmQueryJ.b(Integer.valueOf(r42), "categoryCode");
            realmQueryJ.b(Integer.valueOf(r52), "cityCode");
            y0VarD = realmQueryJ.d();
        } else {
            RealmQuery realmQueryJ2 = g0VarT.J(InstitutionModelRealm.class);
            realmQueryJ2.b(Integer.valueOf(r42), "categoryCode");
            y0VarD = realmQueryJ2.d();
        }
        return t.v1(y0VarD);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(int r17, int r18, p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<java.util.List<tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm>>> r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: wg.b.b(int, int, p9.d):java.lang.Object");
    }
}
