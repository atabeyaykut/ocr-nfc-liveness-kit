package rf;

import android.content.SharedPreferences;
import c5.w;
import io.realm.RealmQuery;
import io.realm.g0;
import java.util.List;
import m9.t;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import ud.d0;
import x9.p;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public d0 f14617a;

    /* renamed from: b, reason: collision with root package name */
    public String f14618b;

    /* renamed from: c, reason: collision with root package name */
    public String f14619c;

    /* renamed from: d, reason: collision with root package name */
    public String f14620d;

    /* renamed from: e, reason: collision with root package name */
    public gf.b f14621e;
    public SharedPreferences.Editor f;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteOperationRepository", f = "FavoriteOperationRepository.kt", l = {147}, m = "favoriteService")
    /* renamed from: rf.a$a, reason: collision with other inner class name */
    public static final class C0239a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f14622a;

        /* renamed from: c, reason: collision with root package name */
        public int f14624c;

        public C0239a(p9.d<? super C0239a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f14622a = obj;
            this.f14624c |= Integer.MIN_VALUE;
            return a.this.a(0, this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteOperationRepository$favoriteService$2", f = "FavoriteOperationRepository.kt", l = {}, m = "invokeSuspend")
    public static final class b extends r9.i implements p<a0, p9.d<? super Result<ServiceModelRealm>>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f14625a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int r12, p9.d<? super b> dVar) {
            super(2, dVar);
            this.f14625a = r12;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new b(this.f14625a, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Result<ServiceModelRealm>> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            g0 realmMain = g0.t();
            kotlin.jvm.internal.h.e(realmMain, "realmMain");
            RealmQuery realmQueryJ = realmMain.J(ServiceModelRealm.class);
            realmQueryJ.b(new Integer(this.f14625a), "serviceCode");
            ServiceModelRealm serviceModelRealm = (ServiceModelRealm) realmQueryJ.e();
            if (serviceModelRealm == null) {
                return new ErrorResult(new ServiceErrorException());
            }
            realmMain.s(new androidx.camera.camera2.interop.f(5, serviceModelRealm));
            realmMain.m();
            return new Success(serviceModelRealm);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteOperationRepository", f = "FavoriteOperationRepository.kt", l = {76, 111}, m = "fetchFavoriteServices")
    public static final class c extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f14626a;

        /* renamed from: c, reason: collision with root package name */
        public int f14628c;

        public c(p9.d<? super c> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f14626a = obj;
            this.f14628c |= Integer.MIN_VALUE;
            return a.this.b(this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteOperationRepository$fetchFavoriteServices$2", f = "FavoriteOperationRepository.kt", l = {}, m = "invokeSuspend")
    public static final class d extends r9.i implements p<a0, p9.d<? super Success<List<? extends ServiceModelRealm>>>, Object> {
        public d(p9.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new d(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends ServiceModelRealm>>> dVar) {
            return new d(dVar).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            g0 realmMain = g0.t();
            kotlin.jvm.internal.h.e(realmMain, "realmMain");
            RealmQuery realmQueryJ = realmMain.J(ServiceModelRealm.class);
            realmQueryJ.a(Boolean.TRUE);
            return new Success(realmQueryJ.d());
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteOperationRepository$fetchFavoriteServices$3", f = "FavoriteOperationRepository.kt", l = {}, m = "invokeSuspend")
    public static final class e extends r9.i implements p<a0, p9.d<? super Success<List<? extends ServiceModelRealm>>>, Object> {
        public e(p9.d<? super e> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new e(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends ServiceModelRealm>>> dVar) {
            return new e(dVar).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            g0 g0VarT = g0.t();
            g0VarT.m();
            RealmQuery realmQueryJ = g0VarT.J(ServiceModelRealm.class);
            realmQueryJ.a(Boolean.TRUE);
            return new Success(t.v1(realmQueryJ.d()));
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteOperationRepository", f = "FavoriteOperationRepository.kt", l = {191}, m = "unFavoriteService")
    public static final class f extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f14629a;

        /* renamed from: c, reason: collision with root package name */
        public int f14631c;

        public f(p9.d<? super f> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f14629a = obj;
            this.f14631c |= Integer.MIN_VALUE;
            return a.this.d(0, this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteOperationRepository$unFavoriteService$2", f = "FavoriteOperationRepository.kt", l = {}, m = "invokeSuspend")
    public static final class g extends r9.i implements p<a0, p9.d<? super Result<ServiceModelRealm>>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f14632a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(int r12, p9.d<? super g> dVar) {
            super(2, dVar);
            this.f14632a = r12;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new g(this.f14632a, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Result<ServiceModelRealm>> dVar) {
            return ((g) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            g0 realmMain = g0.t();
            kotlin.jvm.internal.h.e(realmMain, "realmMain");
            RealmQuery realmQueryJ = realmMain.J(ServiceModelRealm.class);
            realmQueryJ.b(new Integer(this.f14632a), "serviceCode");
            ServiceModelRealm serviceModelRealm = (ServiceModelRealm) realmQueryJ.e();
            if (serviceModelRealm == null) {
                return new ErrorResult(new ServiceErrorException());
            }
            realmMain.s(new androidx.camera.camera2.internal.compat.workaround.b(3, serviceModelRealm));
            realmMain.m();
            return new Success(serviceModelRealm);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(int r13, p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm>> r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: rf.a.a(int, p9.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<java.util.List<tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm>>> r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: rf.a.b(p9.d):java.lang.Object");
    }

    public final void c(String str) {
        SharedPreferences.Editor editor = this.f;
        if (editor == null) {
            kotlin.jvm.internal.h.n("sharedPreferencesEditor");
            throw null;
        }
        editor.putString("as", str);
        SharedPreferences.Editor editor2 = this.f;
        if (editor2 == null) {
            kotlin.jvm.internal.h.n("sharedPreferencesEditor");
            throw null;
        }
        editor2.apply();
        qd.b.b().i(new pe.f(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(int r13, p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm>> r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: rf.a.d(int, p9.d):java.lang.Object");
    }
}
