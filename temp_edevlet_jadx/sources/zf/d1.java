package zf;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Collections;
import l8.b0;
import of.b;
import p4.c7;
import p4.d8;
import qf.b;
import tr.gov.turkiye.edevlet.kapisi.BaseApplication;
import tr.gov.turkiye.edevlet.kapisi.barcode.BarcodeVerifyActivity;
import tr.gov.turkiye.edevlet.kapisi.barcode.BarcodeVerifyFragment;
import tr.gov.turkiye.edevlet.kapisi.barcode.manual.ManualInputBarcodeFragment;
import tr.gov.turkiye.edevlet.kapisi.barcode.manual.dynamic.ManualDynamicFieldFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.DashboardFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.about.AboutPageFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.barcode.BarcodeServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.concept.ConceptServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ebys.ElectronicDocServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.editor.EditorServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mostused.MostUsedServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.page.MyCityFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.newest.NewestServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.wonder.WonderServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.institution.InstitutionDetailFragment;
import tr.gov.turkiye.edevlet.kapisi.login.LoginActivity;
import tr.gov.turkiye.edevlet.kapisi.main.MainActivity;
import tr.gov.turkiye.edevlet.kapisi.mkt.data.SpecifiedTypeOrNull;
import tr.gov.turkiye.edevlet.kapisi.profile.ProfileFragment;
import tr.gov.turkiye.edevlet.kapisi.profile.contact.ContactInfoFragment;
import tr.gov.turkiye.edevlet.kapisi.profile.personal.PersonalInfoFragment;
import tr.gov.turkiye.edevlet.kapisi.profile.settings.SettingsFragment;
import tr.gov.turkiye.edevlet.kapisi.scan.QRScanActivity;
import tr.gov.turkiye.edevlet.kapisi.search.SearchFragment;
import tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;
import tr.gov.turkiye.edevlet.kapisi.services.firm.FirmCategoryListFragment;
import tr.gov.turkiye.edevlet.kapisi.services.institution.InstitutionFragment;
import tr.gov.turkiye.edevlet.kapisi.services.list.InstitutionListFragment;
import tr.gov.turkiye.edevlet.kapisi.services.municipality.MunicipalityListFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.MobileAccidentReportActivity;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions.MobileAccidentConditionFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.dashpoint.MobileAccidentDashPointFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.vehicle.MobileAccidentDifferentVehicleFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.introduction.MobileAccidentIntroductionFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.host.MobileAccidentQRScanFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.matched.MobileAccidentMatchedReportFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.waiting.MobileAccidentWaitingApprovalFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.MobileAccidentOnboardingFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.policy.MobileAccidentPolicyFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.result.MobileAccidentResultFragment;
import tr.gov.turkiye.edevlet.kapisi.verification.CardReadActivity;
import tr.gov.turkiye.edevlet.kapisi.verification.CardVerificationActivity;
import tr.gov.turkiye.edevlet.kapisi.verification.CardVerificationResultActivity;
import tr.gov.turkiye.edevlet.kapisi.verification.sms.SMSVerificationActivity;
import ud.d0;

/* loaded from: classes3.dex */
public final class d1 implements t8.a {
    public v8.a A0;
    public v8.a B0;
    public v8.a C0;
    public pf.b D0;
    public pf.n E0;
    public v8.a F0;
    public v8.a G0;
    public v8.a H0;
    public v8.a I0;
    public v8.a J0;
    public v8.a K0;
    public v8.a L0;
    public v8.a M0;
    public v8.a N0;
    public of.j O0;
    public v8.a P0;
    public v8.a Q0;
    public v8.a R0;
    public v8.a S0;
    public v8.a T0;
    public v8.a U0;
    public v8.a V0;
    public v8.a W0;
    public c X0;
    public be.o Y0;
    public v8.a Z0;

    /* renamed from: a, reason: collision with root package name */
    public final af.a f20077a;

    /* renamed from: a1, reason: collision with root package name */
    public v8.a f20079a1;

    /* renamed from: b, reason: collision with root package name */
    public final vd.d f20080b;

    /* renamed from: b1, reason: collision with root package name */
    public v8.a f20082b1;

    /* renamed from: c, reason: collision with root package name */
    public final BaseApplication f20083c;

    /* renamed from: c1, reason: collision with root package name */
    public v8.a f20085c1;

    /* renamed from: d1, reason: collision with root package name */
    public v8.a f20088d1;

    /* renamed from: e0, reason: collision with root package name */
    public d f20090e0;

    /* renamed from: e1, reason: collision with root package name */
    public v8.a f20091e1;

    /* renamed from: f0, reason: collision with root package name */
    public gf.c f20092f0;

    /* renamed from: f1, reason: collision with root package name */
    public v8.a f20093f1;

    /* renamed from: g0, reason: collision with root package name */
    public a f20095g0;

    /* renamed from: g1, reason: collision with root package name */
    public v8.a f20096g1;

    /* renamed from: h0, reason: collision with root package name */
    public b f20098h0;

    /* renamed from: h1, reason: collision with root package name */
    public v8.a f20099h1;

    /* renamed from: i0, reason: collision with root package name */
    public gf.c f20101i0;

    /* renamed from: i1, reason: collision with root package name */
    public v8.a f20102i1;

    /* renamed from: j0, reason: collision with root package name */
    public v8.a f20104j0;

    /* renamed from: j1, reason: collision with root package name */
    public v8.a f20105j1;

    /* renamed from: k0, reason: collision with root package name */
    public e f20107k0;

    /* renamed from: k1, reason: collision with root package name */
    public v8.a f20108k1;

    /* renamed from: l0, reason: collision with root package name */
    public rf.b f20110l0;

    /* renamed from: l1, reason: collision with root package name */
    public v8.a f20111l1;

    /* renamed from: m0, reason: collision with root package name */
    public of.j f20113m0;

    /* renamed from: m1, reason: collision with root package name */
    public v8.a f20114m1;

    /* renamed from: n0, reason: collision with root package name */
    public rf.o f20116n0;

    /* renamed from: n1, reason: collision with root package name */
    public v8.a f20117n1;

    /* renamed from: o0, reason: collision with root package name */
    public v8.a f20119o0;

    /* renamed from: o1, reason: collision with root package name */
    public v8.a f20120o1;

    /* renamed from: p0, reason: collision with root package name */
    public v8.a f20122p0;

    /* renamed from: p1, reason: collision with root package name */
    public v8.a f20123p1;

    /* renamed from: q0, reason: collision with root package name */
    public v8.a f20125q0;

    /* renamed from: q1, reason: collision with root package name */
    public v8.a f20126q1;

    /* renamed from: r0, reason: collision with root package name */
    public v8.a f20128r0;

    /* renamed from: r1, reason: collision with root package name */
    public v8.a f20129r1;
    public v8.a s0;

    /* renamed from: s1, reason: collision with root package name */
    public v8.a f20131s1;

    /* renamed from: t0, reason: collision with root package name */
    public v8.a f20133t0;

    /* renamed from: t1, reason: collision with root package name */
    public v8.a f20134t1;

    /* renamed from: u0, reason: collision with root package name */
    public v8.a f20136u0;

    /* renamed from: u1, reason: collision with root package name */
    public v8.a f20137u1;

    /* renamed from: v0, reason: collision with root package name */
    public v8.a f20139v0;

    /* renamed from: v1, reason: collision with root package name */
    public v8.a f20140v1;

    /* renamed from: w0, reason: collision with root package name */
    public v8.a f20141w0;

    /* renamed from: w1, reason: collision with root package name */
    public v8.a f20142w1;

    /* renamed from: x0, reason: collision with root package name */
    public v8.a f20144x0;

    /* renamed from: x1, reason: collision with root package name */
    public v8.a f20145x1;

    /* renamed from: y0, reason: collision with root package name */
    public v8.a f20147y0;

    /* renamed from: y1, reason: collision with root package name */
    public v8.a f20148y1;

    /* renamed from: z0, reason: collision with root package name */
    public v8.a f20150z0;

    /* renamed from: z1, reason: collision with root package name */
    public v8.a f20151z1;

    /* renamed from: d, reason: collision with root package name */
    public final d1 f20086d = this;

    /* renamed from: e, reason: collision with root package name */
    public n f20089e = new n(this);
    public y f = new y(this);

    /* renamed from: g, reason: collision with root package name */
    public j0 f20094g = new j0(this);

    /* renamed from: h, reason: collision with root package name */
    public u0 f20097h = new u0(this);

    /* renamed from: i, reason: collision with root package name */
    public y0 f20100i = new y0(this);

    /* renamed from: j, reason: collision with root package name */
    public z0 f20103j = new z0(this);

    /* renamed from: k, reason: collision with root package name */
    public a1 f20106k = new a1(this);

    /* renamed from: l, reason: collision with root package name */
    public b1 f20109l = new b1(this);

    /* renamed from: m, reason: collision with root package name */
    public c1 f20112m = new c1(this);

    /* renamed from: n, reason: collision with root package name */
    public zf.d f20115n = new zf.d(this);

    /* renamed from: o, reason: collision with root package name */
    public zf.e f20118o = new zf.e(this);

    /* renamed from: p, reason: collision with root package name */
    public f f20121p = new f(this);

    /* renamed from: q, reason: collision with root package name */
    public g f20124q = new g(this);

    /* renamed from: r, reason: collision with root package name */
    public h f20127r = new h(this);

    /* renamed from: s, reason: collision with root package name */
    public i f20130s = new i(this);

    /* renamed from: t, reason: collision with root package name */
    public j f20132t = new j(this);

    /* renamed from: u, reason: collision with root package name */
    public k f20135u = new k(this);

    /* renamed from: v, reason: collision with root package name */
    public l f20138v = new l(this);
    public m w = new m(this);

    /* renamed from: x, reason: collision with root package name */
    public o f20143x = new o(this);

    /* renamed from: y, reason: collision with root package name */
    public p f20146y = new p(this);

    /* renamed from: z, reason: collision with root package name */
    public q f20149z = new q(this);
    public r A = new r(this);
    public s B = new s(this);
    public t C = new t(this);
    public u D = new u(this);
    public v E = new v(this);
    public w F = new w(this);
    public x G = new x(this);
    public z H = new z(this);
    public a0 I = new a0(this);
    public b0 J = new b0(this);
    public c0 K = new c0(this);
    public d0 L = new d0(this);
    public e0 M = new e0(this);
    public f0 N = new f0(this);
    public g0 O = new g0(this);
    public h0 P = new h0(this);
    public i0 Q = new i0(this);
    public k0 R = new k0(this);
    public l0 S = new l0(this);
    public m0 T = new m0(this);
    public n0 U = new n0(this);
    public o0 V = new o0(this);
    public p0 W = new p0(this);
    public q0 X = new q0(this);
    public r0 Y = new r0(this);
    public s0 Z = new s0(this);

    /* renamed from: a0, reason: collision with root package name */
    public t0 f20078a0 = new t0(this);

    /* renamed from: b0, reason: collision with root package name */
    public v0 f20081b0 = new v0(this);

    /* renamed from: c0, reason: collision with root package name */
    public w0 f20084c0 = new w0(this);

    /* renamed from: d0, reason: collision with root package name */
    public x0 f20087d0 = new x0(this);

    public static final class a implements k9.a<String> {

        /* renamed from: a, reason: collision with root package name */
        public final af.a f20152a;

        public a(af.b bVar) {
            this.f20152a = bVar;
        }

        @Override // k9.a
        public final String get() {
            af.b bVar = (af.b) this.f20152a;
            SharedPreferences sharedPreferencesE = bVar.e();
            bVar.f274b.getClass();
            return String.valueOf(sharedPreferencesE.getString("mode", "light"));
        }
    }

    public static final class b implements k9.a<String> {

        /* renamed from: a, reason: collision with root package name */
        public final af.a f20153a;

        public b(af.b bVar) {
            this.f20153a = bVar;
        }

        @Override // k9.a
        public final String get() {
            return ((af.b) this.f20153a).a();
        }
    }

    public static final class c implements k9.a<ud.d0> {

        /* renamed from: a, reason: collision with root package name */
        public final af.a f20154a;

        public c(af.b bVar) {
            this.f20154a = bVar;
        }

        @Override // k9.a
        public final ud.d0 get() {
            af.b bVar = (af.b) this.f20154a;
            bVar.f273a.getClass();
            rc.v vVarC = bVar.c();
            b0.a aVar = new b0.a();
            aVar.a(new SpecifiedTypeOrNull.a.C0272a());
            aVar.a(new ef.a(eg.g.class));
            aVar.a(new ef.a(String.class));
            aVar.a(new ef.a(eg.h.class));
            aVar.a(new ef.a(eg.i.class));
            l8.b0 b0Var = new l8.b0(aVar);
            d0.b bVar2 = new d0.b();
            bVar2.c("https://api.turkiye.gov.tr/");
            bVar2.f18004b = vVarC;
            bVar2.a(new vd.g());
            bVar2.b(new wd.a(b0Var));
            return bVar2.d();
        }
    }

    public static final class d implements k9.a<ud.d0> {

        /* renamed from: a, reason: collision with root package name */
        public final af.a f20155a;

        public d(af.b bVar) {
            this.f20155a = bVar;
        }

        @Override // k9.a
        public final ud.d0 get() {
            return ((af.b) this.f20155a).d();
        }
    }

    public static final class e implements k9.a<SharedPreferences.Editor> {

        /* renamed from: a, reason: collision with root package name */
        public final af.a f20156a;

        public e(af.b bVar) {
            this.f20156a = bVar;
        }

        @Override // k9.a
        public final SharedPreferences.Editor get() {
            return ((af.b) this.f20156a).f();
        }
    }

    public d1(vd.d dVar, af.b bVar, BaseApplication baseApplication) {
        this.f20077a = bVar;
        this.f20080b = dVar;
        this.f20083c = baseApplication;
        this.f20090e0 = new d(bVar);
        this.f20092f0 = new gf.c(12, dVar);
        this.f20095g0 = new a(bVar);
        this.f20098h0 = new b(bVar);
        int r12 = 0;
        gf.c cVar = new gf.c(0, new zf.a(dVar, v8.a.a(baseApplication)));
        this.f20101i0 = cVar;
        mf.d dVar2 = new mf.d(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, cVar, 2);
        this.f20104j0 = v8.a.a(new mf.j(3, new s4.y1(new gf.c(5, dVar2), new mf.l(dVar2, 4))));
        d dVar3 = this.f20090e0;
        gf.c cVar2 = this.f20092f0;
        a aVar = this.f20095g0;
        b bVar2 = this.f20098h0;
        gf.c cVar3 = this.f20101i0;
        gf.c cVar4 = new gf.c(1, new sf.b(dVar3, cVar2, aVar, bVar2, cVar3, 0));
        e eVar = new e(bVar);
        this.f20107k0 = eVar;
        int r32 = 1;
        rf.b bVar3 = new rf.b(dVar3, cVar2, aVar, bVar2, cVar3, eVar);
        this.f20110l0 = bVar3;
        of.j jVar = new of.j(bVar3, r32);
        this.f20113m0 = jVar;
        rf.o oVar = new rf.o(bVar3, r12);
        this.f20116n0 = oVar;
        this.f20119o0 = v8.a.a(new sf.l(r12, new sf.k(cVar4, jVar, oVar)));
        int r72 = 2;
        this.f20122p0 = v8.a.a(new pf.l(r32, new ig.b(new pf.n(new pf.b(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 1), r72))));
        this.f20125q0 = v8.a.a(new mf.j(r72, new qf.k(new mf.l(new mf.d(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 1), 2), this.f20113m0, this.f20116n0)));
        this.f20128r0 = v8.a.a(new nf.l(r12, new s4.x1(new nf.n(new nf.c(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 0), r12), this.f20113m0, this.f20116n0)));
        this.s0 = v8.a.a(new pf.l(r12, new pf.k(new pf.n(new pf.b(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 0), r12), this.f20113m0, this.f20116n0)));
        this.f20133t0 = v8.a.a(new mf.j(r32, new qf.k(new mf.l(b.a.f13607a, 1), this.f20113m0, this.f20116n0)));
        this.f20136u0 = v8.a.a(new of.h(0, new of.g(new of.j(b.a.f11318a, r12))));
        this.f20139v0 = v8.a.a(new mf.j(r12, new mf.i(new mf.l(new mf.d(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 0), 0))));
        this.f20141w0 = v8.a.a(new nf.l(r32, new of.g(new nf.n(new nf.c(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 1), r32))));
        this.f20144x0 = v8.a.a(new sf.l(r32, new uf.e(new gf.c(2, new sf.b(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 1)))));
        this.f20147y0 = v8.a.a(new rf.m(r12, new rf.l(new pf.n(this.f20110l0, r32), this.f20116n0)));
        this.f20150z0 = v8.a.a(new mf.j(4, new mf.i(new mf.l(new mf.d(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 3), 5))));
        int r82 = 6;
        this.A0 = v8.a.a(new mf.j(5, new mf.i(new mf.l(new mf.d(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 4), 6))));
        this.B0 = v8.a.a(new ig.c(r32, new ig.b(new be.b(new qg.g(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 0), r32))));
        d dVar4 = this.f20090e0;
        gf.c cVar5 = this.f20092f0;
        a aVar2 = this.f20095g0;
        b bVar4 = this.f20098h0;
        gf.c cVar6 = this.f20101i0;
        gf.c cVar7 = new gf.c(3, new sf.b(dVar4, cVar5, aVar2, bVar4, cVar6, 2));
        bg.b bVar5 = new bg.b(dVar4, cVar5, aVar2, bVar4, cVar6, 0);
        this.C0 = v8.a.a(new sf.l(r72, new sf.k(cVar7, new mf.l(bVar5, 3), new gf.c(4, bVar5))));
        pf.b bVar6 = new pf.b(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 2);
        this.D0 = bVar6;
        pf.n nVar = new pf.n(bVar6, 3);
        this.E0 = nVar;
        this.F0 = v8.a.a(new pf.l(r72, new ig.b(nVar)));
        this.G0 = v8.a.a(new pf.l(3, new ig.b(new pf.n(this.D0, 4))));
        this.H0 = v8.a.a(new ig.c(r12, new ig.b(this.E0)));
        be.g gVar = new be.g(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 0);
        this.I0 = v8.a.a(new be.m(r12, new c7(new be.o(gVar, r12), new be.b(gVar, r12))));
        qg.g gVar2 = new qg.g(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 3);
        int r52 = 4;
        this.J0 = v8.a.a(new ig.c(r52, new bh.h(new be.b(gVar2, r52), new pf.n(gVar2, 10))));
        this.K0 = v8.a.a(new nf.l(r72, new of.g(new nf.n(new nf.c(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 2), 3))));
        qg.g gVar3 = new qg.g(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 1);
        this.L0 = v8.a.a(new ig.c(r72, new bh.h(new be.b(gVar3, r72), new be.o(gVar3, r72))));
        sf.b bVar7 = new sf.b(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 3);
        int r6 = 7;
        this.M0 = v8.a.a(new sf.l(3, new l3.w(new gf.c(6, bVar7), new mf.l(bVar7, 7))));
        sf.b bVar8 = new sf.b(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 4);
        this.N0 = v8.a.a(new pf.l(4, new pf.k(new pf.n(bVar8, r6), new nf.n(bVar8, r72), new mf.l(bVar8, 8))));
        of.j jVar2 = new of.j(new uh.b(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0), 3);
        this.O0 = jVar2;
        this.P0 = v8.a.a(new of.h(1, new of.g(jVar2)));
        sf.b bVar9 = new sf.b(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 5);
        this.Q0 = v8.a.a(new sf.l(5, new sf.k(new gf.c(10, bVar9), new gf.c(9, bVar9), new of.j(bVar9, r72))));
        this.R0 = v8.a.a(new sf.l(r82, new uf.e(new gf.c(11, new sf.b(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 6)))));
        this.S0 = v8.a.a(new be.m(1, new d8(new be.o(new be.g(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 1), 3))));
        this.T0 = v8.a.a(new rf.m(3, new fh.g(new rf.o(new bg.b(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 3), r82))));
        bg.b bVar10 = new bg.b(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 2);
        this.U0 = v8.a.a(new rf.m(r72, new rf.l(new rf.o(bVar10, 5), new rf.o(bVar10, 4))));
        int r92 = 5;
        this.V0 = v8.a.a(new pf.l(r92, new ig.b(new pf.n(new pf.b(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 3), 8))));
        this.W0 = v8.a.a(new rf.m(1, new fh.g(new rf.o(new bg.b(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 1), 3))));
        c cVar8 = new c(bVar);
        this.X0 = cVar8;
        mf.d dVar5 = new mf.d(cVar8, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 5);
        gf.c cVar9 = new gf.c(8, dVar5);
        gf.c cVar10 = new gf.c(7, dVar5);
        pf.n nVar2 = new pf.n(dVar5, r82);
        rf.o oVar2 = new rf.o(dVar5, r72);
        pf.n nVar3 = new pf.n(dVar5, 5);
        int r11 = 1;
        rf.o oVar3 = new rf.o(dVar5, r11);
        be.o oVar4 = new be.o(dVar5, r11);
        this.Y0 = oVar4;
        this.Z0 = v8.a.a(new sf.l(4, new r4.j4(cVar9, cVar10, nVar2, oVar2, nVar3, oVar3, oVar4)));
        this.f20079a1 = v8.a.a(new rf.m(4, new fh.g(new rf.o(new bg.b(this.f20090e0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 4), r6))));
        this.f20082b1 = v8.a.a(new sf.l(r6, new uf.e(this.O0)));
        qg.g gVar4 = new qg.g(this.X0, this.f20092f0, this.f20095g0, this.f20098h0, this.f20101i0, 2);
        int r42 = 4;
        this.f20085c1 = v8.a.a(new ig.c(3, new rh.o(new be.o(gVar4, r42), new be.b(gVar4, 3), new pf.n(gVar4, 9), new mf.l(gVar4, 9), new nf.n(gVar4, r42), this.Y0)));
        this.f20088d1 = v8.a.a(new pe.b(r12, new pe.a(this.f20107k0)));
        this.f20091e1 = v8.a.a(new pe.d(r12, new pe.c(this.f20107k0)));
        this.f20093f1 = v8.a.a(new pe.i(r12, new pe.h(this.f20107k0)));
        this.f20096g1 = v8.a.a(new ne.b(r12, new ne.a(this.f20107k0)));
        this.f20099h1 = v8.a.a(new te.c(1, new we.a(this.f20107k0)));
        this.f20102i1 = v8.a.a(new pe.d(r72, new xe.b(this.f20107k0)));
        int r43 = 1;
        this.f20105j1 = v8.a.a(new me.e(r43, new re.a(this.f20107k0)));
        this.f20108k1 = v8.a.a(new te.f(r43, new ye.a(this.f20107k0)));
        this.f20111l1 = v8.a.a(new pe.i(r72, new ye.b(this.f20107k0)));
        this.f20114m1 = v8.a.a(new pe.i(1, new ue.a(this.f20107k0)));
        this.f20117n1 = v8.a.a(new me.e(r12, new me.d(this.f20107k0)));
        this.f20120o1 = v8.a.a(new me.b(r12, new me.a(this.f20107k0)));
        this.f20123p1 = v8.a.a(new pe.b(r72, new ve.d(this.f20107k0)));
        this.f20126q1 = v8.a.a(new me.b(r72, new ve.a(this.f20107k0)));
        this.f20129r1 = v8.a.a(new ne.b(r72, new ve.c(this.f20107k0)));
        int r44 = 1;
        this.f20131s1 = v8.a.a(new pe.b(r44, new te.a(this.f20107k0)));
        this.f20134t1 = v8.a.a(new pe.d(r44, new te.d(this.f20107k0)));
        this.f20137u1 = v8.a.a(new te.c(r12, new te.b(this.f20107k0)));
        this.f20140v1 = v8.a.a(new te.f(r12, new te.e(this.f20107k0)));
        this.f20142w1 = v8.a.a(new me.b(1, new qe.c(this.f20107k0)));
        this.f20145x1 = v8.a.a(new me.e(r72, new ve.b(this.f20107k0)));
        this.f20148y1 = v8.a.a(new me.b(3, new ye.c(this.f20107k0)));
        this.f20151z1 = v8.a.a(new ne.b(1, new se.b(this.f20107k0)));
    }

    public static gf.b b(d1 d1Var) {
        d1Var.f20080b.getClass();
        BaseApplication application = d1Var.f20083c;
        kotlin.jvm.internal.h.f(application, "application");
        Context applicationContext = application.getApplicationContext();
        kotlin.jvm.internal.h.e(applicationContext, "application.applicationContext");
        return new gf.b(applicationContext);
    }

    @Override // t8.a
    public final void a(Object obj) {
        ((BaseApplication) obj).f15644a = c();
    }

    public final t8.c<Object> c() {
        j0.e eVar = new j0.e(52);
        eVar.h(LoginActivity.class, this.f20089e);
        eVar.h(MainActivity.class, this.f);
        eVar.h(ServicePageActivity.class, this.f20094g);
        eVar.h(CardVerificationActivity.class, this.f20097h);
        eVar.h(QRScanActivity.class, this.f20100i);
        eVar.h(CardReadActivity.class, this.f20103j);
        eVar.h(SMSVerificationActivity.class, this.f20106k);
        eVar.h(CardVerificationResultActivity.class, this.f20109l);
        eVar.h(PaymentPageActivity.class, this.f20112m);
        eVar.h(BarcodeVerifyActivity.class, this.f20115n);
        eVar.h(MobileAccidentReportActivity.class, this.f20118o);
        eVar.h(SearchFragment.class, this.f20121p);
        eVar.h(DashboardFragment.class, this.f20124q);
        eVar.h(AboutPageFragment.class, this.f20127r);
        eVar.h(BarcodeServicesFragment.class, this.f20130s);
        eVar.h(FavoriteServicesFragment.class, this.f20132t);
        eVar.h(MostUsedServicesFragment.class, this.f20135u);
        eVar.h(MyCityFragment.class, this.f20138v);
        eVar.h(NewestServicesFragment.class, this.w);
        eVar.h(WonderServicesFragment.class, this.f20143x);
        eVar.h(ElectronicDocServicesFragment.class, this.f20146y);
        eVar.h(EditorServicesFragment.class, this.f20149z);
        eVar.h(ConceptServicesFragment.class, this.A);
        eVar.h(MunicipalityListFragment.class, this.B);
        eVar.h(InstitutionFragment.class, this.C);
        eVar.h(FirmCategoryListFragment.class, this.D);
        eVar.h(InstitutionListFragment.class, this.E);
        eVar.h(InstitutionDetailFragment.class, this.F);
        eVar.h(ProfileFragment.class, this.G);
        eVar.h(ContactInfoFragment.class, this.H);
        eVar.h(PersonalInfoFragment.class, this.I);
        eVar.h(SettingsFragment.class, this.J);
        eVar.h(BarcodeVerifyFragment.class, this.K);
        eVar.h(ManualInputBarcodeFragment.class, this.L);
        eVar.h(ManualDynamicFieldFragment.class, this.M);
        eVar.h(MobileAccidentOnboardingFragment.class, this.N);
        eVar.h(MobileAccidentIntroductionFragment.class, this.O);
        eVar.h(MobileAccidentAgreementFragment.class, this.P);
        eVar.h(MobileAccidentConditionFragment.class, this.Q);
        eVar.h(MobileAccidentDriverFragment.class, this.R);
        eVar.h(MobileAccidentDifferentVehicleFragment.class, this.S);
        eVar.h(MobileAccidentPolicyFragment.class, this.T);
        eVar.h(MobileAccidentInformationFragment.class, this.U);
        eVar.h(MobileAccidentMapFragment.class, this.V);
        eVar.h(MobileAccidentDashPointFragment.class, this.W);
        eVar.h(MobileAccidentGenerateQRFragment.class, this.X);
        eVar.h(MobileAccidentQRScanFragment.class, this.Y);
        eVar.h(MobileAccidentMatchedReportFragment.class, this.Z);
        eVar.h(MobileAccidentWaitingApprovalFragment.class, this.f20078a0);
        eVar.h(MobileAccidentApproveFragment.class, this.f20081b0);
        eVar.h(MobileAccidentResultFragment.class, this.f20084c0);
        eVar.h(MobileAccidentCompletedReportFragment.class, this.f20087d0);
        return new t8.c<>(eVar.e(), Collections.emptyMap());
    }
}
