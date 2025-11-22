package zd;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.widget.NestedScrollView;
import androidx.navigation.fragment.FragmentKt;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import c5.v;
import da.m;
import java.util.LinkedHashMap;
import ke.d;
import kotlin.jvm.internal.h;
import mf.f;
import mf.g;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.barcode.BarcodePDFViewActivity;
import tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSRequestWorker;
import tr.gov.turkiye.edevlet.kapisi.dashboard.about.AboutPageFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.page.MyCityFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.newest.NewestServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.DashboardUIController;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.ElectronicServiceListItemModel;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.ServiceDBListItemModel;
import tr.gov.turkiye.edevlet.kapisi.institution.InstitutionServiceItemModel;
import tr.gov.turkiye.edevlet.kapisi.profile.ui.model.ProfileOperationItemModel;
import tr.gov.turkiye.edevlet.kapisi.search.ui.SearchResultListItemModel;
import tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.ui.PreviewImageItemModel;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.vehicle.MobileAccidentDifferentVehicleFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.information.ui.ImageItemModel;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.ui.InProgressReportItemModel;
import tr.gov.turkiye.edevlet.kapisi.verification.CardErrorActivity;
import tr.gov.turkiye.edevlet.kapisi.verification.CardVerificationResultActivity;
import tr.gov.turkiye.edevlet.kapisi.verification.ocr.GeneralOCRScanActivity;
import tr.gov.turkiye.edevlet.kapisi.verification.sms.SMSVerificationActivity;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20046a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f20047b;

    public /* synthetic */ a(int r12, Object obj) {
        this.f20046a = r12;
        this.f20047b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        ConstraintLayout constraintLayout;
        int r32 = this.f20046a;
        int r42 = 8;
        int r6 = 0;
        Object obj = this.f20047b;
        switch (r32) {
            case 0:
                BarcodePDFViewActivity this$0 = (BarcodePDFViewActivity) obj;
                int r10 = BarcodePDFViewActivity.f15761e;
                h.f(this$0, "this$0");
                this$0.finish();
                return;
            case 1:
                AboutPageFragment this$02 = (AboutPageFragment) obj;
                m<Object>[] mVarArr = AboutPageFragment.f16173e;
                h.f(this$02, "this$0");
                f fVar = (f) this$02.f16175b.getValue();
                fVar.getClass();
                g gVar = new g(fVar, null);
                a0 a0Var = fVar.f13883c;
                v.C(a0Var, null, 0, gVar, 3);
                v.D(a0Var, fVar.f10408h, new mf.h(fVar, null));
                return;
            case 2:
                MyCityFragment this$03 = (MyCityFragment) obj;
                m<Object>[] mVarArr2 = MyCityFragment.f16402k;
                h.f(this$03, "this$0");
                this$03.H();
                this$03.f16408g = view.getId();
                this$03.E().f16228b.check(view.getId());
                ((uf.d) this$03.f16405c.getValue()).d(91, view.getId());
                return;
            case 3:
                NewestServicesFragment this$04 = (NewestServicesFragment) obj;
                m<Object>[] mVarArr3 = NewestServicesFragment.f16420h;
                h.f(this$04, "this$0");
                vf.c cVar = (vf.c) this$04.f16422b.getValue();
                cVar.getClass();
                vf.f fVar2 = new vf.f(cVar, null);
                a0 a0Var2 = cVar.f13883c;
                v.C(a0Var2, null, 0, fVar2, 3);
                v.D(a0Var2, cVar.f18591h, new vf.g(cVar, null));
                return;
            case 4:
                DashboardUIController.buildModels$lambda$10$lambda$9((DashboardUIController) obj, view);
                return;
            case 5:
                ElectronicServiceListItemModel.bind$lambda$0((ElectronicServiceListItemModel) obj, view);
                return;
            case 6:
                ServiceDBListItemModel.bind$lambda$1((ServiceDBListItemModel) obj, view);
                return;
            case 7:
                InstitutionServiceItemModel.bind$lambda$0((InstitutionServiceItemModel) obj, view);
                return;
            case 8:
                ProfileOperationItemModel.bind$lambda$0((ProfileOperationItemModel) obj, view);
                return;
            case 9:
                SearchResultListItemModel.bind$lambda$0((SearchResultListItemModel) obj, view);
                return;
            case 10:
                PaymentPageActivity this$05 = (PaymentPageActivity) obj;
                int r102 = PaymentPageActivity.f16765y;
                h.f(this$05, "this$0");
                gf.b bVar = this$05.f16768d;
                if (bVar == null) {
                    h.n("mNetworkHelper");
                    throw null;
                }
                if (bVar.a()) {
                    this$05.y();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("eDevletMobil", "true");
                    WebView webView = this$05.u().f16829g;
                    String str = this$05.f16782v;
                    h.c(str);
                    webView.loadUrl(str, linkedHashMap);
                    return;
                }
                return;
            case 11:
                MobileAccidentAgreementFragment this$06 = (MobileAccidentAgreementFragment) obj;
                m<Object>[] mVarArr4 = MobileAccidentAgreementFragment.f16945e;
                h.f(this$06, "this$0");
                if (this$06.E().f17069c.isChecked()) {
                    v.e eVar = this$06.f16949d;
                    if (eVar != null) {
                        eVar.show();
                    }
                    yg.d dVar = (yg.d) this$06.f16947b.getValue();
                    v.C(dVar.f13883c, null, 0, new yg.e(dVar, null), 3);
                    v.D(dVar.f13883c, dVar.f19706i, new yg.f(dVar, null));
                    return;
                }
                Context context = this$06.f16948c;
                if (context != null) {
                    int r02 = ke.d.f8929a;
                    NestedScrollView nestedScrollView = this$06.E().f17071e;
                    h.e(nestedScrollView, "mAgreementBinding.mktAgreementParentContainer");
                    ke.d dVarE = d.a.e(nestedScrollView, R.string.mkt_agreement_page_checkbox_warning, null, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
                    if (dVarE != null) {
                        dVarE.show();
                        return;
                    }
                    return;
                }
                return;
            case 12:
                PreviewImageItemModel.bind$lambda$0((PreviewImageItemModel) obj, view);
                return;
            case 13:
                MobileAccidentDriverFragment this$07 = (MobileAccidentDriverFragment) obj;
                m<Object>[] mVarArr5 = MobileAccidentDriverFragment.f17231p;
                h.f(this$07, "this$0");
                FragmentKt.findNavController(this$07).navigate(R.id.mktDifferentVehicleFragment);
                return;
            case 14:
                MobileAccidentDifferentVehicleFragment this$08 = (MobileAccidentDifferentVehicleFragment) obj;
                m<Object>[] mVarArr6 = MobileAccidentDifferentVehicleFragment.f17258g;
                h.f(this$08, "this$0");
                if (this$08.E().f17121g.getVisibility() == 0) {
                    Context context2 = this$08.f17262d;
                    if (context2 != null) {
                        TextView textView = this$08.E().f17122h;
                        h.e(textView, "mDifferentCarBinding.headerCardFormTitle");
                        ge.a.a(textView, AppCompatResources.getDrawable(context2, R.drawable.row_down));
                    }
                    constraintLayout = this$08.E().f17121g;
                } else {
                    Context context3 = this$08.f17262d;
                    if (context3 != null) {
                        TextView textView2 = this$08.E().f17122h;
                        h.e(textView2, "mDifferentCarBinding.headerCardFormTitle");
                        ge.a.a(textView2, AppCompatResources.getDrawable(context3, R.drawable.row_up));
                    }
                    constraintLayout = this$08.E().f17121g;
                    r42 = 0;
                }
                constraintLayout.setVisibility(r42);
                return;
            case 15:
                ImageItemModel.bind$lambda$0((ImageItemModel) obj, view);
                return;
            case 16:
                InProgressReportItemModel.bind$lambda$0((InProgressReportItemModel) obj, view);
                return;
            case 17:
                CardErrorActivity this$09 = (CardErrorActivity) obj;
                int r103 = CardErrorActivity.f17545c;
                h.f(this$09, "this$0");
                this$09.finish();
                return;
            case 18:
                CardVerificationResultActivity this$010 = (CardVerificationResultActivity) obj;
                int r104 = CardVerificationResultActivity.f17585g;
                h.f(this$010, "this$0");
                String str2 = this$010.f17586b;
                if (str2 == null) {
                    h.n("mLanguage");
                    throw null;
                }
                String str3 = (!h.a(str2, "tr") && h.a(str2, "en")) ? "edk-2fa-operations-en" : "edk-2fa-operations";
                String string = this$010.getString(R.string.settings_fragment_two_factor);
                h.e(string, "getString(R.string.settings_fragment_two_factor)");
                Intent intent = new Intent("action.servicepage.open");
                intent.putExtra("folderUrl", str3);
                intent.putExtra("serviceName", string);
                intent.putExtra("isCustomPage", true);
                intent.putExtra("isEdkFolder", true);
                intent.putExtra("isFavMenuActive", false);
                if (Build.VERSION.SDK_INT >= 34) {
                    intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
                }
                this$010.startActivity(intent);
                this$010.finish();
                return;
            case 19:
                GeneralOCRScanActivity this$011 = (GeneralOCRScanActivity) obj;
                int r105 = GeneralOCRScanActivity.f17686h;
                h.f(this$011, "this$0");
                this$011.finish();
                return;
            default:
                SMSVerificationActivity this$012 = (SMSVerificationActivity) obj;
                int r106 = SMSVerificationActivity.f17705p;
                h.f(this$012, "this$0");
                gf.b bVar2 = this$012.f17706b;
                if (bVar2 == null) {
                    h.n("mNetworkHelper");
                    throw null;
                }
                if (!bVar2.a()) {
                    this$012.u(R.string.connection_error_info, "warning");
                    return;
                }
                this$012.s().f.setVisibility(0);
                this$012.s().f17621c.setVisibility(8);
                l9.g[] gVarArr = {new l9.g("token", this$012.f17712j), new l9.g("uuid", this$012.f17711h)};
                Data.Builder builder = new Data.Builder();
                while (r6 < 2) {
                    l9.g gVar2 = gVarArr[r6];
                    r6++;
                    builder.put((String) gVar2.f9582a, gVar2.f9583b);
                }
                Data dataBuild = builder.build();
                h.e(dataBuild, "dataBuilder.build()");
                OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(SMSRequestWorker.class).setInputData(dataBuild).build();
                h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…                 .build()");
                WorkManager.getInstance(this$012).enqueue(oneTimeWorkRequestBuild);
                return;
        }
    }
}
