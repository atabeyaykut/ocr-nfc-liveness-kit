package ag;

import c5.w;
import io.realm.RealmQuery;
import io.realm.g0;
import l9.m;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import ud.d0;
import x9.p;

/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public d0 f276a;

    /* renamed from: b, reason: collision with root package name */
    public String f277b;

    /* renamed from: c, reason: collision with root package name */
    public String f278c;

    /* renamed from: d, reason: collision with root package name */
    public String f279d;

    /* renamed from: e, reason: collision with root package name */
    public gf.b f280e;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.institution.InstitutionDetailRepository", f = "InstitutionDetailRepository.kt", l = {39, 141}, m = "fetchInstitutionDetail")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f281a;

        /* renamed from: c, reason: collision with root package name */
        public int f283c;

        public a(p9.d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f281a = obj;
            this.f283c |= Integer.MIN_VALUE;
            return b.this.a(0, 0, null, this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.institution.InstitutionDetailRepository$fetchInstitutionDetail$2", f = "InstitutionDetailRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: ag.b$b, reason: collision with other inner class name */
    public static final class C0013b extends r9.i implements p<a0, p9.d<? super Success<InstitutionModelRealm>>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f284a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f285b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0013b(int r12, int r22, p9.d<? super C0013b> dVar) {
            super(2, dVar);
            this.f284a = r12;
            this.f285b = r22;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new C0013b(this.f284a, this.f285b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<InstitutionModelRealm>> dVar) {
            return ((C0013b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            g0 g0VarT = g0.t();
            kotlin.jvm.internal.h.e(g0VarT, "getDefaultInstance()");
            RealmQuery realmQueryJ = g0VarT.J(InstitutionModelRealm.class);
            realmQueryJ.b(new Integer(this.f284a), "institutionCode");
            realmQueryJ.b(new Integer(this.f285b), "categoryCode");
            InstitutionModelRealm institutionModelRealm = (InstitutionModelRealm) realmQueryJ.e();
            kotlin.jvm.internal.h.c(institutionModelRealm);
            return new Success(institutionModelRealm);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.institution.InstitutionDetailRepository$fetchInstitutionDetail$8", f = "InstitutionDetailRepository.kt", l = {}, m = "invokeSuspend")
    public static final class c extends r9.i implements p<a0, p9.d<? super Success<InstitutionModelRealm>>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f286a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f287b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int r12, int r22, p9.d<? super c> dVar) {
            super(2, dVar);
            this.f286a = r12;
            this.f287b = r22;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new c(this.f286a, this.f287b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<InstitutionModelRealm>> dVar) {
            return ((c) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            g0 g0VarT = g0.t();
            kotlin.jvm.internal.h.e(g0VarT, "getDefaultInstance()");
            RealmQuery realmQueryJ = g0VarT.J(InstitutionModelRealm.class);
            realmQueryJ.b(new Integer(this.f286a), "institutionCode");
            realmQueryJ.b(new Integer(this.f287b), "categoryCode");
            InstitutionModelRealm institutionModelRealm = (InstitutionModelRealm) realmQueryJ.e();
            kotlin.jvm.internal.h.c(institutionModelRealm);
            return new Success(institutionModelRealm);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(int r21, int r22, java.lang.Integer r23, p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm>> r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 830
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ag.b.a(int, int, java.lang.Integer, p9.d):java.lang.Object");
    }
}
