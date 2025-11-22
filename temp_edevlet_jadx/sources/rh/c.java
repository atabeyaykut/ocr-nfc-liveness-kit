package rh;

import r0.d1;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportListModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadCompletedReportModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportListModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MergeDetailModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ReportDetailModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportModel;

/* loaded from: classes3.dex */
public final class c implements r0.p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<InProgressReportListModel>> f14723a;

    /* renamed from: b, reason: collision with root package name */
    public final InProgressReportListModel f14724b;

    /* renamed from: c, reason: collision with root package name */
    public final r0.b<Result<CompletedReportListModel>> f14725c;

    /* renamed from: d, reason: collision with root package name */
    public final CompletedReportListModel f14726d;

    /* renamed from: e, reason: collision with root package name */
    public final r0.b<Result<DownloadCompletedReportModel>> f14727e;
    public final DownloadCompletedReportModel f;

    /* renamed from: g, reason: collision with root package name */
    public final r0.b<Result<ReportDetailModel>> f14728g;

    /* renamed from: h, reason: collision with root package name */
    public final ReportDetailModel f14729h;

    /* renamed from: i, reason: collision with root package name */
    public final r0.b<Result<SaveReportModel>> f14730i;

    /* renamed from: j, reason: collision with root package name */
    public final SaveReportModel f14731j;

    /* renamed from: k, reason: collision with root package name */
    public final r0.b<Result<MergeDetailModel>> f14732k;

    /* renamed from: l, reason: collision with root package name */
    public final MergeDetailModel f14733l;

    public c() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(r0.b<? extends Result<InProgressReportListModel>> inProgressReportListState, InProgressReportListModel inProgressReportList, r0.b<? extends Result<CompletedReportListModel>> completedReportListState, CompletedReportListModel completedReportList, r0.b<? extends Result<DownloadCompletedReportModel>> downloadCompletedReportListState, DownloadCompletedReportModel downloadCompletedReportList, r0.b<? extends Result<ReportDetailModel>> reportDetailState, ReportDetailModel reportDetailResult, r0.b<? extends Result<SaveReportModel>> saveReportState, SaveReportModel saveReportResult, r0.b<? extends Result<MergeDetailModel>> mergedReportDetailState, MergeDetailModel mergedReportDetailResult) {
        kotlin.jvm.internal.h.f(inProgressReportListState, "inProgressReportListState");
        kotlin.jvm.internal.h.f(inProgressReportList, "inProgressReportList");
        kotlin.jvm.internal.h.f(completedReportListState, "completedReportListState");
        kotlin.jvm.internal.h.f(completedReportList, "completedReportList");
        kotlin.jvm.internal.h.f(downloadCompletedReportListState, "downloadCompletedReportListState");
        kotlin.jvm.internal.h.f(downloadCompletedReportList, "downloadCompletedReportList");
        kotlin.jvm.internal.h.f(reportDetailState, "reportDetailState");
        kotlin.jvm.internal.h.f(reportDetailResult, "reportDetailResult");
        kotlin.jvm.internal.h.f(saveReportState, "saveReportState");
        kotlin.jvm.internal.h.f(saveReportResult, "saveReportResult");
        kotlin.jvm.internal.h.f(mergedReportDetailState, "mergedReportDetailState");
        kotlin.jvm.internal.h.f(mergedReportDetailResult, "mergedReportDetailResult");
        this.f14723a = inProgressReportListState;
        this.f14724b = inProgressReportList;
        this.f14725c = completedReportListState;
        this.f14726d = completedReportList;
        this.f14727e = downloadCompletedReportListState;
        this.f = downloadCompletedReportList;
        this.f14728g = reportDetailState;
        this.f14729h = reportDetailResult;
        this.f14730i = saveReportState;
        this.f14731j = saveReportResult;
        this.f14732k = mergedReportDetailState;
        this.f14733l = mergedReportDetailResult;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ c(r0.b bVar, InProgressReportListModel inProgressReportListModel, r0.b bVar2, CompletedReportListModel completedReportListModel, r0.b bVar3, DownloadCompletedReportModel downloadCompletedReportModel, r0.b bVar4, ReportDetailModel reportDetailModel, r0.b bVar5, SaveReportModel saveReportModel, r0.b bVar6, MergeDetailModel mergeDetailModel, int r31, kotlin.jvm.internal.d dVar) {
        int r12 = r31 & 1;
        r0.b bVar7 = d1.f13733b;
        this(r12 != 0 ? bVar7 : bVar, (r31 & 2) != 0 ? new InProgressReportListModel(null, 0, 0, false, 15, null) : inProgressReportListModel, (r31 & 4) != 0 ? bVar7 : bVar2, (r31 & 8) != 0 ? new CompletedReportListModel(null, 0, 0, false, 15, null) : completedReportListModel, (r31 & 16) != 0 ? bVar7 : bVar3, (r31 & 32) != 0 ? new DownloadCompletedReportModel(null, 0, 0, false, 15, null) : downloadCompletedReportModel, (r31 & 64) != 0 ? bVar7 : bVar4, (r31 & 128) != 0 ? new ReportDetailModel(null, 0, 0, false, 15, null) : reportDetailModel, (r31 & 256) != 0 ? bVar7 : bVar5, (r31 & 512) != 0 ? new SaveReportModel(null, 0, 0, false, 15, null) : saveReportModel, (r31 & 1024) == 0 ? bVar6 : bVar7, (r31 & 2048) != 0 ? new MergeDetailModel(null, 0, 0, false, 15, null) : mergeDetailModel);
    }

    public static c copy$default(c cVar, r0.b bVar, InProgressReportListModel inProgressReportListModel, r0.b bVar2, CompletedReportListModel completedReportListModel, r0.b bVar3, DownloadCompletedReportModel downloadCompletedReportModel, r0.b bVar4, ReportDetailModel reportDetailModel, r0.b bVar5, SaveReportModel saveReportModel, r0.b bVar6, MergeDetailModel mergeDetailModel, int r26, Object obj) {
        r0.b inProgressReportListState = (r26 & 1) != 0 ? cVar.f14723a : bVar;
        InProgressReportListModel inProgressReportList = (r26 & 2) != 0 ? cVar.f14724b : inProgressReportListModel;
        r0.b completedReportListState = (r26 & 4) != 0 ? cVar.f14725c : bVar2;
        CompletedReportListModel completedReportList = (r26 & 8) != 0 ? cVar.f14726d : completedReportListModel;
        r0.b downloadCompletedReportListState = (r26 & 16) != 0 ? cVar.f14727e : bVar3;
        DownloadCompletedReportModel downloadCompletedReportList = (r26 & 32) != 0 ? cVar.f : downloadCompletedReportModel;
        r0.b reportDetailState = (r26 & 64) != 0 ? cVar.f14728g : bVar4;
        ReportDetailModel reportDetailResult = (r26 & 128) != 0 ? cVar.f14729h : reportDetailModel;
        r0.b saveReportState = (r26 & 256) != 0 ? cVar.f14730i : bVar5;
        SaveReportModel saveReportResult = (r26 & 512) != 0 ? cVar.f14731j : saveReportModel;
        r0.b mergedReportDetailState = (r26 & 1024) != 0 ? cVar.f14732k : bVar6;
        MergeDetailModel mergedReportDetailResult = (r26 & 2048) != 0 ? cVar.f14733l : mergeDetailModel;
        cVar.getClass();
        kotlin.jvm.internal.h.f(inProgressReportListState, "inProgressReportListState");
        kotlin.jvm.internal.h.f(inProgressReportList, "inProgressReportList");
        kotlin.jvm.internal.h.f(completedReportListState, "completedReportListState");
        kotlin.jvm.internal.h.f(completedReportList, "completedReportList");
        kotlin.jvm.internal.h.f(downloadCompletedReportListState, "downloadCompletedReportListState");
        kotlin.jvm.internal.h.f(downloadCompletedReportList, "downloadCompletedReportList");
        kotlin.jvm.internal.h.f(reportDetailState, "reportDetailState");
        kotlin.jvm.internal.h.f(reportDetailResult, "reportDetailResult");
        kotlin.jvm.internal.h.f(saveReportState, "saveReportState");
        kotlin.jvm.internal.h.f(saveReportResult, "saveReportResult");
        kotlin.jvm.internal.h.f(mergedReportDetailState, "mergedReportDetailState");
        kotlin.jvm.internal.h.f(mergedReportDetailResult, "mergedReportDetailResult");
        return new c(inProgressReportListState, inProgressReportList, completedReportListState, completedReportList, downloadCompletedReportListState, downloadCompletedReportList, reportDetailState, reportDetailResult, saveReportState, saveReportResult, mergedReportDetailState, mergedReportDetailResult);
    }

    public final r0.b<Result<InProgressReportListModel>> component1() {
        return this.f14723a;
    }

    public final SaveReportModel component10() {
        return this.f14731j;
    }

    public final r0.b<Result<MergeDetailModel>> component11() {
        return this.f14732k;
    }

    public final MergeDetailModel component12() {
        return this.f14733l;
    }

    public final InProgressReportListModel component2() {
        return this.f14724b;
    }

    public final r0.b<Result<CompletedReportListModel>> component3() {
        return this.f14725c;
    }

    public final CompletedReportListModel component4() {
        return this.f14726d;
    }

    public final r0.b<Result<DownloadCompletedReportModel>> component5() {
        return this.f14727e;
    }

    public final DownloadCompletedReportModel component6() {
        return this.f;
    }

    public final r0.b<Result<ReportDetailModel>> component7() {
        return this.f14728g;
    }

    public final ReportDetailModel component8() {
        return this.f14729h;
    }

    public final r0.b<Result<SaveReportModel>> component9() {
        return this.f14730i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return kotlin.jvm.internal.h.a(this.f14723a, cVar.f14723a) && kotlin.jvm.internal.h.a(this.f14724b, cVar.f14724b) && kotlin.jvm.internal.h.a(this.f14725c, cVar.f14725c) && kotlin.jvm.internal.h.a(this.f14726d, cVar.f14726d) && kotlin.jvm.internal.h.a(this.f14727e, cVar.f14727e) && kotlin.jvm.internal.h.a(this.f, cVar.f) && kotlin.jvm.internal.h.a(this.f14728g, cVar.f14728g) && kotlin.jvm.internal.h.a(this.f14729h, cVar.f14729h) && kotlin.jvm.internal.h.a(this.f14730i, cVar.f14730i) && kotlin.jvm.internal.h.a(this.f14731j, cVar.f14731j) && kotlin.jvm.internal.h.a(this.f14732k, cVar.f14732k) && kotlin.jvm.internal.h.a(this.f14733l, cVar.f14733l);
    }

    public final int hashCode() {
        return this.f14733l.hashCode() + androidx.browser.browseractions.b.d(this.f14732k, (this.f14731j.hashCode() + androidx.browser.browseractions.b.d(this.f14730i, (this.f14729h.hashCode() + androidx.browser.browseractions.b.d(this.f14728g, (this.f.hashCode() + androidx.browser.browseractions.b.d(this.f14727e, (this.f14726d.hashCode() + androidx.browser.browseractions.b.d(this.f14725c, (this.f14724b.hashCode() + (this.f14723a.hashCode() * 31)) * 31, 31)) * 31, 31)) * 31, 31)) * 31, 31)) * 31, 31);
    }

    public final String toString() {
        return "MobileAccidentCompletedReportState(inProgressReportListState=" + this.f14723a + ", inProgressReportList=" + this.f14724b + ", completedReportListState=" + this.f14725c + ", completedReportList=" + this.f14726d + ", downloadCompletedReportListState=" + this.f14727e + ", downloadCompletedReportList=" + this.f + ", reportDetailState=" + this.f14728g + ", reportDetailResult=" + this.f14729h + ", saveReportState=" + this.f14730i + ", saveReportResult=" + this.f14731j + ", mergedReportDetailState=" + this.f14732k + ", mergedReportDetailResult=" + this.f14733l + ')';
    }
}
