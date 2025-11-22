package mf;

import c5.w;
import io.realm.g0;
import java.util.List;
import l9.m;
import m9.t;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import ud.d0;
import x9.p;

/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public d0 f10391a;

    /* renamed from: b, reason: collision with root package name */
    public String f10392b;

    /* renamed from: c, reason: collision with root package name */
    public String f10393c;

    /* renamed from: d, reason: collision with root package name */
    public String f10394d;

    /* renamed from: e, reason: collision with root package name */
    public gf.b f10395e;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.about.AboutPageRepository", f = "AboutPageRepository.kt", l = {63, 86}, m = "fetchAboutPages")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f10396a;

        /* renamed from: c, reason: collision with root package name */
        public int f10398c;

        public a(p9.d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f10396a = obj;
            this.f10398c |= Integer.MIN_VALUE;
            return c.this.a(this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.about.AboutPageRepository$fetchAboutPages$2", f = "AboutPageRepository.kt", l = {}, m = "invokeSuspend")
    public static final class b extends r9.i implements p<a0, p9.d<? super Success<List<? extends AboutPageModelRealm>>>, Object> {
        public b(p9.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return c.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends AboutPageModelRealm>>> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            c.this.getClass();
            return new Success(c.b());
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.about.AboutPageRepository$fetchAboutPages$3", f = "AboutPageRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: mf.c$c, reason: collision with other inner class name */
    public static final class C0191c extends r9.i implements p<a0, p9.d<? super Success<List<? extends AboutPageModelRealm>>>, Object> {
        public C0191c(p9.d<? super C0191c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return c.this.new C0191c(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends AboutPageModelRealm>>> dVar) {
            return ((C0191c) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            c.this.getClass();
            return new Success(c.b());
        }
    }

    public static List b() {
        g0 g0VarT = g0.t();
        g0VarT.m();
        return t.v1(g0VarT.J(AboutPageModelRealm.class).d());
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<java.util.List<tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm>>> r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mf.c.a(p9.d):java.lang.Object");
    }
}
