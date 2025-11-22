package zg;

import r0.d1;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationGuestRequestModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationHostRequestModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadMediaModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.HostReportLocationModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MediaListModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ReportDetailModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportModel;

/* loaded from: classes3.dex */
public final class k implements r0.p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<ReportDetailModel>> f20355a;

    /* renamed from: b, reason: collision with root package name */
    public final ReportDetailModel f20356b;

    /* renamed from: c, reason: collision with root package name */
    public final r0.b<Result<HostReportLocationModel>> f20357c;

    /* renamed from: d, reason: collision with root package name */
    public final HostReportLocationModel f20358d;

    /* renamed from: e, reason: collision with root package name */
    public final r0.b<Result<MediaListModel>> f20359e;
    public final MediaListModel f;

    /* renamed from: g, reason: collision with root package name */
    public final r0.b<Result<SaveReportModel>> f20360g;

    /* renamed from: h, reason: collision with root package name */
    public final SaveReportModel f20361h;

    /* renamed from: i, reason: collision with root package name */
    public final r0.b<Result<ConfirmationHostRequestModel>> f20362i;

    /* renamed from: j, reason: collision with root package name */
    public final ConfirmationHostRequestModel f20363j;

    /* renamed from: k, reason: collision with root package name */
    public final r0.b<Result<ConfirmationGuestRequestModel>> f20364k;

    /* renamed from: l, reason: collision with root package name */
    public final ConfirmationGuestRequestModel f20365l;

    /* renamed from: m, reason: collision with root package name */
    public final r0.b<Result<DownloadMediaModel>> f20366m;

    /* renamed from: n, reason: collision with root package name */
    public final DownloadMediaModel f20367n;

    /* renamed from: o, reason: collision with root package name */
    public final a f20368o;

    public k() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public k(r0.b<? extends Result<ReportDetailModel>> reportDetailState, ReportDetailModel reportDetailResult, r0.b<? extends Result<HostReportLocationModel>> reportHostLocationState, HostReportLocationModel reportHostLocation, r0.b<? extends Result<MediaListModel>> mediaListState, MediaListModel mediaListResult, r0.b<? extends Result<SaveReportModel>> saveReportState, SaveReportModel saveReportResult, r0.b<? extends Result<ConfirmationHostRequestModel>> confirmationState, ConfirmationHostRequestModel confirmationResult, r0.b<? extends Result<ConfirmationGuestRequestModel>> confirmationGuestState, ConfirmationGuestRequestModel confirmationGuestResult, r0.b<? extends Result<DownloadMediaModel>> mediaDownloadState, DownloadMediaModel mediaDownloadResult, a mediaItemModel) {
        kotlin.jvm.internal.h.f(reportDetailState, "reportDetailState");
        kotlin.jvm.internal.h.f(reportDetailResult, "reportDetailResult");
        kotlin.jvm.internal.h.f(reportHostLocationState, "reportHostLocationState");
        kotlin.jvm.internal.h.f(reportHostLocation, "reportHostLocation");
        kotlin.jvm.internal.h.f(mediaListState, "mediaListState");
        kotlin.jvm.internal.h.f(mediaListResult, "mediaListResult");
        kotlin.jvm.internal.h.f(saveReportState, "saveReportState");
        kotlin.jvm.internal.h.f(saveReportResult, "saveReportResult");
        kotlin.jvm.internal.h.f(confirmationState, "confirmationState");
        kotlin.jvm.internal.h.f(confirmationResult, "confirmationResult");
        kotlin.jvm.internal.h.f(confirmationGuestState, "confirmationGuestState");
        kotlin.jvm.internal.h.f(confirmationGuestResult, "confirmationGuestResult");
        kotlin.jvm.internal.h.f(mediaDownloadState, "mediaDownloadState");
        kotlin.jvm.internal.h.f(mediaDownloadResult, "mediaDownloadResult");
        kotlin.jvm.internal.h.f(mediaItemModel, "mediaItemModel");
        this.f20355a = reportDetailState;
        this.f20356b = reportDetailResult;
        this.f20357c = reportHostLocationState;
        this.f20358d = reportHostLocation;
        this.f20359e = mediaListState;
        this.f = mediaListResult;
        this.f20360g = saveReportState;
        this.f20361h = saveReportResult;
        this.f20362i = confirmationState;
        this.f20363j = confirmationResult;
        this.f20364k = confirmationGuestState;
        this.f20365l = confirmationGuestResult;
        this.f20366m = mediaDownloadState;
        this.f20367n = mediaDownloadResult;
        this.f20368o = mediaItemModel;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ k(r0.b bVar, ReportDetailModel reportDetailModel, r0.b bVar2, HostReportLocationModel hostReportLocationModel, r0.b bVar3, MediaListModel mediaListModel, r0.b bVar4, SaveReportModel saveReportModel, r0.b bVar5, ConfirmationHostRequestModel confirmationHostRequestModel, r0.b bVar6, ConfirmationGuestRequestModel confirmationGuestRequestModel, r0.b bVar7, DownloadMediaModel downloadMediaModel, a aVar, int r37, kotlin.jvm.internal.d dVar) {
        int r12 = r37 & 1;
        r0.b bVar8 = d1.f13733b;
        this(r12 != 0 ? bVar8 : bVar, (r37 & 2) != 0 ? new ReportDetailModel(null, 0, 0, false, 15, null) : reportDetailModel, (r37 & 4) != 0 ? bVar8 : bVar2, (r37 & 8) != 0 ? new HostReportLocationModel(null, 0, 0, false, 15, null) : hostReportLocationModel, (r37 & 16) != 0 ? bVar8 : bVar3, (r37 & 32) != 0 ? new MediaListModel(null, 0, 0, false, 15, null) : mediaListModel, (r37 & 64) != 0 ? bVar8 : bVar4, (r37 & 128) != 0 ? new SaveReportModel(null, 0, 0, false, 15, null) : saveReportModel, (r37 & 256) != 0 ? bVar8 : bVar5, (r37 & 512) != 0 ? new ConfirmationHostRequestModel(null, 0, 0, false, 15, null) : confirmationHostRequestModel, (r37 & 1024) != 0 ? bVar8 : bVar6, (r37 & 2048) != 0 ? new ConfirmationGuestRequestModel(null, 0, 0, false, 15, null) : confirmationGuestRequestModel, (r37 & 4096) == 0 ? bVar7 : bVar8, (r37 & 8192) != 0 ? new DownloadMediaModel(null, 0, 0, false, 15, null) : downloadMediaModel, (r37 & 16384) != 0 ? new a(0) : aVar);
    }

    public static k copy$default(k kVar, r0.b bVar, ReportDetailModel reportDetailModel, r0.b bVar2, HostReportLocationModel hostReportLocationModel, r0.b bVar3, MediaListModel mediaListModel, r0.b bVar4, SaveReportModel saveReportModel, r0.b bVar5, ConfirmationHostRequestModel confirmationHostRequestModel, r0.b bVar6, ConfirmationGuestRequestModel confirmationGuestRequestModel, r0.b bVar7, DownloadMediaModel downloadMediaModel, a aVar, int r32, Object obj) {
        r0.b reportDetailState = (r32 & 1) != 0 ? kVar.f20355a : bVar;
        ReportDetailModel reportDetailResult = (r32 & 2) != 0 ? kVar.f20356b : reportDetailModel;
        r0.b reportHostLocationState = (r32 & 4) != 0 ? kVar.f20357c : bVar2;
        HostReportLocationModel reportHostLocation = (r32 & 8) != 0 ? kVar.f20358d : hostReportLocationModel;
        r0.b mediaListState = (r32 & 16) != 0 ? kVar.f20359e : bVar3;
        MediaListModel mediaListResult = (r32 & 32) != 0 ? kVar.f : mediaListModel;
        r0.b saveReportState = (r32 & 64) != 0 ? kVar.f20360g : bVar4;
        SaveReportModel saveReportResult = (r32 & 128) != 0 ? kVar.f20361h : saveReportModel;
        r0.b confirmationState = (r32 & 256) != 0 ? kVar.f20362i : bVar5;
        ConfirmationHostRequestModel confirmationResult = (r32 & 512) != 0 ? kVar.f20363j : confirmationHostRequestModel;
        r0.b confirmationGuestState = (r32 & 1024) != 0 ? kVar.f20364k : bVar6;
        ConfirmationGuestRequestModel confirmationGuestResult = (r32 & 2048) != 0 ? kVar.f20365l : confirmationGuestRequestModel;
        r0.b mediaDownloadState = (r32 & 4096) != 0 ? kVar.f20366m : bVar7;
        DownloadMediaModel mediaDownloadResult = (r32 & 8192) != 0 ? kVar.f20367n : downloadMediaModel;
        a mediaItemModel = (r32 & 16384) != 0 ? kVar.f20368o : aVar;
        kVar.getClass();
        kotlin.jvm.internal.h.f(reportDetailState, "reportDetailState");
        kotlin.jvm.internal.h.f(reportDetailResult, "reportDetailResult");
        kotlin.jvm.internal.h.f(reportHostLocationState, "reportHostLocationState");
        kotlin.jvm.internal.h.f(reportHostLocation, "reportHostLocation");
        kotlin.jvm.internal.h.f(mediaListState, "mediaListState");
        kotlin.jvm.internal.h.f(mediaListResult, "mediaListResult");
        kotlin.jvm.internal.h.f(saveReportState, "saveReportState");
        kotlin.jvm.internal.h.f(saveReportResult, "saveReportResult");
        kotlin.jvm.internal.h.f(confirmationState, "confirmationState");
        kotlin.jvm.internal.h.f(confirmationResult, "confirmationResult");
        kotlin.jvm.internal.h.f(confirmationGuestState, "confirmationGuestState");
        kotlin.jvm.internal.h.f(confirmationGuestResult, "confirmationGuestResult");
        kotlin.jvm.internal.h.f(mediaDownloadState, "mediaDownloadState");
        kotlin.jvm.internal.h.f(mediaDownloadResult, "mediaDownloadResult");
        kotlin.jvm.internal.h.f(mediaItemModel, "mediaItemModel");
        return new k(reportDetailState, reportDetailResult, reportHostLocationState, reportHostLocation, mediaListState, mediaListResult, saveReportState, saveReportResult, confirmationState, confirmationResult, confirmationGuestState, confirmationGuestResult, mediaDownloadState, mediaDownloadResult, mediaItemModel);
    }

    public final r0.b<Result<ReportDetailModel>> component1() {
        return this.f20355a;
    }

    public final ConfirmationHostRequestModel component10() {
        return this.f20363j;
    }

    public final r0.b<Result<ConfirmationGuestRequestModel>> component11() {
        return this.f20364k;
    }

    public final ConfirmationGuestRequestModel component12() {
        return this.f20365l;
    }

    public final r0.b<Result<DownloadMediaModel>> component13() {
        return this.f20366m;
    }

    public final DownloadMediaModel component14() {
        return this.f20367n;
    }

    public final a component15() {
        return this.f20368o;
    }

    public final ReportDetailModel component2() {
        return this.f20356b;
    }

    public final r0.b<Result<HostReportLocationModel>> component3() {
        return this.f20357c;
    }

    public final HostReportLocationModel component4() {
        return this.f20358d;
    }

    public final r0.b<Result<MediaListModel>> component5() {
        return this.f20359e;
    }

    public final MediaListModel component6() {
        return this.f;
    }

    public final r0.b<Result<SaveReportModel>> component7() {
        return this.f20360g;
    }

    public final SaveReportModel component8() {
        return this.f20361h;
    }

    public final r0.b<Result<ConfirmationHostRequestModel>> component9() {
        return this.f20362i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return kotlin.jvm.internal.h.a(this.f20355a, kVar.f20355a) && kotlin.jvm.internal.h.a(this.f20356b, kVar.f20356b) && kotlin.jvm.internal.h.a(this.f20357c, kVar.f20357c) && kotlin.jvm.internal.h.a(this.f20358d, kVar.f20358d) && kotlin.jvm.internal.h.a(this.f20359e, kVar.f20359e) && kotlin.jvm.internal.h.a(this.f, kVar.f) && kotlin.jvm.internal.h.a(this.f20360g, kVar.f20360g) && kotlin.jvm.internal.h.a(this.f20361h, kVar.f20361h) && kotlin.jvm.internal.h.a(this.f20362i, kVar.f20362i) && kotlin.jvm.internal.h.a(this.f20363j, kVar.f20363j) && kotlin.jvm.internal.h.a(this.f20364k, kVar.f20364k) && kotlin.jvm.internal.h.a(this.f20365l, kVar.f20365l) && kotlin.jvm.internal.h.a(this.f20366m, kVar.f20366m) && kotlin.jvm.internal.h.a(this.f20367n, kVar.f20367n) && kotlin.jvm.internal.h.a(this.f20368o, kVar.f20368o);
    }

    public final int hashCode() {
        return this.f20368o.hashCode() + ((this.f20367n.hashCode() + androidx.browser.browseractions.b.d(this.f20366m, (this.f20365l.hashCode() + androidx.browser.browseractions.b.d(this.f20364k, (this.f20363j.hashCode() + androidx.browser.browseractions.b.d(this.f20362i, (this.f20361h.hashCode() + androidx.browser.browseractions.b.d(this.f20360g, (this.f.hashCode() + androidx.browser.browseractions.b.d(this.f20359e, (this.f20358d.hashCode() + androidx.browser.browseractions.b.d(this.f20357c, (this.f20356b.hashCode() + (this.f20355a.hashCode() * 31)) * 31, 31)) * 31, 31)) * 31, 31)) * 31, 31)) * 31, 31)) * 31, 31)) * 31);
    }

    public final String toString() {
        return "MobileAccidentApproveState(reportDetailState=" + this.f20355a + ", reportDetailResult=" + this.f20356b + ", reportHostLocationState=" + this.f20357c + ", reportHostLocation=" + this.f20358d + ", mediaListState=" + this.f20359e + ", mediaListResult=" + this.f + ", saveReportState=" + this.f20360g + ", saveReportResult=" + this.f20361h + ", confirmationState=" + this.f20362i + ", confirmationResult=" + this.f20363j + ", confirmationGuestState=" + this.f20364k + ", confirmationGuestResult=" + this.f20365l + ", mediaDownloadState=" + this.f20366m + ", mediaDownloadResult=" + this.f20367n + ", mediaItemModel=" + this.f20368o + ')';
    }
}
