package zg;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.realm.g0;
import net.sf.scuba.smartcards.ISO7816;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import ud.d0;

/* loaded from: classes3.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public d0 f20311a;

    /* renamed from: b, reason: collision with root package name */
    public String f20312b;

    /* renamed from: c, reason: collision with root package name */
    public String f20313c;

    /* renamed from: d, reason: collision with root package name */
    public String f20314d;

    /* renamed from: e, reason: collision with root package name */
    public gf.b f20315e;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveRepository", f = "MobileAccidentApproveRepository.kt", l = {370, 371}, m = "downloadMedia")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public i f20316a;

        /* renamed from: b, reason: collision with root package name */
        public String f20317b;

        /* renamed from: c, reason: collision with root package name */
        public String f20318c;

        /* renamed from: d, reason: collision with root package name */
        public /* synthetic */ Object f20319d;
        public int f;

        public a(p9.d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f20319d = obj;
            this.f |= Integer.MIN_VALUE;
            return i.this.a(null, null, this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveRepository", f = "MobileAccidentApproveRepository.kt", l = {575, 576}, m = "makeConfirmationRequestForGuest")
    public static final class b extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public i f20321a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f20322b;

        /* renamed from: d, reason: collision with root package name */
        public int f20324d;

        public b(p9.d<? super b> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f20322b = obj;
            this.f20324d |= Integer.MIN_VALUE;
            return i.this.g(this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveRepository", f = "MobileAccidentApproveRepository.kt", l = {TypedValues.PositionType.TYPE_CURVE_FIT, 509}, m = "makeConfirmationRequestForHost")
    public static final class c extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public i f20325a;

        /* renamed from: b, reason: collision with root package name */
        public String f20326b;

        /* renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f20327c;

        /* renamed from: e, reason: collision with root package name */
        public int f20329e;

        public c(p9.d<? super c> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f20327c = obj;
            this.f20329e |= Integer.MIN_VALUE;
            return i.this.h(null, this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveRepository", f = "MobileAccidentApproveRepository.kt", l = {218, 219}, m = "provideHostLocation")
    public static final class d extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public i f20330a;

        /* renamed from: b, reason: collision with root package name */
        public String f20331b;

        /* renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f20332c;

        /* renamed from: e, reason: collision with root package name */
        public int f20334e;

        public d(p9.d<? super d> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f20332c = obj;
            this.f20334e |= Integer.MIN_VALUE;
            return i.this.i(null, this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveRepository", f = "MobileAccidentApproveRepository.kt", l = {295, 296}, m = "provideMediaList")
    public static final class e extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public i f20335a;

        /* renamed from: b, reason: collision with root package name */
        public String f20336b;

        /* renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f20337c;

        /* renamed from: e, reason: collision with root package name */
        public int f20339e;

        public e(p9.d<? super e> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f20337c = obj;
            this.f20339e |= Integer.MIN_VALUE;
            return i.this.j(null, this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveRepository", f = "MobileAccidentApproveRepository.kt", l = {ISO7816.TAG_SM_EXPECTED_LENGTH, 152}, m = "provideReportDetails")
    public static final class f extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public i f20340a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f20341b;

        /* renamed from: d, reason: collision with root package name */
        public int f20343d;

        public f(p9.d<? super f> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f20341b = obj;
            this.f20343d |= Integer.MIN_VALUE;
            return i.this.k(this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveRepository", f = "MobileAccidentApproveRepository.kt", l = {439, 440}, m = "saveReport")
    public static final class g extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public i f20344a;

        /* renamed from: b, reason: collision with root package name */
        public String f20345b;

        /* renamed from: c, reason: collision with root package name */
        public String f20346c;

        /* renamed from: d, reason: collision with root package name */
        public String f20347d;

        /* renamed from: e, reason: collision with root package name */
        public /* synthetic */ Object f20348e;

        /* renamed from: g, reason: collision with root package name */
        public int f20349g;

        public g(p9.d<? super g> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f20348e = obj;
            this.f20349g |= Integer.MIN_VALUE;
            return i.this.m(null, null, null, this);
        }
    }

    public static MKTAccidentReport l() {
        g0 g0VarT = g0.t();
        g0VarT.m();
        return (MKTAccidentReport) g0VarT.J(MKTAccidentReport.class).e();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r22, java.lang.String r23, p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadMediaModel>> r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zg.i.a(java.lang.String, java.lang.String, p9.d):java.lang.Object");
    }

    public final d0 b() {
        d0 d0Var = this.f20311a;
        if (d0Var != null) {
            return d0Var;
        }
        kotlin.jvm.internal.h.n("mApiClient");
        throw null;
    }

    public final String c() {
        String str = this.f20313c;
        if (str != null) {
            return str;
        }
        kotlin.jvm.internal.h.n("mAppMode");
        throw null;
    }

    public final String d() {
        String str = this.f20312b;
        if (str != null) {
            return str;
        }
        kotlin.jvm.internal.h.n("mAppVersion");
        throw null;
    }

    public final String e() {
        String str = this.f20314d;
        if (str != null) {
            return str;
        }
        kotlin.jvm.internal.h.n("mLanguage");
        throw null;
    }

    public final gf.b f() {
        gf.b bVar = this.f20315e;
        if (bVar != null) {
            return bVar;
        }
        kotlin.jvm.internal.h.n("mNetworkHelper");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationGuestRequestModel>> r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zg.i.g(p9.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(java.lang.String r18, p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationHostRequestModel>> r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zg.i.h(java.lang.String, p9.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(java.lang.String r18, p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.mkt.HostReportLocationModel>> r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zg.i.i(java.lang.String, p9.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Type inference failed for: r14v4, types: [java.lang.String, zg.i] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(java.lang.String r27, p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.mkt.MediaListModel>> r28) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zg.i.j(java.lang.String, p9.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object k(p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.mkt.ReportDetailModel>> r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 795
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zg.i.k(p9.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m(java.lang.String r25, java.lang.String r26, java.lang.String r27, p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportModel>> r28) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zg.i.m(java.lang.String, java.lang.String, java.lang.String, p9.d):java.lang.Object");
    }
}
