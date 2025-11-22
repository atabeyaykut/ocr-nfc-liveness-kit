package tr.gov.turkiye.edevlet.kapisi.ui.accident.approve;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.os.BundleKt;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavOptions;
import androidx.navigation.fragment.FragmentKt;
import androidx.view.OnBackPressedCallback;
import androidx.work.BackoffPolicy;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import com.google.android.gms.internal.clearcut.d0;
import io.realm.g0;
import io.realm.q0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import ke.d;
import kotlin.Metadata;
import nc.a0;
import org.greenrobot.eventbus.ThreadMode;
import r0.c1;
import r0.d1;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationGuestRequestData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationGuestRequestInfo;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationGuestRequestModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationGuestRequestObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationHostRequestData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationHostRequestInfo;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationHostRequestModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationHostRequestObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadMediaData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadMediaMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadMediaModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadMediaObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.HostReportLocationData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.HostReportLocationList;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.HostReportLocationMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.HostReportLocationModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.HostReportLocationObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.HostReportLocationSubData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MediaListData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MediaListDataArray;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MediaListDataItem;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MediaListInfo;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MediaListMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MediaListModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MediaListObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.PartiesObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ReportDetailData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ReportDetailMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ReportDetailModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ReportDetailSubData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportMainInfo;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportSubData;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.ui.PreviewImageItemUIController;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentApprovalBinding;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.policy.ui.PolicyListModel_;
import yd.a;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007¨\u0006\t"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;", "Lse/a;", NotificationCompat.CATEGORY_EVENT, "Ll9/m;", "onEvent", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentApproveFragment extends ee.a implements PreviewImageItemUIController.a {

    /* renamed from: s, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f16969s = {androidx.room.util.a.b(MobileAccidentApproveFragment.class, "mApprovalBinding", "getMApprovalBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;"), androidx.room.util.a.b(MobileAccidentApproveFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public AccidentMergedReport f16970a;

    /* renamed from: b, reason: collision with root package name */
    public MKTAccidentReport f16971b;

    /* renamed from: c, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16972c;

    /* renamed from: d, reason: collision with root package name */
    public final l9.e f16973d;

    /* renamed from: e, reason: collision with root package name */
    public v.e f16974e;
    public Context f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f16975g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f16976h;

    /* renamed from: j, reason: collision with root package name */
    public PreviewImageItemUIController f16977j;

    /* renamed from: k, reason: collision with root package name */
    public zg.a f16978k;

    /* renamed from: l, reason: collision with root package name */
    public zg.a f16979l;

    /* renamed from: m, reason: collision with root package name */
    public eg.i f16980m;

    /* renamed from: n, reason: collision with root package name */
    public String f16981n;

    /* renamed from: p, reason: collision with root package name */
    public String f16982p;

    /* renamed from: q, reason: collision with root package name */
    public int f16983q;

    /* renamed from: r, reason: collision with root package name */
    public int f16984r;

    public static final class a extends kotlin.jvm.internal.j implements x9.l<zg.k, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f16985a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(zg.k kVar) {
            zg.k state = kVar;
            kotlin.jvm.internal.h.f(state, "state");
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends kotlin.jvm.internal.g implements x9.l<View, FragmentApprovalBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16986a = new b();

        public b() {
            super(1, FragmentApprovalBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;", 0);
        }

        @Override // x9.l
        public final FragmentApprovalBinding invoke(View view) {
            View p02 = view;
            kotlin.jvm.internal.h.f(p02, "p0");
            return FragmentApprovalBinding.bind(p02);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment$onCreate$12", f = "MobileAccidentApproveFragment.kt", l = {}, m = "invokeSuspend")
    public static final class e extends r9.i implements x9.q<r0.b<? extends Result<DownloadMediaModel>>, zg.a, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ r0.b f16989a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ zg.a f16990b;

        public e(p9.d<? super e> dVar) {
            super(3, dVar);
        }

        @Override // x9.q
        public final Object i(r0.b<? extends Result<DownloadMediaModel>> bVar, zg.a aVar, p9.d<? super l9.m> dVar) {
            e eVar = MobileAccidentApproveFragment.this.new e(dVar);
            eVar.f16989a = bVar;
            eVar.f16990b = aVar;
            return eVar.invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            int r52;
            MediaListInfo map;
            DownloadMediaObject downloadMediaObject;
            DownloadMediaMap downloadMediaMap;
            MobileAccidentApproveFragment mobileAccidentApproveFragment = MobileAccidentApproveFragment.this;
            c5.w.F(obj);
            r0.b bVar = this.f16989a;
            zg.a aVar = this.f16990b;
            if (bVar instanceof d1 ? true : bVar instanceof r0.k) {
                yd.a.f19652a.c("Loading mediaDownload ***", new Object[0]);
            } else if (bVar instanceof c1) {
                yd.a.f19652a.c("success mediaDownload ***", new Object[0]);
                try {
                    DownloadMediaData downloadMediaData = ((DownloadMediaModel) ((Result) ((c1) bVar).f13723b).getOrThrow()).getDownloadMediaData();
                    String name = null;
                    String downloadMediaData2 = (downloadMediaData == null || (downloadMediaObject = downloadMediaData.getDownloadMediaObject()) == null || (downloadMediaMap = downloadMediaObject.getDownloadMediaMap()) == null) ? null : downloadMediaMap.getDownloadMediaData();
                    if (downloadMediaData2 != null) {
                        ArrayList arrayList = mobileAccidentApproveFragment.f16976h;
                        if ((arrayList instanceof Collection) && arrayList.isEmpty()) {
                            r52 = 0;
                        } else {
                            Iterator it = arrayList.iterator();
                            r52 = 0;
                            while (it.hasNext()) {
                                if (kotlin.jvm.internal.h.a(((zg.a) it.next()).f20292a, aVar.f20292a) && (r52 = r52 + 1) < 0) {
                                    throw new ArithmeticException("Count overflow has happened.");
                                }
                            }
                        }
                        ArrayList arrayList2 = mobileAccidentApproveFragment.f16976h;
                        if (r52 == 0) {
                            a.C0306a c0306a = yd.a.f19652a;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Media name ");
                            MediaListDataItem mediaListDataItem = aVar.f20292a;
                            if (mediaListDataItem != null && (map = mediaListDataItem.getMap()) != null) {
                                name = map.getName();
                            }
                            sb2.append(name);
                            c0306a.c(sb2.toString(), new Object[0]);
                            arrayList2.add(new zg.a(aVar.f20292a, downloadMediaData2));
                        }
                        yd.a.f19652a.c("size " + arrayList2.size(), new Object[0]);
                        if (arrayList2.size() == mobileAccidentApproveFragment.f16984r) {
                            v.e eVar = mobileAccidentApproveFragment.f16974e;
                            if (eVar != null) {
                                eVar.dismiss();
                            }
                            mobileAccidentApproveFragment.L();
                            mobileAccidentApproveFragment.J();
                        }
                    }
                } catch (Exception unused) {
                }
            } else if (bVar instanceof r0.i) {
                yd.a.f19652a.c("Error mediaDownload ***", new Object[0]);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment$onCreate$14", f = "MobileAccidentApproveFragment.kt", l = {}, m = "invokeSuspend")
    public static final class g extends r9.i implements x9.p<r0.b<? extends Result<ConfirmationHostRequestModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f16993a;

        public g(p9.d<? super g> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            g gVar = MobileAccidentApproveFragment.this.new g(dVar);
            gVar.f16993a = obj;
            return gVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(r0.b<? extends Result<ConfirmationHostRequestModel>> bVar, p9.d<? super l9.m> dVar) {
            return ((g) create(bVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            ConfirmationHostRequestObject confirmationHostRequestObject;
            ConfirmationHostRequestInfo confirmationHostRequestInfo;
            v.e eVar;
            v.e eVar2;
            c5.w.F(obj);
            r0.b bVar = (r0.b) this.f16993a;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof r0.k;
            MobileAccidentApproveFragment mobileAccidentApproveFragment = MobileAccidentApproveFragment.this;
            if (z10) {
                yd.a.f19652a.c("Loading confirmationRequest ***", new Object[0]);
                v.e eVar3 = mobileAccidentApproveFragment.f16974e;
                if (((eVar3 == null || eVar3.isShowing()) ? false : true) && (eVar2 = mobileAccidentApproveFragment.f16974e) != null) {
                    eVar2.show();
                }
            } else if (bVar instanceof c1) {
                yd.a.f19652a.c("success confirmationRequest ***", new Object[0]);
                v.e eVar4 = mobileAccidentApproveFragment.f16974e;
                if ((eVar4 != null && eVar4.isShowing()) && (eVar = mobileAccidentApproveFragment.f16974e) != null) {
                    eVar.dismiss();
                }
                try {
                    ConfirmationHostRequestData confirmationHostRequestData = ((ConfirmationHostRequestModel) ((Result) ((c1) bVar).f13723b).getOrThrow()).getConfirmationHostRequestData();
                    if (kotlin.jvm.internal.h.a((confirmationHostRequestData == null || (confirmationHostRequestObject = confirmationHostRequestData.getConfirmationHostRequestObject()) == null || (confirmationHostRequestInfo = confirmationHostRequestObject.getConfirmationHostRequestInfo()) == null) ? null : Boolean.valueOf(confirmationHostRequestInfo.getStatus()), Boolean.TRUE)) {
                        FragmentKt.findNavController(mobileAccidentApproveFragment).navigate(R.id.mktResultFragment, (Bundle) null, new NavOptions.Builder().setPopUpTo(R.id.mktIntroductionFragment, false).build());
                    }
                } catch (Exception unused) {
                }
            } else if (bVar instanceof r0.i) {
                MobileAccidentApproveFragment.F(mobileAccidentApproveFragment, ((r0.i) bVar).f13749b);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment$onCreate$16", f = "MobileAccidentApproveFragment.kt", l = {}, m = "invokeSuspend")
    public static final class i extends r9.i implements x9.p<r0.b<? extends Result<ConfirmationGuestRequestModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f16996a;

        public i(p9.d<? super i> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            i iVar = MobileAccidentApproveFragment.this.new i(dVar);
            iVar.f16996a = obj;
            return iVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(r0.b<? extends Result<ConfirmationGuestRequestModel>> bVar, p9.d<? super l9.m> dVar) {
            return ((i) create(bVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            ConfirmationGuestRequestObject confirmationGuestRequestObject;
            ConfirmationGuestRequestInfo confirmationGuestRequestInfo;
            v.e eVar;
            v.e eVar2;
            c5.w.F(obj);
            r0.b bVar = (r0.b) this.f16996a;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof r0.k;
            MobileAccidentApproveFragment mobileAccidentApproveFragment = MobileAccidentApproveFragment.this;
            if (z10) {
                yd.a.f19652a.c("Loading confirmationRequest ***", new Object[0]);
                v.e eVar3 = mobileAccidentApproveFragment.f16974e;
                if (((eVar3 == null || eVar3.isShowing()) ? false : true) && (eVar2 = mobileAccidentApproveFragment.f16974e) != null) {
                    eVar2.show();
                }
            } else if (bVar instanceof c1) {
                a.C0306a c0306a = yd.a.f19652a;
                c0306a.c("success confirmationRequest ***", new Object[0]);
                v.e eVar4 = mobileAccidentApproveFragment.f16974e;
                if ((eVar4 != null && eVar4.isShowing()) && (eVar = mobileAccidentApproveFragment.f16974e) != null) {
                    eVar.dismiss();
                }
                try {
                    ConfirmationGuestRequestData confirmationGuestRequestData = ((ConfirmationGuestRequestModel) ((Result) ((c1) bVar).f13723b).getOrThrow()).getConfirmationGuestRequestData();
                    if (kotlin.jvm.internal.h.a((confirmationGuestRequestData == null || (confirmationGuestRequestObject = confirmationGuestRequestData.getConfirmationGuestRequestObject()) == null || (confirmationGuestRequestInfo = confirmationGuestRequestObject.getConfirmationGuestRequestInfo()) == null) ? null : Boolean.valueOf(confirmationGuestRequestInfo.getStatus()), Boolean.TRUE)) {
                        c0306a.c("save report before ***", new Object[0]);
                        zg.l lVarI = mobileAccidentApproveFragment.I();
                        MKTAccidentReport mKTAccidentReport = mobileAccidentApproveFragment.f16971b;
                        String id2 = mKTAccidentReport != null ? mKTAccidentReport.getId() : null;
                        kotlin.jvm.internal.h.c(id2);
                        AccidentMergedReport accidentMergedReport = mobileAccidentApproveFragment.f16970a;
                        String reportId = accidentMergedReport != null ? accidentMergedReport.getReportId() : null;
                        kotlin.jvm.internal.h.c(reportId);
                        AccidentMergedReport accidentMergedReport2 = mobileAccidentApproveFragment.f16970a;
                        String reportId2 = accidentMergedReport2 != null ? accidentMergedReport2.getReportId() : null;
                        kotlin.jvm.internal.h.c(reportId2);
                        lVarI.e(id2, reportId, reportId2);
                    }
                } catch (Exception unused) {
                }
            } else if (bVar instanceof r0.i) {
                yd.a.f19652a.c("Error confirmationRequest ***", new Object[0]);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment$onCreate$18", f = "MobileAccidentApproveFragment.kt", l = {}, m = "invokeSuspend")
    public static final class k extends r9.i implements x9.p<r0.b<? extends Result<SaveReportModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f16999a;

        public k(p9.d<? super k> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            k kVar = MobileAccidentApproveFragment.this.new k(dVar);
            kVar.f16999a = obj;
            return kVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(r0.b<? extends Result<SaveReportModel>> bVar, p9.d<? super l9.m> dVar) {
            return ((k) create(bVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            SaveReportSubData saveReportSubData;
            SaveReportMainInfo saveReportMainInfo;
            SaveReportObject saveReportObject;
            v.e eVar;
            v.e eVar2;
            c5.w.F(obj);
            r0.b bVar = (r0.b) this.f16999a;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof r0.k;
            MobileAccidentApproveFragment mobileAccidentApproveFragment = MobileAccidentApproveFragment.this;
            if (z10) {
                yd.a.f19652a.c("Loading saveReport ***", new Object[0]);
                v.e eVar3 = mobileAccidentApproveFragment.f16974e;
                if (((eVar3 == null || eVar3.isShowing()) ? false : true) && (eVar2 = mobileAccidentApproveFragment.f16974e) != null) {
                    eVar2.show();
                }
            } else if (bVar instanceof c1) {
                yd.a.f19652a.c("success saveReport ***", new Object[0]);
                v.e eVar4 = mobileAccidentApproveFragment.f16974e;
                if ((eVar4 != null && eVar4.isShowing()) && (eVar = mobileAccidentApproveFragment.f16974e) != null) {
                    eVar.dismiss();
                }
                try {
                    SaveReportData saveReportData = ((SaveReportModel) ((Result) ((c1) bVar).f13723b).getOrThrow()).getSaveReportData();
                    Long l5 = null;
                    SaveReportMap saveReportMap = (saveReportData == null || (saveReportObject = saveReportData.getSaveReportObject()) == null) ? null : saveReportObject.getSaveReportMap();
                    if (saveReportMap != null && (saveReportSubData = saveReportMap.getSaveReportSubData()) != null && (saveReportMainInfo = saveReportSubData.getSaveReportMainInfo()) != null) {
                        l5 = new Long(saveReportMainInfo.getReportNumber());
                    }
                    if (l5 != null) {
                        FragmentKt.findNavController(mobileAccidentApproveFragment).navigate(R.id.mktResultFragment, BundleKt.bundleOf(new l9.g("reportNumber", new Long(saveReportMap.getSaveReportSubData().getSaveReportMainInfo().getReportNumber()))), new NavOptions.Builder().setPopUpTo(R.id.mktIntroductionFragment, false).build());
                    }
                } catch (Exception unused) {
                }
            } else if (bVar instanceof r0.i) {
                MobileAccidentApproveFragment.F(mobileAccidentApproveFragment, ((r0.i) bVar).f13749b);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment$onCreate$3", f = "MobileAccidentApproveFragment.kt", l = {}, m = "invokeSuspend")
    public static final class n extends r9.i implements x9.q<r0.b<? extends Result<ReportDetailModel>>, ReportDetailModel, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ r0.b f17003a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ ReportDetailModel f17004b;

        public n(p9.d<? super n> dVar) {
            super(3, dVar);
        }

        @Override // x9.q
        public final Object i(r0.b<? extends Result<ReportDetailModel>> bVar, ReportDetailModel reportDetailModel, p9.d<? super l9.m> dVar) {
            n nVar = MobileAccidentApproveFragment.this.new n(dVar);
            nVar.f17003a = bVar;
            nVar.f17004b = reportDetailModel;
            return nVar.invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q0<AccidentReportParticipant> participants;
            String reportPartyId;
            PartiesObject partiesObject;
            ReportDetailMap reportDetailMap;
            ReportDetailSubData reportDetailSubData;
            c5.w.F(obj);
            r0.b bVar = this.f17003a;
            ReportDetailModel reportDetailModel = this.f17004b;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof r0.k;
            MobileAccidentApproveFragment mobileAccidentApproveFragment = MobileAccidentApproveFragment.this;
            if (z10) {
                MobileAccidentApproveFragment.G(mobileAccidentApproveFragment);
                yd.a.f19652a.c("Loading details", new Object[0]);
            } else if (bVar instanceof c1) {
                a.C0306a c0306a = yd.a.f19652a;
                c0306a.c("Success details", new Object[0]);
                ReportDetailData reportDetailData = reportDetailModel.getReportDetailData();
                mobileAccidentApproveFragment.f16980m = (reportDetailData == null || (partiesObject = reportDetailData.getPartiesObject()) == null || (reportDetailMap = partiesObject.getReportDetailMap()) == null || (reportDetailSubData = reportDetailMap.getReportDetailSubData()) == null) ? null : reportDetailSubData.getReportDetailMainInfo();
                StringBuilder sb2 = new StringBuilder("Report Role ");
                eg.i iVar = mobileAccidentApproveFragment.f16980m;
                sb2.append(iVar != null ? iVar.g() : null);
                c0306a.c(sb2.toString(), new Object[0]);
                eg.i iVar2 = mobileAccidentApproveFragment.f16980m;
                if (kotlin.jvm.internal.h.a(iVar2 != null ? iVar2.g() : null, "GUEST")) {
                    g0 g0VarT = g0.t();
                    g0VarT.m();
                    MKTAccidentReport mKTAccidentReport = (MKTAccidentReport) g0VarT.J(MKTAccidentReport.class).e();
                    mobileAccidentApproveFragment.f16971b = mKTAccidentReport;
                    if (mKTAccidentReport != null) {
                        AccidentMergedReport report = mKTAccidentReport.getReport();
                        mobileAccidentApproveFragment.f16970a = report;
                        if (report != null && (participants = report.getParticipants()) != null) {
                            Iterator<AccidentReportParticipant> it = participants.iterator();
                            while (it.hasNext()) {
                                AccidentReportParticipant next = it.next();
                                if (kotlin.jvm.internal.h.a(next.getPartyRole(), "HOST") && (reportPartyId = next.getReportPartyId()) != null) {
                                    zg.l lVarI = mobileAccidentApproveFragment.I();
                                    lVarI.getClass();
                                    zg.q qVar = new zg.q(lVarI, reportPartyId, null);
                                    a0 a0Var = lVarI.f13883c;
                                    c5.v.C(a0Var, null, 0, qVar, 3);
                                    c5.v.D(a0Var, lVarI.f20370i, new zg.r(lVarI, null));
                                }
                            }
                        }
                    }
                } else {
                    mobileAccidentApproveFragment.I().d();
                }
            } else if (bVar instanceof r0.i) {
                MobileAccidentApproveFragment.E(mobileAccidentApproveFragment, ((r0.i) bVar).f13749b);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment$onCreate$6", f = "MobileAccidentApproveFragment.kt", l = {}, m = "invokeSuspend")
    public static final class q extends r9.i implements x9.q<r0.b<? extends Result<HostReportLocationModel>>, HostReportLocationModel, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ r0.b f17008a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ HostReportLocationModel f17009b;

        public q(p9.d<? super q> dVar) {
            super(3, dVar);
        }

        @Override // x9.q
        public final Object i(r0.b<? extends Result<HostReportLocationModel>> bVar, HostReportLocationModel hostReportLocationModel, p9.d<? super l9.m> dVar) {
            q qVar = MobileAccidentApproveFragment.this.new q(dVar);
            qVar.f17008a = bVar;
            qVar.f17009b = hostReportLocationModel;
            return qVar.invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            HostReportLocationObject getLocationObject;
            HostReportLocationMap hostReportLocationMap;
            HostReportLocationSubData hostReportLocationSubData;
            c5.w.F(obj);
            r0.b bVar = this.f17008a;
            HostReportLocationModel hostReportLocationModel = this.f17009b;
            boolean z10 = true;
            boolean z11 = bVar instanceof d1 ? true : bVar instanceof r0.k;
            MobileAccidentApproveFragment mobileAccidentApproveFragment = MobileAccidentApproveFragment.this;
            if (z11) {
                MobileAccidentApproveFragment.G(mobileAccidentApproveFragment);
                yd.a.f19652a.c("Loading host location", new Object[0]);
            } else if (bVar instanceof c1) {
                yd.a.f19652a.c("Success host location", new Object[0]);
                HostReportLocationData hostReportLocationData = hostReportLocationModel.getHostReportLocationData();
                List<HostReportLocationList> hostReportLocationList = (hostReportLocationData == null || (getLocationObject = hostReportLocationData.getGetLocationObject()) == null || (hostReportLocationMap = getLocationObject.getHostReportLocationMap()) == null || (hostReportLocationSubData = hostReportLocationMap.getHostReportLocationSubData()) == null) ? null : hostReportLocationSubData.getHostReportLocationList();
                List<HostReportLocationList> list = hostReportLocationList;
                if (list != null && !list.isEmpty()) {
                    z10 = false;
                }
                if (!z10) {
                    mobileAccidentApproveFragment.f16982p = hostReportLocationList.get(0).getHostReportLocationListItem().getAccidentAddress();
                }
                da.m<Object>[] mVarArr = MobileAccidentApproveFragment.f16969s;
                mobileAccidentApproveFragment.I().d();
            } else if (bVar instanceof r0.i) {
                MobileAccidentApproveFragment.E(mobileAccidentApproveFragment, ((r0.i) bVar).f13749b);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment$onCreate$9", f = "MobileAccidentApproveFragment.kt", l = {}, m = "invokeSuspend")
    public static final class t extends r9.i implements x9.q<r0.b<? extends Result<MediaListModel>>, MediaListModel, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ r0.b f17013a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ MediaListModel f17014b;

        public t(p9.d<? super t> dVar) {
            super(3, dVar);
        }

        @Override // x9.q
        public final Object i(r0.b<? extends Result<MediaListModel>> bVar, MediaListModel mediaListModel, p9.d<? super l9.m> dVar) {
            t tVar = MobileAccidentApproveFragment.this.new t(dVar);
            tVar.f17013a = bVar;
            tVar.f17014b = mediaListModel;
            return tVar.invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            MediaListObject mediaListObject;
            MediaListMap mediaListMap;
            MediaListDataArray mediaListData;
            c5.w.F(obj);
            r0.b bVar = this.f17013a;
            MediaListModel mediaListModel = this.f17014b;
            if (bVar instanceof d1 ? true : bVar instanceof r0.k) {
                yd.a.f19652a.c("Loading mediaList ***", new Object[0]);
            } else {
                boolean z10 = bVar instanceof c1;
                MobileAccidentApproveFragment mobileAccidentApproveFragment = MobileAccidentApproveFragment.this;
                if (z10) {
                    yd.a.f19652a.c("Success mediaList ***", new Object[0]);
                    MediaListData mediaListData2 = mediaListModel.getMediaListData();
                    List<MediaListDataItem> mediaList = (mediaListData2 == null || (mediaListObject = mediaListData2.getMediaListObject()) == null || (mediaListMap = mediaListObject.getMediaListMap()) == null || (mediaListData = mediaListMap.getMediaListData()) == null) ? null : mediaListData.getMediaList();
                    List<MediaListDataItem> list = mediaList;
                    if (!(list == null || list.isEmpty())) {
                        mobileAccidentApproveFragment.f16984r = mediaList.size();
                        for (MediaListDataItem mediaListDataItem : mediaList) {
                            mobileAccidentApproveFragment.f16976h.add(new zg.a(mediaListDataItem, null));
                            Context context = mobileAccidentApproveFragment.f;
                            if (context != null) {
                                l9.g[] gVarArr = {new l9.g("mediaId", mediaListDataItem.getMap().getId()), new l9.g("partyId", mobileAccidentApproveFragment.f16981n), new l9.g("mediaName", mediaListDataItem.getMap().getName())};
                                Data.Builder builder = new Data.Builder();
                                int r92 = 0;
                                while (r92 < 3) {
                                    l9.g gVar = gVarArr[r92];
                                    r92++;
                                    builder.put((String) gVar.f9582a, gVar.f9583b);
                                }
                                Data dataBuild = builder.build();
                                kotlin.jvm.internal.h.e(dataBuild, "dataBuilder.build()");
                                OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(DownloadMediaWorker.class).setInputData(dataBuild).setBackoffCriteria(BackoffPolicy.LINEAR, 1000L, TimeUnit.MILLISECONDS).build();
                                kotlin.jvm.internal.h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…                ).build()");
                                WorkManager.getInstance(context).enqueue(oneTimeWorkRequestBuild);
                            }
                        }
                    }
                } else if (bVar instanceof r0.i) {
                    yd.a.f19652a.c("Error save mediaList ***", new Object[0]);
                    int r02 = mobileAccidentApproveFragment.f16983q;
                    if (r02 <= 2) {
                        mobileAccidentApproveFragment.f16983q = r02 + 1;
                        mobileAccidentApproveFragment.I().d();
                    } else {
                        MobileAccidentApproveFragment.E(mobileAccidentApproveFragment, ((r0.i) bVar).f13749b);
                    }
                }
            }
            return l9.m.f9594a;
        }
    }

    public static final class u extends OnBackPressedCallback {

        public static final class a extends kotlin.jvm.internal.j implements x9.l<v.e, l9.m> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentApproveFragment f17017a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(MobileAccidentApproveFragment mobileAccidentApproveFragment) {
                super(1);
                this.f17017a = mobileAccidentApproveFragment;
            }

            @Override // x9.l
            public final l9.m invoke(v.e eVar) {
                v.e dialog = eVar;
                kotlin.jvm.internal.h.f(dialog, "dialog");
                dialog.dismiss();
                FragmentKt.findNavController(this.f17017a).navigate(R.id.mktIntroductionFragment, (Bundle) null, new NavOptions.Builder().setPopUpTo(R.id.navigation_home, false).build());
                return l9.m.f9594a;
            }
        }

        public static final class b extends kotlin.jvm.internal.j implements x9.l<v.e, l9.m> {

            /* renamed from: a, reason: collision with root package name */
            public static final b f17018a = new b();

            public b() {
                super(1);
            }

            @Override // x9.l
            public final l9.m invoke(v.e eVar) {
                v.e dialog = eVar;
                kotlin.jvm.internal.h.f(dialog, "dialog");
                dialog.dismiss();
                return l9.m.f9594a;
            }
        }

        public u() {
            super(true);
        }

        @Override // androidx.view.OnBackPressedCallback
        public final void handleOnBackPressed() {
            MobileAccidentApproveFragment mobileAccidentApproveFragment = MobileAccidentApproveFragment.this;
            Context context = mobileAccidentApproveFragment.f;
            if (context != null) {
                v.e eVar = new v.e(context);
                v.e.f(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_title), null, 2);
                v.e.c(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_description), null, 6);
                v.e.e(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_positive_button), null, new a(mobileAccidentApproveFragment), 2);
                v.e.d(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_negative_button), b.f17018a);
                eVar.show();
            }
        }
    }

    public static final class v extends kotlin.jvm.internal.j implements x9.l<com.airbnb.epoxy.p, l9.m> {
        public v() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(com.airbnb.epoxy.p pVar) {
            AccidentReportVehicle vehicle;
            q0<AccidentReportPolicy> policies;
            AccidentReportVehicle vehicle2;
            q0<AccidentReportPolicy> policies2;
            com.airbnb.epoxy.p withModels = pVar;
            kotlin.jvm.internal.h.f(withModels, "$this$withModels");
            MobileAccidentApproveFragment mobileAccidentApproveFragment = MobileAccidentApproveFragment.this;
            MKTAccidentReport mKTAccidentReport = mobileAccidentApproveFragment.f16971b;
            Integer numValueOf = (mKTAccidentReport == null || (vehicle2 = mKTAccidentReport.getVehicle()) == null || (policies2 = vehicle2.getPolicies()) == null) ? null : Integer.valueOf(policies2.size());
            MKTAccidentReport mKTAccidentReport2 = mobileAccidentApproveFragment.f16971b;
            if (mKTAccidentReport2 != null && (vehicle = mKTAccidentReport2.getVehicle()) != null && (policies = vehicle.getPolicies()) != null) {
                Iterator<AccidentReportPolicy> it = policies.iterator();
                int r32 = 0;
                while (it.hasNext()) {
                    AccidentReportPolicy next = it.next();
                    int r52 = r32 + 1;
                    if (r32 < 0) {
                        b8.f.k0();
                        throw null;
                    }
                    AccidentReportPolicy accidentReportPolicy = next;
                    PolicyListModel_ policyListModel_ = new PolicyListModel_();
                    policyListModel_.mo446id((CharSequence) accidentReportPolicy.getId());
                    policyListModel_.policyItem(accidentReportPolicy);
                    policyListModel_.isDivider((numValueOf == null || r32 != numValueOf.intValue() + (-1)) ? "SHOW" : "HIDE");
                    withModels.add(policyListModel_);
                    r32 = r52;
                }
            }
            return l9.m.f9594a;
        }
    }

    public static final class w extends kotlin.jvm.internal.j implements x9.l<v.e, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public static final w f17020a = new w();

        public w() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(v.e eVar) {
            v.e dialog = eVar;
            kotlin.jvm.internal.h.f(dialog, "dialog");
            dialog.dismiss();
            return l9.m.f9594a;
        }
    }

    public static final class x extends kotlin.jvm.internal.j implements x9.l<r0.q<zg.l, zg.k>, zg.l> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17021a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17022b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17023c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public x(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17021a = fragment;
            this.f17022b = dVar;
            this.f17023c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [r0.z, zg.l] */
        @Override // x9.l
        public final zg.l invoke(r0.q<zg.l, zg.k> qVar) {
            r0.q<zg.l, zg.k> stateFactory = qVar;
            kotlin.jvm.internal.h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17022b);
            Fragment fragment = this.f17021a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            kotlin.jvm.internal.h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17023c, clsQ, zg.k.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class y extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17024a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ x9.l f17025b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17026c;

        public y(da.d dVar, x xVar, da.d dVar2) {
            this.f17024a = dVar;
            this.f17025b = xVar;
            this.f17026c = dVar2;
        }

        public final l9.e t(Object obj, da.m property) {
            Fragment thisRef = (Fragment) obj;
            kotlin.jvm.internal.h.f(thisRef, "thisRef");
            kotlin.jvm.internal.h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17024a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.a(this), kotlin.jvm.internal.w.a(zg.k.class), this.f17025b);
        }
    }

    public MobileAccidentApproveFragment() {
        super(R.layout.fragment_approval);
        this.f16972c = d0.C(this, b.f16986a);
        da.d dVarA = kotlin.jvm.internal.w.a(zg.l.class);
        this.f16973d = new y(dVarA, new x(this, dVarA, dVarA), dVarA).t(this, f16969s[1]);
        this.f16975g = new ArrayList();
        this.f16976h = new ArrayList();
    }

    public static final void E(MobileAccidentApproveFragment mobileAccidentApproveFragment, Throwable th2) {
        v.e eVar = mobileAccidentApproveFragment.f16974e;
        if (eVar != null) {
            eVar.dismiss();
        }
        if (th2 instanceof LoginException) {
            Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
            if (Build.VERSION.SDK_INT >= 34) {
                intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            mobileAccidentApproveFragment.startActivity(intentB);
            FragmentActivity activity = mobileAccidentApproveFragment.getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        if (th2 instanceof NetworkErrorException) {
            mobileAccidentApproveFragment.H().f.setVisibility(8);
            mobileAccidentApproveFragment.H().f17086n.f15878a.setVisibility(8);
            mobileAccidentApproveFragment.H().f17079g.f15873a.setVisibility(0);
            mobileAccidentApproveFragment.H().f17079g.f15874b.setOnClickListener(new ie.d(10, mobileAccidentApproveFragment));
            return;
        }
        if (!(th2 instanceof ServiceErrorExceptionWithMessage)) {
            mobileAccidentApproveFragment.H().f.setVisibility(8);
            mobileAccidentApproveFragment.H().f17079g.f15873a.setVisibility(8);
            mobileAccidentApproveFragment.H().f17086n.f15878a.setVisibility(0);
            return;
        }
        String errorMessage = ((ServiceErrorExceptionWithMessage) th2).getErrorMessage();
        mobileAccidentApproveFragment.H().f.setVisibility(8);
        mobileAccidentApproveFragment.H().f17079g.f15873a.setVisibility(8);
        mobileAccidentApproveFragment.H().f17086n.f15878a.setVisibility(0);
        if (errorMessage == null || errorMessage.length() == 0) {
            return;
        }
        mobileAccidentApproveFragment.H().f17086n.f15880c.setText(errorMessage);
    }

    public static final void F(MobileAccidentApproveFragment mobileAccidentApproveFragment, Throwable th2) {
        v.e eVar = mobileAccidentApproveFragment.f16974e;
        if (eVar != null) {
            eVar.dismiss();
        }
        if (th2 instanceof LoginException) {
            Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
            if (Build.VERSION.SDK_INT >= 34) {
                intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            mobileAccidentApproveFragment.startActivity(intentB);
            FragmentActivity activity = mobileAccidentApproveFragment.getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        if (th2 instanceof NetworkErrorException) {
            Context context = mobileAccidentApproveFragment.f;
            if (context != null) {
                int r02 = ke.d.f8929a;
                NestedScrollView nestedScrollView = mobileAccidentApproveFragment.H().f17078e;
                kotlin.jvm.internal.h.e(nestedScrollView, "mApprovalBinding.mktApprovalPageParentContainer");
                ke.d dVarE = d.a.e(nestedScrollView, R.string.connection_error_info, null, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
                if (dVarE != null) {
                    dVarE.show();
                    return;
                }
                return;
            }
            return;
        }
        String errorMessage = th2 instanceof ServiceErrorExceptionWithMessage ? ((ServiceErrorExceptionWithMessage) th2).getErrorMessage() : null;
        Context context2 = mobileAccidentApproveFragment.f;
        if (context2 != null) {
            if (errorMessage == null || errorMessage.length() == 0) {
                errorMessage = mobileAccidentApproveFragment.getString(R.string.service_error_info);
            }
            kotlin.jvm.internal.h.e(errorMessage, "if (errorMessage.isNullO…rrorMessage\n            }");
            int r03 = ke.d.f8929a;
            NestedScrollView nestedScrollView2 = mobileAccidentApproveFragment.H().f17078e;
            kotlin.jvm.internal.h.e(nestedScrollView2, "mApprovalBinding.mktApprovalPageParentContainer");
            ke.d dVarB = d.a.b(nestedScrollView2, errorMessage, ContextCompat.getColor(context2, R.color.error_color));
            if (dVarB != null) {
                dVarB.show();
            }
        }
    }

    public static final void G(MobileAccidentApproveFragment mobileAccidentApproveFragment) {
        mobileAccidentApproveFragment.H().f17078e.setVisibility(8);
        mobileAccidentApproveFragment.H().f17079g.f15873a.setVisibility(8);
        mobileAccidentApproveFragment.H().f17086n.f15878a.setVisibility(8);
        v.e eVar = mobileAccidentApproveFragment.f16974e;
        if (eVar != null) {
            eVar.show();
        }
    }

    public final FragmentApprovalBinding H() {
        return (FragmentApprovalBinding) this.f16972c.a(this, f16969s[0]);
    }

    public final zg.l I() {
        return (zg.l) this.f16973d.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x01d4 A[PHI: r1 r5
      0x01d4: PHI (r1v56 java.lang.String) = (r1v53 java.lang.String), (r1v58 java.lang.String) binds: [B:104:0x01ae, B:109:0x01d2] A[DONT_GENERATE, DONT_INLINE]
      0x01d4: PHI (r5v13 android.widget.TextView) = (r5v10 android.widget.TextView), (r5v19 android.widget.TextView) binds: [B:104:0x01ae, B:109:0x01d2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01d9 A[PHI: r5
      0x01d9: PHI (r5v11 android.widget.TextView) = (r5v10 android.widget.TextView), (r5v19 android.widget.TextView) binds: [B:104:0x01ae, B:109:0x01d2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0158 A[PHI: r1
      0x0158: PHI (r1v59 eg.m) = (r1v34 eg.m), (r1v67 eg.m) binds: [B:85:0x0156, B:61:0x0115] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void J() {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment.J():void");
    }

    public final void K(byte[] bArr) {
        Context context = this.f;
        if (context != null) {
            Object systemService = context.getSystemService("layout_inflater");
            kotlin.jvm.internal.h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.image_preview_dialog, (ViewGroup) null);
            kotlin.jvm.internal.h.e(viewInflate, "inflater.inflate(R.layou…age_preview_dialog, null)");
            ImageView dialogText = (ImageView) viewInflate.findViewById(R.id.img_preview_dialog);
            kotlin.jvm.internal.h.e(dialogText, "dialogText");
            ge.b.b(dialogText, bArr);
            v.e eVar = new v.e(context);
            c5.u.n(eVar, viewInflate);
            eVar.show();
            eVar.b(false);
            v.e.e(eVar, Integer.valueOf(R.string.button_text_close), null, null, 6);
            v.e.e(eVar, null, null, w.f17020a, 3);
        }
    }

    public final void L() {
        v.e eVar = this.f16974e;
        if (eVar != null) {
            eVar.dismiss();
        }
        H().f17086n.f15878a.setVisibility(8);
        H().f17079g.f15873a.setVisibility(8);
        H().f17078e.setVisibility(0);
    }

    public final void M() {
        zg.a aVar = this.f16978k;
        if (kotlin.jvm.internal.h.a(aVar != null ? aVar.f20293b : null, "")) {
            AppCompatImageView appCompatImageView = H().f17076c;
            kotlin.jvm.internal.h.e(appCompatImageView, "mApprovalBinding.imgHitPoint");
            ge.b.a(appCompatImageView, R.drawable.mkt_broken_media);
            return;
        }
        zg.a aVar2 = this.f16978k;
        byte[] contentArray = Base64.decode(aVar2 != null ? aVar2.f20293b : null, 2);
        AppCompatImageView appCompatImageView2 = H().f17076c;
        kotlin.jvm.internal.h.e(appCompatImageView2, "mApprovalBinding.imgHitPoint");
        kotlin.jvm.internal.h.e(contentArray, "contentArray");
        ge.b.b(appCompatImageView2, contentArray);
        H().f17076c.setOnClickListener(new tf.c(2, this, contentArray));
    }

    public final void N() {
        zg.a aVar = this.f16979l;
        if (kotlin.jvm.internal.h.a(aVar != null ? aVar.f20293b : null, "")) {
            AppCompatImageView appCompatImageView = H().f17077d;
            kotlin.jvm.internal.h.e(appCompatImageView, "mApprovalBinding.imgScenarioPoint");
            ge.b.a(appCompatImageView, R.drawable.mkt_broken_media);
            return;
        }
        zg.a aVar2 = this.f16979l;
        byte[] scenarioArray = Base64.decode(aVar2 != null ? aVar2.f20293b : null, 2);
        AppCompatImageView appCompatImageView2 = H().f17077d;
        kotlin.jvm.internal.h.e(appCompatImageView2, "mApprovalBinding.imgScenarioPoint");
        kotlin.jvm.internal.h.e(scenarioArray, "scenarioArray");
        ge.b.b(appCompatImageView2, scenarioArray);
        H().f17077d.setOnClickListener(new cg.b(1, this, scenarioArray));
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u(I(), a.f16985a);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        kotlin.jvm.internal.h.f(context, "context");
        c5.w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requireActivity().getOnBackPressedDispatcher().addCallback(this, new u());
        B(I(), new kotlin.jvm.internal.r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment.l
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((zg.k) obj).f20355a;
            }
        }, new kotlin.jvm.internal.r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment.m
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((zg.k) obj).f20356b;
            }
        }, D(null), new n(null));
        B(I(), new kotlin.jvm.internal.r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment.o
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((zg.k) obj).f20357c;
            }
        }, new kotlin.jvm.internal.r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment.p
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((zg.k) obj).f20358d;
            }
        }, D(null), new q(null));
        B(I(), new kotlin.jvm.internal.r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment.r
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((zg.k) obj).f20359e;
            }
        }, new kotlin.jvm.internal.r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment.s
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((zg.k) obj).f;
            }
        }, D(null), new t(null));
        B(I(), new kotlin.jvm.internal.r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment.c
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((zg.k) obj).f20366m;
            }
        }, new kotlin.jvm.internal.r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment.d
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((zg.k) obj).f20368o;
            }
        }, D(null), new e(null));
        C(I(), new kotlin.jvm.internal.r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment.f
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((zg.k) obj).f20362i;
            }
        }, D(null), new g(null));
        C(I(), new kotlin.jvm.internal.r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment.h
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((zg.k) obj).f20364k;
            }
        }, D(null), new i(null));
        C(I(), new kotlin.jvm.internal.r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment.j
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((zg.k) obj).f20360g;
            }
        }, D(null), new k(null));
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(se.a aVar) {
        Object next;
        String str;
        zg.a aVarA;
        MediaListDataItem mediaListDataItem;
        MediaListInfo map;
        MediaListInfo map2;
        if (aVar != null) {
            try {
                boolean z10 = aVar.f15385a;
                Iterator it = this.f16976h.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    MediaListDataItem mediaListDataItem2 = ((zg.a) next).f20292a;
                    if (kotlin.jvm.internal.h.a((mediaListDataItem2 == null || (map2 = mediaListDataItem2.getMap()) == null) ? null : map2.getName(), aVar.f15386b)) {
                        break;
                    }
                }
                zg.a aVar2 = (zg.a) next;
                if (z10) {
                    if (aVar2 != null) {
                        str = aVar.f15387c;
                        aVarA = zg.a.a(aVar2, str);
                    }
                    aVarA = null;
                } else {
                    if (aVar2 != null) {
                        str = "";
                        aVarA = zg.a.a(aVar2, str);
                    }
                    aVarA = null;
                }
                String contentType = (aVarA == null || (mediaListDataItem = aVarA.f20292a) == null || (map = mediaListDataItem.getMap()) == null) ? null : map.getContentType();
                if (contentType != null) {
                    int r12 = contentType.hashCode();
                    if (r12 != -1055857694) {
                        if (r12 != 1751671070) {
                            if (r12 == 1782657984 && contentType.equals("ACCIDENT_SCENARIO")) {
                                this.f16979l = aVarA;
                                N();
                            }
                        } else if (contentType.equals("DASHPOINT")) {
                            this.f16978k = aVarA;
                            M();
                        }
                    } else if (contentType.equals("ACCIDENT_PHOTO")) {
                        ArrayList arrayList = this.f16975g;
                        if (!arrayList.contains(aVarA)) {
                            arrayList.add(aVarA);
                            PreviewImageItemUIController previewImageItemUIController = this.f16977j;
                            if (previewImageItemUIController == null) {
                                kotlin.jvm.internal.h.n("mServiceListController");
                                throw null;
                            }
                            previewImageItemUIController.setData(arrayList);
                        }
                    }
                }
                L();
                J();
            } catch (Exception unused) {
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        if (qd.b.b().e(this)) {
            qd.b.b().n(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() throws SecurityException {
        super.onResume();
        if (qd.b.b().e(this)) {
            return;
        }
        qd.b.b().k(this);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        kotlin.jvm.internal.h.f(view, "view");
        super.onViewCreated(view, bundle);
        Context context = view.getContext();
        this.f = context;
        if (context != null) {
            FragmentActivity activity = getActivity();
            Object systemService = activity != null ? activity.getSystemService("layout_inflater") : null;
            kotlin.jvm.internal.h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.progress_dialog, (ViewGroup) null);
            kotlin.jvm.internal.h.e(viewInflate, "inflater.inflate(R.layout.progress_dialog, null)");
            v.e eVar = new v.e(context);
            this.f16974e = eVar;
            c5.u.n(eVar, viewInflate);
            v.e eVar2 = this.f16974e;
            if (eVar2 != null) {
                eVar2.b(false);
            }
        }
        g0 g0VarT = g0.t();
        g0VarT.m();
        MKTAccidentReport mKTAccidentReport = (MKTAccidentReport) g0VarT.J(MKTAccidentReport.class).e();
        if (mKTAccidentReport != null) {
            this.f16981n = mKTAccidentReport.getId();
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.ui.PreviewImageItemUIController.a
    public final void x(byte[] content) {
        kotlin.jvm.internal.h.f(content, "content");
        K(content);
    }
}
