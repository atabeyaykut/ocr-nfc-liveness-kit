package bg;

import androidx.camera.core.impl.k;
import c5.w;
import io.realm.RealmQuery;
import io.realm.g0;
import kotlin.jvm.internal.h;
import l9.m;
import nc.a0;
import pe.g;
import r9.e;
import r9.i;
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
    public d0 f1269a;

    /* renamed from: b, reason: collision with root package name */
    public String f1270b;

    /* renamed from: c, reason: collision with root package name */
    public String f1271c;

    /* renamed from: d, reason: collision with root package name */
    public String f1272d;

    @e(c = "tr.gov.turkiye.edevlet.kapisi.institution.favorite.FavoriteOperationRepository", f = "FavoriteOperationRepository.kt", l = {44}, m = "favoriteService")
    /* renamed from: bg.a$a, reason: collision with other inner class name */
    public static final class C0048a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f1273a;

        /* renamed from: c, reason: collision with root package name */
        public int f1275c;

        public C0048a(p9.d<? super C0048a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f1273a = obj;
            this.f1275c |= Integer.MIN_VALUE;
            return a.this.a(0, this);
        }
    }

    @e(c = "tr.gov.turkiye.edevlet.kapisi.institution.favorite.FavoriteOperationRepository$favoriteService$2", f = "FavoriteOperationRepository.kt", l = {}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, p9.d<? super Result<ServiceModelRealm>>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f1276a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int r12, p9.d<? super b> dVar) {
            super(2, dVar);
            this.f1276a = r12;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new b(this.f1276a, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Result<ServiceModelRealm>> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            g0 realmMain = g0.t();
            h.e(realmMain, "realmMain");
            RealmQuery realmQueryJ = realmMain.J(ServiceModelRealm.class);
            realmQueryJ.b(new Integer(this.f1276a), "serviceCode");
            ServiceModelRealm serviceModelRealm = (ServiceModelRealm) realmQueryJ.e();
            if (serviceModelRealm == null) {
                return new ErrorResult(new ServiceErrorException());
            }
            realmMain.s(new k(3, serviceModelRealm));
            return new Success(serviceModelRealm);
        }
    }

    @e(c = "tr.gov.turkiye.edevlet.kapisi.institution.favorite.FavoriteOperationRepository", f = "FavoriteOperationRepository.kt", l = {87}, m = "unFavoriteService")
    public static final class c extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f1277a;

        /* renamed from: c, reason: collision with root package name */
        public int f1279c;

        public c(p9.d<? super c> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f1277a = obj;
            this.f1279c |= Integer.MIN_VALUE;
            return a.this.b(0, this);
        }
    }

    @e(c = "tr.gov.turkiye.edevlet.kapisi.institution.favorite.FavoriteOperationRepository$unFavoriteService$2", f = "FavoriteOperationRepository.kt", l = {}, m = "invokeSuspend")
    public static final class d extends i implements p<a0, p9.d<? super Result<ServiceModelRealm>>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f1280a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(int r12, p9.d<? super d> dVar) {
            super(2, dVar);
            this.f1280a = r12;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new d(this.f1280a, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Result<ServiceModelRealm>> dVar) {
            return ((d) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            g0 realmMain = g0.t();
            h.e(realmMain, "realmMain");
            RealmQuery realmQueryJ = realmMain.J(ServiceModelRealm.class);
            realmQueryJ.b(new Integer(this.f1280a), "serviceCode");
            ServiceModelRealm serviceModelRealm = (ServiceModelRealm) realmQueryJ.e();
            if (serviceModelRealm == null) {
                return new ErrorResult(new ServiceErrorException());
            }
            realmMain.s(new g(serviceModelRealm, 1));
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
        throw new UnsupportedOperationException("Method not decompiled: bg.a.a(int, p9.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(int r13, p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm>> r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bg.a.b(int, p9.d):java.lang.Object");
    }
}
