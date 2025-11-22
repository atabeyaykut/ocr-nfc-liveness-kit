package tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavController;
import androidx.navigation.NavOptions;
import androidx.navigation.fragment.FragmentKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.view.result.ActivityResultLauncher;
import androidx.view.result.contract.ActivityResultContracts;
import c5.u;
import c5.v;
import c5.w;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.chip.Chip;
import io.realm.g0;
import io.realm.q0;
import java.io.FileOutputStream;
import java.util.List;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import nc.a0;
import org.json.JSONException;
import org.json.JSONObject;
import r0.c1;
import r0.d1;
import r0.q;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportItem;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportItemArray;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportListContent;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportListData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportListMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportListModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportListSubData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportListSubMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadCompletedReportData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadCompletedReportFile;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadCompletedReportInfo;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadCompletedReportMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadCompletedReportModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadCompletedReportSubData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressListReports;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportItem;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportItemArray;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportListContent;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportListData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportListMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportListModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportListSubData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportListSubMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ListReports;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MergeDetailData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MergeDetailMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MergeDetailModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MergeDetailObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MergeDetailParticipant;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MergeDetailParticipantArray;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MergeDetailParticipantList;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MergeDetailSubData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ReportDetailModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportMainInfo;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportSubData;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentMyreportsBinding;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.ui.CompletedReportItemUIController;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.ui.InProgressReportItemUIController;
import x9.p;
import yd.a;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemUIController$a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentCompletedReportFragment extends ee.a implements CompletedReportItemUIController.a, InProgressReportItemUIController.a {

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f17464l = {androidx.room.util.a.b(MobileAccidentCompletedReportFragment.class, "mReportListBinding", "getMReportListBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;"), androidx.room.util.a.b(MobileAccidentCompletedReportFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17465a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f17466b;

    /* renamed from: c, reason: collision with root package name */
    public CompletedReportItemUIController f17467c;

    /* renamed from: d, reason: collision with root package name */
    public InProgressReportItemUIController f17468d;

    /* renamed from: e, reason: collision with root package name */
    public InProgressReportItem f17469e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public v.e f17470g;

    /* renamed from: h, reason: collision with root package name */
    public Context f17471h;

    /* renamed from: j, reason: collision with root package name */
    public final String[] f17472j;

    /* renamed from: k, reason: collision with root package name */
    public final ActivityResultLauncher<Intent> f17473k;

    public /* synthetic */ class a extends kotlin.jvm.internal.g implements x9.l<View, FragmentMyreportsBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f17474a = new a();

        public a() {
            super(1, FragmentMyreportsBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;", 0);
        }

        @Override // x9.l
        public final FragmentMyreportsBinding invoke(View view) {
            View p02 = view;
            kotlin.jvm.internal.h.f(p02, "p0");
            return FragmentMyreportsBinding.bind(p02);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment$onCreate$10", f = "MobileAccidentCompletedReportFragment.kt", l = {}, m = "invokeSuspend")
    public static final class b extends r9.i implements p<r0.b<? extends Result<MergeDetailModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f17475a;

        public b(p9.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            b bVar = MobileAccidentCompletedReportFragment.this.new b(dVar);
            bVar.f17475a = obj;
            return bVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(r0.b<? extends Result<MergeDetailModel>> bVar, p9.d<? super l9.m> dVar) {
            return ((b) create(bVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            MergeDetailObject mergeDetailObject;
            MergeDetailMap mergeDetailMap;
            MergeDetailSubData mergeDetailSubData;
            MergeDetailParticipant mergeDetailParticipant;
            MergeDetailParticipantList participants;
            w.F(obj);
            r0.b bVar = (r0.b) this.f17475a;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof r0.k;
            MobileAccidentCompletedReportFragment mobileAccidentCompletedReportFragment = MobileAccidentCompletedReportFragment.this;
            if (z10) {
                v.e eVar = mobileAccidentCompletedReportFragment.f17470g;
                if (eVar != null) {
                    eVar.show();
                }
            } else if (bVar instanceof c1) {
                v.e eVar2 = mobileAccidentCompletedReportFragment.f17470g;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                try {
                    MergeDetailData mergeDetailData = ((MergeDetailModel) ((Result) ((c1) bVar).f13723b).getOrThrow()).getMergeDetailData();
                    List<MergeDetailParticipantArray> participantList = (mergeDetailData == null || (mergeDetailObject = mergeDetailData.getMergeDetailObject()) == null || (mergeDetailMap = mergeDetailObject.getMergeDetailMap()) == null || (mergeDetailSubData = mergeDetailMap.getMergeDetailSubData()) == null || (mergeDetailParticipant = mergeDetailSubData.getMergeDetailParticipant()) == null || (participants = mergeDetailParticipant.getParticipants()) == null) ? null : participants.getParticipantList();
                    if (participantList != null && (participantList.isEmpty() ^ true)) {
                        InProgressReportItem inProgressReportItem = mobileAccidentCompletedReportFragment.f17469e;
                        if (inProgressReportItem == null) {
                            kotlin.jvm.internal.h.n("mSelectedInProgressReport");
                            throw null;
                        }
                        if (kotlin.jvm.internal.h.a(inProgressReportItem.getRole(), "HOST")) {
                            for (MergeDetailParticipantArray mergeDetailParticipantArray : participantList) {
                                if (kotlin.jvm.internal.h.a(mergeDetailParticipantArray.getParticipant().getPartyRole(), "GUEST")) {
                                    FragmentKt.findNavController(mobileAccidentCompletedReportFragment).navigate(R.id.mktMatchedReportFragment, BundleKt.bundleOf(new l9.g("identityNumber", mergeDetailParticipantArray.getParticipant().getIdentityNumber()), new l9.g("plateNumber", ge.f.d(mergeDetailParticipantArray.getParticipant().getPlate()))));
                                }
                            }
                        } else {
                            for (MergeDetailParticipantArray mergeDetailParticipantArray2 : participantList) {
                                if (kotlin.jvm.internal.h.a(mergeDetailParticipantArray2.getParticipant().getPartyRole(), "HOST")) {
                                    FragmentKt.findNavController(mobileAccidentCompletedReportFragment).navigate(R.id.mktMatchedReportFragment, BundleKt.bundleOf(new l9.g("identityNumber", mergeDetailParticipantArray2.getParticipant().getIdentityNumber()), new l9.g("plateNumber", ge.f.d(mergeDetailParticipantArray2.getParticipant().getPlate()))));
                                }
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            } else if (bVar instanceof r0.i) {
                MobileAccidentCompletedReportFragment.F(mobileAccidentCompletedReportFragment, ((r0.i) bVar).f13749b);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment$onCreate$12", f = "MobileAccidentCompletedReportFragment.kt", l = {}, m = "invokeSuspend")
    public static final class d extends r9.i implements p<r0.b<? extends Result<SaveReportModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f17478a;

        public d(p9.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            d dVar2 = MobileAccidentCompletedReportFragment.this.new d(dVar);
            dVar2.f17478a = obj;
            return dVar2;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(r0.b<? extends Result<SaveReportModel>> bVar, p9.d<? super l9.m> dVar) {
            return ((d) create(bVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            SaveReportSubData saveReportSubData;
            SaveReportMainInfo saveReportMainInfo;
            SaveReportObject saveReportObject;
            v.e eVar;
            v.e eVar2;
            w.F(obj);
            r0.b bVar = (r0.b) this.f17478a;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof r0.k;
            MobileAccidentCompletedReportFragment mobileAccidentCompletedReportFragment = MobileAccidentCompletedReportFragment.this;
            if (z10) {
                yd.a.f19652a.c("Loading saveReport ***", new Object[0]);
                v.e eVar3 = mobileAccidentCompletedReportFragment.f17470g;
                if (((eVar3 == null || eVar3.isShowing()) ? false : true) && (eVar2 = mobileAccidentCompletedReportFragment.f17470g) != null) {
                    eVar2.show();
                }
            } else if (bVar instanceof c1) {
                yd.a.f19652a.c("success saveReport ***", new Object[0]);
                v.e eVar4 = mobileAccidentCompletedReportFragment.f17470g;
                if ((eVar4 != null && eVar4.isShowing()) && (eVar = mobileAccidentCompletedReportFragment.f17470g) != null) {
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
                        FragmentKt.findNavController(mobileAccidentCompletedReportFragment).navigate(R.id.mktResultFragment, BundleKt.bundleOf(new l9.g("reportNumber", new Long(saveReportMap.getSaveReportSubData().getSaveReportMainInfo().getReportNumber()))), new NavOptions.Builder().setPopUpTo(R.id.mktIntroductionFragment, false).build());
                    }
                } catch (Exception unused) {
                }
            } else if (bVar instanceof r0.i) {
                MobileAccidentCompletedReportFragment.F(mobileAccidentCompletedReportFragment, ((r0.i) bVar).f13749b);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment$onCreate$2", f = "MobileAccidentCompletedReportFragment.kt", l = {}, m = "invokeSuspend")
    public static final class f extends r9.i implements p<r0.b<? extends Result<CompletedReportListModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f17481a;

        public f(p9.d<? super f> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            f fVar = MobileAccidentCompletedReportFragment.this.new f(dVar);
            fVar.f17481a = obj;
            return fVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(r0.b<? extends Result<CompletedReportListModel>> bVar, p9.d<? super l9.m> dVar) {
            return ((f) create(bVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            ListReports listReports;
            CompletedReportListMap map;
            CompletedReportListSubData completedReportListSubData;
            CompletedReportListSubMap completedReportListSubMap;
            CompletedReportListContent content;
            w.F(obj);
            r0.b bVar = (r0.b) this.f17481a;
            boolean z10 = true;
            boolean z11 = bVar instanceof d1 ? true : bVar instanceof r0.k;
            MobileAccidentCompletedReportFragment mobileAccidentCompletedReportFragment = MobileAccidentCompletedReportFragment.this;
            if (z11) {
                da.m<Object>[] mVarArr = MobileAccidentCompletedReportFragment.f17464l;
                mobileAccidentCompletedReportFragment.I().f17167d.setVisibility(8);
                mobileAccidentCompletedReportFragment.I().f.f15873a.setVisibility(8);
                mobileAccidentCompletedReportFragment.I().f17170h.f15878a.setVisibility(8);
                v.e eVar = mobileAccidentCompletedReportFragment.f17470g;
                if (eVar != null) {
                    eVar.show();
                }
            } else if (bVar instanceof c1) {
                v.e eVar2 = mobileAccidentCompletedReportFragment.f17470g;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                MobileAccidentCompletedReportFragment.H(mobileAccidentCompletedReportFragment);
                CompletedReportListData completedReportListData = ((CompletedReportListModel) ((Result) ((c1) bVar).f13723b).getOrThrow()).getCompletedReportListData();
                List<CompletedReportItemArray> myArrayList = (completedReportListData == null || (listReports = completedReportListData.getListReports()) == null || (map = listReports.getMap()) == null || (completedReportListSubData = map.getCompletedReportListSubData()) == null || (completedReportListSubMap = completedReportListSubData.getCompletedReportListSubMap()) == null || (content = completedReportListSubMap.getContent()) == null) ? null : content.getMyArrayList();
                List<CompletedReportItemArray> list = myArrayList;
                if (list != null && !list.isEmpty()) {
                    z10 = false;
                }
                if (z10) {
                    mobileAccidentCompletedReportFragment.I().f17169g.setVisibility(8);
                    mobileAccidentCompletedReportFragment.I().f17166c.setVisibility(0);
                    mobileAccidentCompletedReportFragment.I().f17172j.setText(mobileAccidentCompletedReportFragment.getString(R.string.mkt_report_list_empty_title));
                    mobileAccidentCompletedReportFragment.I().f17171i.setText(mobileAccidentCompletedReportFragment.getString(R.string.mkt_report_list_empty_description));
                } else {
                    mobileAccidentCompletedReportFragment.getClass();
                    yd.a.f19652a.c("Status " + myArrayList.size(), new Object[0]);
                    mobileAccidentCompletedReportFragment.I().f17169g.setVisibility(0);
                    mobileAccidentCompletedReportFragment.I().f17166c.setVisibility(8);
                    mobileAccidentCompletedReportFragment.I().f17169g.setLayoutManager(new LinearLayoutManager(mobileAccidentCompletedReportFragment.f17471h));
                    mobileAccidentCompletedReportFragment.f17467c = new CompletedReportItemUIController(mobileAccidentCompletedReportFragment);
                    EpoxyRecyclerView epoxyRecyclerView = mobileAccidentCompletedReportFragment.I().f17169g;
                    CompletedReportItemUIController completedReportItemUIController = mobileAccidentCompletedReportFragment.f17467c;
                    if (completedReportItemUIController == null) {
                        kotlin.jvm.internal.h.n("mReportListController");
                        throw null;
                    }
                    epoxyRecyclerView.setController(completedReportItemUIController);
                    CompletedReportItemUIController completedReportItemUIController2 = mobileAccidentCompletedReportFragment.f17467c;
                    if (completedReportItemUIController2 == null) {
                        kotlin.jvm.internal.h.n("mReportListController");
                        throw null;
                    }
                    completedReportItemUIController2.setData(myArrayList);
                }
            } else if (bVar instanceof r0.i) {
                MobileAccidentCompletedReportFragment.E(mobileAccidentCompletedReportFragment, ((r0.i) bVar).f13749b);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment$onCreate$4", f = "MobileAccidentCompletedReportFragment.kt", l = {}, m = "invokeSuspend")
    public static final class h extends r9.i implements p<r0.b<? extends Result<InProgressReportListModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f17484a;

        public h(p9.d<? super h> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            h hVar = MobileAccidentCompletedReportFragment.this.new h(dVar);
            hVar.f17484a = obj;
            return hVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(r0.b<? extends Result<InProgressReportListModel>> bVar, p9.d<? super l9.m> dVar) {
            return ((h) create(bVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            InProgressListReports listReports;
            InProgressReportListMap map;
            InProgressReportListSubData inProgressReportListSubData;
            InProgressReportListSubMap inProgressReportListSubMap;
            InProgressReportListContent content;
            w.F(obj);
            r0.b bVar = (r0.b) this.f17484a;
            boolean z10 = true;
            boolean z11 = bVar instanceof d1 ? true : bVar instanceof r0.k;
            MobileAccidentCompletedReportFragment mobileAccidentCompletedReportFragment = MobileAccidentCompletedReportFragment.this;
            if (z11) {
                v.e eVar = mobileAccidentCompletedReportFragment.f17470g;
                if (eVar != null) {
                    eVar.show();
                }
            } else if (bVar instanceof c1) {
                v.e eVar2 = mobileAccidentCompletedReportFragment.f17470g;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                MobileAccidentCompletedReportFragment.H(mobileAccidentCompletedReportFragment);
                InProgressReportListData inProgressReportListData = ((InProgressReportListModel) ((Result) ((c1) bVar).f13723b).getOrThrow()).getInProgressReportListData();
                List<InProgressReportItemArray> myArrayList = (inProgressReportListData == null || (listReports = inProgressReportListData.getListReports()) == null || (map = listReports.getMap()) == null || (inProgressReportListSubData = map.getInProgressReportListSubData()) == null || (inProgressReportListSubMap = inProgressReportListSubData.getInProgressReportListSubMap()) == null || (content = inProgressReportListSubMap.getContent()) == null) ? null : content.getMyArrayList();
                List<InProgressReportItemArray> list = myArrayList;
                if (list != null && !list.isEmpty()) {
                    z10 = false;
                }
                if (z10) {
                    mobileAccidentCompletedReportFragment.I().f17169g.setVisibility(8);
                    mobileAccidentCompletedReportFragment.I().f17166c.setVisibility(0);
                    mobileAccidentCompletedReportFragment.I().f17172j.setText(mobileAccidentCompletedReportFragment.getString(R.string.mkt_report_list_empty_in_progress_title));
                    mobileAccidentCompletedReportFragment.I().f17171i.setText(mobileAccidentCompletedReportFragment.getString(R.string.mkt_report_list_empty_in_progress_description));
                } else {
                    mobileAccidentCompletedReportFragment.getClass();
                    yd.a.f19652a.c("Status " + myArrayList.size(), new Object[0]);
                    mobileAccidentCompletedReportFragment.I().f17169g.setVisibility(0);
                    mobileAccidentCompletedReportFragment.I().f17166c.setVisibility(8);
                    mobileAccidentCompletedReportFragment.I().f17169g.setLayoutManager(new LinearLayoutManager(mobileAccidentCompletedReportFragment.f17471h));
                    mobileAccidentCompletedReportFragment.f17468d = new InProgressReportItemUIController(mobileAccidentCompletedReportFragment);
                    EpoxyRecyclerView epoxyRecyclerView = mobileAccidentCompletedReportFragment.I().f17169g;
                    InProgressReportItemUIController inProgressReportItemUIController = mobileAccidentCompletedReportFragment.f17468d;
                    if (inProgressReportItemUIController == null) {
                        kotlin.jvm.internal.h.n("mInProgressReportListController");
                        throw null;
                    }
                    epoxyRecyclerView.setController(inProgressReportItemUIController);
                    InProgressReportItemUIController inProgressReportItemUIController2 = mobileAccidentCompletedReportFragment.f17468d;
                    if (inProgressReportItemUIController2 == null) {
                        kotlin.jvm.internal.h.n("mInProgressReportListController");
                        throw null;
                    }
                    inProgressReportItemUIController2.setData(myArrayList);
                }
            } else if (bVar instanceof r0.i) {
                MobileAccidentCompletedReportFragment.E(mobileAccidentCompletedReportFragment, ((r0.i) bVar).f13749b);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment$onCreate$6", f = "MobileAccidentCompletedReportFragment.kt", l = {}, m = "invokeSuspend")
    public static final class j extends r9.i implements p<r0.b<? extends Result<DownloadCompletedReportModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f17487a;

        public j(p9.d<? super j> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            j jVar = MobileAccidentCompletedReportFragment.this.new j(dVar);
            jVar.f17487a = obj;
            return jVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(r0.b<? extends Result<DownloadCompletedReportModel>> bVar, p9.d<? super l9.m> dVar) {
            return ((j) create(bVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            DownloadCompletedReportFile downloadFile;
            DownloadCompletedReportMap downloadCompletedReportMap;
            DownloadCompletedReportSubData downloadCompletedReportSubData;
            DownloadCompletedReportInfo map;
            w.F(obj);
            r0.b bVar = (r0.b) this.f17487a;
            boolean z10 = true;
            boolean z11 = bVar instanceof d1 ? true : bVar instanceof r0.k;
            MobileAccidentCompletedReportFragment mobileAccidentCompletedReportFragment = MobileAccidentCompletedReportFragment.this;
            if (z11) {
                v.e eVar = mobileAccidentCompletedReportFragment.f17470g;
                if (eVar != null) {
                    eVar.show();
                }
            } else if (bVar instanceof c1) {
                v.e eVar2 = mobileAccidentCompletedReportFragment.f17470g;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                try {
                    DownloadCompletedReportData downloadCompletedReportData = ((DownloadCompletedReportModel) ((Result) ((c1) bVar).f13723b).getOrThrow()).getDownloadCompletedReportData();
                    String content = (downloadCompletedReportData == null || (downloadFile = downloadCompletedReportData.getDownloadFile()) == null || (downloadCompletedReportMap = downloadFile.getDownloadCompletedReportMap()) == null || (downloadCompletedReportSubData = downloadCompletedReportMap.getDownloadCompletedReportSubData()) == null || (map = downloadCompletedReportSubData.getMap()) == null) ? null : map.getContent();
                    if (!(content == null || content.length() == 0)) {
                        String string = mobileAccidentCompletedReportFragment.getString(R.string.filename_pdf);
                        kotlin.jvm.internal.h.e(string, "getString(R.string.filename_pdf)");
                        Context context = mobileAccidentCompletedReportFragment.f17471h;
                        kotlin.jvm.internal.h.c(context);
                        kotlin.jvm.internal.h.f(content, "content");
                        byte[] bArrA = je.a.a(content);
                        FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput(string, 0);
                        try {
                            try {
                                fileOutputStreamOpenFileOutput.write(bArrA);
                            } catch (Exception unused) {
                                z10 = false;
                            }
                            l9.m mVar = l9.m.f9594a;
                            x5.a.f(fileOutputStreamOpenFileOutput, null);
                            if (z10) {
                                Context context2 = mobileAccidentCompletedReportFragment.f17471h;
                                kotlin.jvm.internal.h.c(context2);
                                gh.a.a(context2, string);
                            }
                        } finally {
                        }
                    }
                } catch (Exception unused2) {
                }
            } else if (bVar instanceof r0.i) {
                MobileAccidentCompletedReportFragment.F(mobileAccidentCompletedReportFragment, ((r0.i) bVar).f13749b);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment$onCreate$8", f = "MobileAccidentCompletedReportFragment.kt", l = {}, m = "invokeSuspend")
    public static final class l extends r9.i implements p<r0.b<? extends Result<ReportDetailModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f17490a;

        public l(p9.d<? super l> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            l lVar = MobileAccidentCompletedReportFragment.this.new l(dVar);
            lVar.f17490a = obj;
            return lVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(r0.b<? extends Result<ReportDetailModel>> bVar, p9.d<? super l9.m> dVar) {
            return ((l) create(bVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            r0.b bVar = (r0.b) this.f17490a;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof r0.k;
            MobileAccidentCompletedReportFragment mobileAccidentCompletedReportFragment = MobileAccidentCompletedReportFragment.this;
            if (z10) {
                v.e eVar = mobileAccidentCompletedReportFragment.f17470g;
                if (eVar != null) {
                    eVar.show();
                }
            } else if (bVar instanceof c1) {
                v.e eVar2 = mobileAccidentCompletedReportFragment.f17470g;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                try {
                    MobileAccidentCompletedReportFragment.G(mobileAccidentCompletedReportFragment);
                } catch (Exception unused) {
                }
            } else if (bVar instanceof r0.i) {
                MobileAccidentCompletedReportFragment.F(mobileAccidentCompletedReportFragment, ((r0.i) bVar).f13749b);
            }
            return l9.m.f9594a;
        }
    }

    public static final class n extends kotlin.jvm.internal.j implements x9.l<q<rh.d, rh.c>, rh.d> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17493a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17494b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17495c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17493a = fragment;
            this.f17494b = dVar;
            this.f17495c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [r0.z, rh.d] */
        @Override // x9.l
        public final rh.d invoke(q<rh.d, rh.c> qVar) {
            q<rh.d, rh.c> stateFactory = qVar;
            kotlin.jvm.internal.h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17494b);
            Fragment fragment = this.f17493a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            kotlin.jvm.internal.h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17495c, clsQ, rh.c.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class o extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17496a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ x9.l f17497b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17498c;

        public o(da.d dVar, n nVar, da.d dVar2) {
            this.f17496a = dVar;
            this.f17497b = nVar;
            this.f17498c = dVar2;
        }

        public final l9.e t(Object obj, da.m property) {
            Fragment thisRef = (Fragment) obj;
            kotlin.jvm.internal.h.f(thisRef, "thisRef");
            kotlin.jvm.internal.h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17496a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.a(this), kotlin.jvm.internal.w.a(rh.c.class), this.f17497b);
        }
    }

    public MobileAccidentCompletedReportFragment() {
        super(R.layout.fragment_myreports);
        this.f17465a = d0.C(this, a.f17474a);
        da.d dVarA = kotlin.jvm.internal.w.a(rh.d.class);
        this.f17466b = new o(dVarA, new n(this, dVarA, dVarA), dVarA).t(this, f17464l[1]);
        this.f17472j = new String[]{"INITIATED", "PARTY_COMPLETED", "RECEIVED_CONFIRM_REQUEST", "MERGED", "WAITING_CONFIRM_REQUEST", "SCENARIO", "DRAFT_INITIATED", "HOST_APPROVED", "HOST_REJECTED", "COMPLETE", "WAITING_CONFIRM_RESPONSE", "GUEST_APPROVED", "GUEST_REJECTED", "EXPIRED"};
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new androidx.camera.camera2.interop.c(9, this));
        kotlin.jvm.internal.h.e(activityResultLauncherRegisterForActivityResult, "registerForActivityResul…\n\n            }\n        }");
        this.f17473k = activityResultLauncherRegisterForActivityResult;
    }

    public static final void E(MobileAccidentCompletedReportFragment mobileAccidentCompletedReportFragment, Throwable th2) {
        v.e eVar = mobileAccidentCompletedReportFragment.f17470g;
        if (eVar != null) {
            eVar.dismiss();
        }
        if (th2 instanceof LoginException) {
            Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
            if (Build.VERSION.SDK_INT >= 34) {
                intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            mobileAccidentCompletedReportFragment.startActivity(intentB);
            FragmentActivity activity = mobileAccidentCompletedReportFragment.getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        if (th2 instanceof NetworkErrorException) {
            mobileAccidentCompletedReportFragment.I().f17167d.setVisibility(8);
            mobileAccidentCompletedReportFragment.I().f17170h.f15878a.setVisibility(8);
            mobileAccidentCompletedReportFragment.I().f.f15873a.setVisibility(0);
            mobileAccidentCompletedReportFragment.I().f.f15874b.setOnClickListener(new ie.d(16, mobileAccidentCompletedReportFragment));
            return;
        }
        if (!(th2 instanceof ServiceErrorExceptionWithMessage)) {
            mobileAccidentCompletedReportFragment.I().f17167d.setVisibility(8);
            mobileAccidentCompletedReportFragment.I().f.f15873a.setVisibility(8);
            mobileAccidentCompletedReportFragment.I().f17170h.f15878a.setVisibility(0);
            return;
        }
        String errorMessage = ((ServiceErrorExceptionWithMessage) th2).getErrorMessage();
        mobileAccidentCompletedReportFragment.I().f17167d.setVisibility(8);
        mobileAccidentCompletedReportFragment.I().f.f15873a.setVisibility(8);
        mobileAccidentCompletedReportFragment.I().f17170h.f15878a.setVisibility(0);
        if (errorMessage == null || errorMessage.length() == 0) {
            return;
        }
        mobileAccidentCompletedReportFragment.I().f17170h.f15880c.setText(errorMessage);
    }

    public static final void F(MobileAccidentCompletedReportFragment mobileAccidentCompletedReportFragment, Throwable th2) {
        v.e eVar = mobileAccidentCompletedReportFragment.f17470g;
        if (eVar != null) {
            eVar.dismiss();
        }
        if (th2 instanceof LoginException) {
            Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
            if (Build.VERSION.SDK_INT >= 34) {
                intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            mobileAccidentCompletedReportFragment.startActivity(intentB);
            FragmentActivity activity = mobileAccidentCompletedReportFragment.getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        if (!(th2 instanceof NetworkErrorException)) {
            mobileAccidentCompletedReportFragment.K(th2 instanceof ServiceErrorExceptionWithMessage ? ((ServiceErrorExceptionWithMessage) th2).getErrorMessage() : null);
            return;
        }
        Context context = mobileAccidentCompletedReportFragment.f17471h;
        if (context != null) {
            int r02 = ke.d.f8929a;
            ConstraintLayout constraintLayout = mobileAccidentCompletedReportFragment.I().f17168e;
            kotlin.jvm.internal.h.e(constraintLayout, "mReportListBinding.mktReportListMainContainer");
            ke.d dVarE = d.a.e(constraintLayout, R.string.connection_error_info, null, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void G(MobileAccidentCompletedReportFragment mobileAccidentCompletedReportFragment) throws JSONException {
        int r22;
        NavController navControllerFindNavController;
        NavOptions navOptionsBuild;
        mobileAccidentCompletedReportFragment.getClass();
        a.C0306a c0306a = yd.a.f19652a;
        InProgressReportItem inProgressReportItem = mobileAccidentCompletedReportFragment.f17469e;
        if (inProgressReportItem == null) {
            kotlin.jvm.internal.h.n("mSelectedInProgressReport");
            throw null;
        }
        c0306a.c(String.valueOf(inProgressReportItem.getConsolidatedStatus()), new Object[0]);
        InProgressReportItem inProgressReportItem2 = mobileAccidentCompletedReportFragment.f17469e;
        if (inProgressReportItem2 == null) {
            kotlin.jvm.internal.h.n("mSelectedInProgressReport");
            throw null;
        }
        Object consolidatedStatus = inProgressReportItem2.getConsolidatedStatus();
        if (kotlin.jvm.internal.h.a(consolidatedStatus, "INITIATED")) {
            navControllerFindNavController = FragmentKt.findNavController(mobileAccidentCompletedReportFragment);
            navOptionsBuild = new NavOptions.Builder().setPopUpTo(R.id.mktMyReports, false).build();
            r22 = R.id.mktDriverFragment;
        } else {
            if (kotlin.jvm.internal.h.a(consolidatedStatus, "PARTY_COMPLETED")) {
                FragmentKt.findNavController(mobileAccidentCompletedReportFragment).navigate(R.id.mktGenerateQRFragment);
                return;
            }
            if (kotlin.jvm.internal.h.a(consolidatedStatus, "RECEIVED_CONFIRM_REQUEST")) {
                g0 realm = g0.t();
                kotlin.jvm.internal.h.e(realm, "realm");
                MKTAccidentReport mKTAccidentReport = (MKTAccidentReport) realm.J(MKTAccidentReport.class).e();
                if (mKTAccidentReport != null) {
                    AccidentMergedReport report = mKTAccidentReport.getReport();
                    q0<AccidentReportParticipant> participants = report != null ? report.getParticipants() : null;
                    if (participants != null && (participants.isEmpty() ^ true)) {
                        l9.g[] gVarArr = new l9.g[2];
                        AccidentReportParticipant accidentReportParticipant = participants.get(0);
                        gVarArr[0] = new l9.g("identityNumber", String.valueOf(accidentReportParticipant != null ? accidentReportParticipant.getIdentityNumber() : null));
                        AccidentReportParticipant accidentReportParticipant2 = participants.get(0);
                        gVarArr[1] = new l9.g("plateNumber", String.valueOf(accidentReportParticipant2 != null ? accidentReportParticipant2.getPlate() : null));
                        FragmentKt.findNavController(mobileAccidentCompletedReportFragment).navigate(R.id.mktMatchedReportFragment, BundleKt.bundleOf(gVarArr));
                        return;
                    }
                    return;
                }
                return;
            }
            if (kotlin.jvm.internal.h.a(consolidatedStatus, "MERGED") ? true : kotlin.jvm.internal.h.a(consolidatedStatus, "WAITING_CONFIRM_REQUEST")) {
                InProgressReportItem inProgressReportItem3 = mobileAccidentCompletedReportFragment.f17469e;
                if (inProgressReportItem3 == null) {
                    kotlin.jvm.internal.h.n("mSelectedInProgressReport");
                    throw null;
                }
                String reportPartyId = inProgressReportItem3.getReportPartyId();
                if (reportPartyId != null) {
                    rh.d dVarJ = mobileAccidentCompletedReportFragment.J();
                    dVarJ.getClass();
                    rh.i iVar = new rh.i(dVarJ, reportPartyId, null);
                    a0 a0Var = dVarJ.f13883c;
                    v.C(a0Var, null, 0, iVar, 3);
                    v.D(a0Var, dVarJ.f14738l, new rh.j(dVarJ, null));
                    return;
                }
                return;
            }
            if (kotlin.jvm.internal.h.a(consolidatedStatus, "SCENARIO") ? true : kotlin.jvm.internal.h.a(consolidatedStatus, "DRAFT_INITIATED")) {
                g0 realm2 = g0.t();
                kotlin.jvm.internal.h.e(realm2, "realm");
                MKTAccidentReport mKTAccidentReport2 = (MKTAccidentReport) realm2.J(MKTAccidentReport.class).e();
                if (mKTAccidentReport2 != null) {
                    String scenarioId = mKTAccidentReport2.getScenarioId();
                    String id2 = mKTAccidentReport2.getId();
                    Context context = mobileAccidentCompletedReportFragment.f17471h;
                    if (context != null) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("scenarioId", scenarioId);
                        jSONObject.put("partyId", id2);
                        c0306a.c("json " + jSONObject, new Object[0]);
                        StringBuilder sb2 = new StringBuilder("https://www.turkiye.gov.tr/sbm-mobil-kaza-tespit-tutanagi?kroki=duzenle&par=");
                        sb2.append(id2);
                        String strH = androidx.camera.camera2.internal.c.h(sb2, "&sce=", scenarioId);
                        String string = context.getString(R.string.mkt_toolbar_title);
                        String string2 = jSONObject.toString();
                        kotlin.jvm.internal.h.e(string2, "toString()");
                        kotlin.jvm.internal.h.e(string, "getString(R.string.mkt_toolbar_title)");
                        objE = ze.a.e(strH, string2, string);
                    }
                    mobileAccidentCompletedReportFragment.f17473k.launch(objE);
                    return;
                }
                return;
            }
            if (!(kotlin.jvm.internal.h.a(consolidatedStatus, "HOST_APPROVED") ? true : kotlin.jvm.internal.h.a(consolidatedStatus, "HOST_REJECTED") ? true : kotlin.jvm.internal.h.a(consolidatedStatus, "COMPLETE") ? true : kotlin.jvm.internal.h.a(consolidatedStatus, "WAITING_CONFIRM_RESPONSE"))) {
                if (!(kotlin.jvm.internal.h.a(consolidatedStatus, "GUEST_APPROVED") ? true : kotlin.jvm.internal.h.a(consolidatedStatus, "GUEST_REJECTED"))) {
                    mobileAccidentCompletedReportFragment.K(mobileAccidentCompletedReportFragment.getString(kotlin.jvm.internal.h.a(consolidatedStatus, "EXPIRED") ? R.string.mkt_report_list_expired_state : R.string.mkt_report_list_default_state));
                    return;
                }
                g0 realm3 = g0.t();
                kotlin.jvm.internal.h.e(realm3, "realm");
                MKTAccidentReport mKTAccidentReport3 = (MKTAccidentReport) realm3.J(MKTAccidentReport.class).e();
                if (mKTAccidentReport3 != null) {
                    AccidentMergedReport report2 = mKTAccidentReport3.getReport();
                    rh.d dVarJ2 = mobileAccidentCompletedReportFragment.J();
                    String id3 = mKTAccidentReport3.getId();
                    kotlin.jvm.internal.h.c(id3);
                    String reportId = report2 != null ? report2.getReportId() : null;
                    kotlin.jvm.internal.h.c(reportId);
                    String reportId2 = report2.getReportId();
                    kotlin.jvm.internal.h.c(reportId2);
                    dVarJ2.getClass();
                    rh.m mVar = new rh.m(dVarJ2, id3, reportId, reportId2, null);
                    a0 a0Var2 = dVarJ2.f13883c;
                    v.C(a0Var2, null, 0, mVar, 3);
                    v.D(a0Var2, dVarJ2.f14739m, new rh.n(dVarJ2, null));
                    return;
                }
                return;
            }
            g0 realm4 = g0.t();
            kotlin.jvm.internal.h.e(realm4, "realm");
            MKTAccidentReport mKTAccidentReport4 = (MKTAccidentReport) realm4.J(MKTAccidentReport.class).e();
            if (mKTAccidentReport4 == null) {
                return;
            }
            AccidentMergedReport report3 = mKTAccidentReport4.getReport();
            Integer reportNumber = report3 != null ? report3.getReportNumber() : null;
            r22 = R.id.mktResultFragment;
            if (reportNumber != null) {
                FragmentKt.findNavController(mobileAccidentCompletedReportFragment).navigate(R.id.mktResultFragment, BundleKt.bundleOf(new l9.g("reportNumber", reportNumber)), new NavOptions.Builder().setPopUpTo(R.id.mktMyReports, false).build());
                return;
            } else {
                navControllerFindNavController = FragmentKt.findNavController(mobileAccidentCompletedReportFragment);
                navOptionsBuild = new NavOptions.Builder().setPopUpTo(R.id.mktMyReports, false).build();
            }
        }
        navControllerFindNavController.navigate(r22, (Bundle) null, navOptionsBuild);
    }

    public static final void H(MobileAccidentCompletedReportFragment mobileAccidentCompletedReportFragment) {
        mobileAccidentCompletedReportFragment.I().f17167d.setVisibility(0);
        mobileAccidentCompletedReportFragment.I().f.f15873a.setVisibility(8);
        mobileAccidentCompletedReportFragment.I().f17170h.f15878a.setVisibility(8);
    }

    public final FragmentMyreportsBinding I() {
        return (FragmentMyreportsBinding) this.f17465a.a(this, f17464l[0]);
    }

    public final rh.d J() {
        return (rh.d) this.f17466b.getValue();
    }

    public final void K(String str) {
        Context context = this.f17471h;
        if (context != null) {
            if (str == null || str.length() == 0) {
                str = getString(R.string.service_error_info);
            }
            kotlin.jvm.internal.h.e(str, "if (errorMessage.isNullO…rrorMessage\n            }");
            int r12 = ke.d.f8929a;
            ConstraintLayout constraintLayout = I().f17168e;
            kotlin.jvm.internal.h.e(constraintLayout, "mReportListBinding.mktReportListMainContainer");
            ke.d dVarB = d.a.b(constraintLayout, str, ContextCompat.getColor(context, R.color.error_color));
            if (dVarB != null) {
                dVarB.show();
            }
        }
    }

    @Override // r0.w
    public final void invalidate() {
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        kotlin.jvm.internal.h.f(context, "context");
        w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C(J(), new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment.e
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((rh.c) obj).f14725c;
            }
        }, D(null), new f(null));
        C(J(), new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment.g
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((rh.c) obj).f14723a;
            }
        }, D(null), new h(null));
        C(J(), new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment.i
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((rh.c) obj).f14727e;
            }
        }, D(null), new j(null));
        C(J(), new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment.k
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((rh.c) obj).f14728g;
            }
        }, D(null), new l(null));
        C(J(), new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment.m
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((rh.c) obj).f14732k;
            }
        }, D(null), new b(null));
        C(J(), new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment.c
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((rh.c) obj).f14730i;
            }
        }, D(null), new d(null));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        kotlin.jvm.internal.h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f17471h = view.getContext();
        Bundle arguments = getArguments();
        this.f = arguments != null && arguments.getBoolean("redirectToCompletedTab", false);
        Context context = this.f17471h;
        if (context != null) {
            FragmentActivity activity = getActivity();
            Object systemService = activity != null ? activity.getSystemService("layout_inflater") : null;
            kotlin.jvm.internal.h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.progress_dialog, (ViewGroup) null);
            kotlin.jvm.internal.h.e(viewInflate, "inflater.inflate(R.layout.progress_dialog, null)");
            v.e eVar = new v.e(context);
            this.f17470g = eVar;
            u.n(eVar, viewInflate);
            v.e eVar2 = this.f17470g;
            if (eVar2 != null) {
                eVar2.b(false);
            }
        }
        int r22 = 0;
        for (Object obj : b8.f.Y(new qh.a(0, R.string.mkt_report_list_continue_tab_name), new qh.a(1, R.string.mkt_report_list_completed_tab_name))) {
            int r42 = r22 + 1;
            if (r22 < 0) {
                b8.f.k0();
                throw null;
            }
            qh.a aVar = (qh.a) obj;
            View viewInflate2 = getLayoutInflater().inflate(R.layout.item_report_chip, (ViewGroup) null, false);
            kotlin.jvm.internal.h.d(viewInflate2, "null cannot be cast to non-null type com.google.android.material.chip.Chip");
            Chip chip = (Chip) viewInflate2;
            chip.setText(getString(aVar.f13691b));
            chip.setId(aVar.f13690a);
            chip.setClickable(true);
            chip.setCheckable(true);
            if (this.f) {
                if (r22 == 1) {
                    chip.setChecked(true);
                    J().d();
                }
            } else if (r22 == 0) {
                chip.setChecked(true);
                rh.d dVarJ = J();
                dVarJ.getClass();
                rh.g gVar = new rh.g(dVarJ, null);
                a0 a0Var = dVarJ.f13883c;
                v.C(a0Var, null, 0, gVar, 3);
                v.D(a0Var, dVarJ.f14734h, new rh.h(dVarJ, null));
            }
            chip.setOnClickListener(new zd.e(14, this));
            I().f17165b.addView(chip);
            r22 = r42;
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.ui.InProgressReportItemUIController.a
    public final void v(InProgressReportItem item) {
        String reportPartyId;
        kotlin.jvm.internal.h.f(item, "item");
        this.f17469e = item;
        if (!m9.k.o0(this.f17472j, item.getConsolidatedStatus()) || (reportPartyId = item.getReportPartyId()) == null) {
            return;
        }
        rh.d dVarJ = J();
        dVarJ.getClass();
        rh.k kVar = new rh.k(dVarJ, reportPartyId, null);
        a0 a0Var = dVarJ.f13883c;
        v.C(a0Var, null, 0, kVar, 3);
        v.D(a0Var, dVarJ.f14737k, new rh.l(dVarJ, null));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.ui.CompletedReportItemUIController.a
    public final void z(CompletedReportItem item) {
        kotlin.jvm.internal.h.f(item, "item");
        rh.d dVarJ = J();
        String plateCityCode = item.getVehiclePlateCityCode();
        String plateNumber = item.getVehiclePlateNumber();
        String reportId = String.valueOf(item.getReportNumber());
        dVarJ.getClass();
        kotlin.jvm.internal.h.f(plateCityCode, "plateCityCode");
        kotlin.jvm.internal.h.f(plateNumber, "plateNumber");
        kotlin.jvm.internal.h.f(reportId, "reportId");
        rh.e eVar = new rh.e(dVarJ, plateCityCode, plateNumber, reportId, null);
        a0 a0Var = dVarJ.f13883c;
        v.C(a0Var, null, 0, eVar, 3);
        v.D(a0Var, dVarJ.f14736j, new rh.f(dVarJ, null));
    }
}
