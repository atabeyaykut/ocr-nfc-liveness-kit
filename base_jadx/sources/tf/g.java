package tf;

import c5.w;
import io.realm.RealmQuery;
import io.realm.g0;
import java.util.List;
import l9.m;
import m9.t;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import ud.d0;
import x9.p;

/* loaded from: classes3.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public d0 f15688a;

    /* renamed from: b, reason: collision with root package name */
    public String f15689b;

    /* renamed from: c, reason: collision with root package name */
    public String f15690c;

    /* renamed from: d, reason: collision with root package name */
    public String f15691d;

    /* renamed from: e, reason: collision with root package name */
    public gf.b f15692e;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListRepository", f = "MyCityListRepository.kt", l = {64, 89}, m = "fetchCityList")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f15693a;

        /* renamed from: c, reason: collision with root package name */
        public int f15695c;

        public a(p9.d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f15693a = obj;
            this.f15695c |= Integer.MIN_VALUE;
            return g.this.a(0, this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListRepository$fetchCityList$3", f = "MyCityListRepository.kt", l = {}, m = "invokeSuspend")
    public static final class b extends r9.i implements p<a0, p9.d<? super Success<List<? extends CityModelRealm>>>, Object> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f15697b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int r22, p9.d<? super b> dVar) {
            super(2, dVar);
            this.f15697b = r22;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return g.this.new b(this.f15697b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends CityModelRealm>>> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            g.this.getClass();
            return new Success(g.b(this.f15697b));
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListRepository$fetchCityList$4", f = "MyCityListRepository.kt", l = {}, m = "invokeSuspend")
    public static final class c extends r9.i implements p<a0, p9.d<? super Success<List<? extends CityModelRealm>>>, Object> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f15699b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int r22, p9.d<? super c> dVar) {
            super(2, dVar);
            this.f15699b = r22;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return g.this.new c(this.f15699b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends CityModelRealm>>> dVar) {
            return ((c) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            g.this.getClass();
            return new Success(g.b(this.f15699b));
        }
    }

    public static List b(int r22) {
        g0 g0VarT = g0.t();
        g0VarT.m();
        RealmQuery realmQueryJ = g0VarT.J(CityModelRealm.class);
        realmQueryJ.b(Integer.valueOf(r22), "categoryCode");
        return t.v1(realmQueryJ.d());
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(int r13, p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<java.util.List<tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm>>> r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tf.g.a(int, p9.d):java.lang.Object");
    }
}
