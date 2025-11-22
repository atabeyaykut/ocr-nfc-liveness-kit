package fg;

import c5.w;
import l9.m;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactModel;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileServiceModel;
import ud.d0;
import x9.p;

/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public d0 f5627a;

    /* renamed from: b, reason: collision with root package name */
    public String f5628b;

    /* renamed from: c, reason: collision with root package name */
    public String f5629c;

    /* renamed from: d, reason: collision with root package name */
    public String f5630d;

    /* renamed from: e, reason: collision with root package name */
    public gf.b f5631e;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.profile.ProfileRepository", f = "ProfileRepository.kt", l = {120}, m = "fetchContactData")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f5632a;

        /* renamed from: c, reason: collision with root package name */
        public int f5634c;

        public a(p9.d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f5632a = obj;
            this.f5634c |= Integer.MIN_VALUE;
            return d.this.a(this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.profile.ProfileRepository$fetchContactData$2", f = "ProfileRepository.kt", l = {}, m = "invokeSuspend")
    public static final class b extends r9.i implements p<a0, p9.d<? super Success<ProfileContactModel>>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Result<ProfileContactModel> f5635a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Result<ProfileContactModel> result, p9.d<? super b> dVar) {
            super(2, dVar);
            this.f5635a = result;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new b(this.f5635a, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<ProfileContactModel>> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            return new Success(((Success) this.f5635a).getData());
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.profile.ProfileRepository", f = "ProfileRepository.kt", l = {44}, m = "fetchProfileData")
    public static final class c extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f5636a;

        /* renamed from: c, reason: collision with root package name */
        public int f5638c;

        public c(p9.d<? super c> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f5636a = obj;
            this.f5638c |= Integer.MIN_VALUE;
            return d.this.b(this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.profile.ProfileRepository$fetchProfileData$2", f = "ProfileRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: fg.d$d, reason: collision with other inner class name */
    public static final class C0089d extends r9.i implements p<a0, p9.d<? super Success<ProfileServiceModel>>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Result<ProfileServiceModel> f5639a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0089d(Result<ProfileServiceModel> result, p9.d<? super C0089d> dVar) {
            super(2, dVar);
            this.f5639a = result;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new C0089d(this.f5639a, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<ProfileServiceModel>> dVar) {
            return ((C0089d) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            return new Success(((Success) this.f5639a).getData());
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.profile.ProfileRepository", f = "ProfileRepository.kt", l = {82}, m = "fetchUpdatedProfileData")
    public static final class e extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f5640a;

        /* renamed from: c, reason: collision with root package name */
        public int f5642c;

        public e(p9.d<? super e> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f5640a = obj;
            this.f5642c |= Integer.MIN_VALUE;
            return d.this.c(this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.profile.ProfileRepository$fetchUpdatedProfileData$2", f = "ProfileRepository.kt", l = {}, m = "invokeSuspend")
    public static final class f extends r9.i implements p<a0, p9.d<? super Success<ProfileServiceModel>>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Result<ProfileServiceModel> f5643a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Result<ProfileServiceModel> result, p9.d<? super f> dVar) {
            super(2, dVar);
            this.f5643a = result;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new f(this.f5643a, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<ProfileServiceModel>> dVar) {
            return ((f) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            return new Success(((Success) this.f5643a).getData());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactModel>> r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: fg.d.a(p9.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileServiceModel>> r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: fg.d.b(p9.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileServiceModel>> r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: fg.d.c(p9.d):java.lang.Object");
    }
}
