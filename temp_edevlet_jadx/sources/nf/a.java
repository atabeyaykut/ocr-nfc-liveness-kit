package nf;

import android.view.View;
import android.webkit.WebView;
import androidx.core.os.BundleKt;
import androidx.navigation.fragment.FragmentKt;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import c5.v;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.textfield.TextInputLayout;
import java.util.LinkedHashMap;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker;
import tr.gov.turkiye.edevlet.kapisi.dashboard.barcode.BarcodeServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.page.MyCityFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.EditorChoiceServiceItemModel;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.ServiceDBListItemModel;
import tr.gov.turkiye.edevlet.kapisi.profile.personal.PersonalInfoFragment;
import tr.gov.turkiye.edevlet.kapisi.profile.ui.model.ProfileContactModel;
import tr.gov.turkiye.edevlet.kapisi.search.ui.SearchHistoryItem;
import tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity;
import tr.gov.turkiye.edevlet.kapisi.services.epoxy.InstitutionContactListItemModel;
import tr.gov.turkiye.edevlet.kapisi.services.list.InstitutionListFragment;
import tr.gov.turkiye.edevlet.kapisi.services.municipality.MunicipalityListFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.MobileAccidentReportActivity;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.ui.CompletedReportItemModel;
import tr.gov.turkiye.edevlet.kapisi.verification.CardVerificationResultActivity;
import tr.gov.turkiye.edevlet.kapisi.verification.ocr.GeneralOCRScanActivity;
import tr.gov.turkiye.edevlet.kapisi.verification.sms.SMSVerificationActivity;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10887a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10888b;

    public /* synthetic */ a(int r12, Object obj) {
        this.f10887a = r12;
        this.f10888b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        int r22 = this.f10887a;
        int r42 = 0;
        boolean z10 = true;
        Object obj = this.f10888b;
        switch (r22) {
            case 0:
                BarcodeServicesFragment this$0 = (BarcodeServicesFragment) obj;
                da.m<Object>[] mVarArr = BarcodeServicesFragment.f16187h;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                e eVar = (e) this$0.f16189b.getValue();
                eVar.getClass();
                h hVar = new h(eVar, null);
                a0 a0Var = eVar.f13883c;
                v.C(a0Var, null, 0, hVar, 3);
                v.D(a0Var, eVar.f10909h, new i(eVar, null));
                return;
            case 1:
                MyCityFragment this$02 = (MyCityFragment) obj;
                da.m<Object>[] mVarArr2 = MyCityFragment.f16402k;
                kotlin.jvm.internal.h.f(this$02, "this$0");
                FragmentKt.findNavController(this$02).popBackStack(R.id.myCityDetailFragment, true);
                FragmentKt.findNavController(this$02).navigate(R.id.myCityListFragment, BundleKt.bundleOf(new l9.g("mustAtLeastOne", Boolean.FALSE)));
                return;
            case 2:
                EditorChoiceServiceItemModel.bind$lambda$0((EditorChoiceServiceItemModel) obj, view);
                return;
            case 3:
                ServiceDBListItemModel.bind$lambda$0((ServiceDBListItemModel) obj, view);
                return;
            case 4:
                PersonalInfoFragment this$03 = (PersonalInfoFragment) obj;
                da.m<Object>[] mVarArr3 = PersonalInfoFragment.f16659g;
                kotlin.jvm.internal.h.f(this$03, "this$0");
                fg.f fVar = (fg.f) this$03.f.getValue();
                fVar.getClass();
                fg.g gVar = new fg.g(fVar, null);
                a0 a0Var2 = fVar.f13883c;
                v.C(a0Var2, null, 0, gVar, 3);
                v.D(a0Var2, fVar.f5649h, new fg.h(fVar, null));
                return;
            case 5:
                ProfileContactModel.bind$lambda$0((ProfileContactModel) obj, view);
                return;
            case 6:
                SearchHistoryItem.bind$lambda$0((SearchHistoryItem) obj, view);
                return;
            case 7:
                PaymentPageActivity this$04 = (PaymentPageActivity) obj;
                int r10 = PaymentPageActivity.f16765y;
                kotlin.jvm.internal.h.f(this$04, "this$0");
                gf.b bVar = this$04.f16768d;
                if (bVar == null) {
                    kotlin.jvm.internal.h.n("mNetworkHelper");
                    throw null;
                }
                if (bVar.a()) {
                    this$04.y();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("eDevletMobil", "true");
                    WebView webView = this$04.u().f16829g;
                    String str = this$04.f16782v;
                    kotlin.jvm.internal.h.c(str);
                    webView.loadUrl(str, linkedHashMap);
                    return;
                }
                return;
            case 8:
                InstitutionContactListItemModel.bind$lambda$2((InstitutionContactListItemModel) obj, view);
                return;
            case 9:
                InstitutionListFragment this$05 = (InstitutionListFragment) obj;
                da.m<Object>[] mVarArr4 = InstitutionListFragment.f16899k;
                kotlin.jvm.internal.h.f(this$05, "this$0");
                vg.d dVar = (vg.d) this$05.f16902c.getValue();
                int r02 = this$05.f16906h;
                int r23 = this$05.f16905g;
                dVar.getClass();
                vg.e eVar2 = new vg.e(dVar, r02, r23, null);
                a0 a0Var3 = dVar.f13883c;
                v.C(a0Var3, null, 0, eVar2, 3);
                v.D(a0Var3, dVar.f18643h, new vg.f(dVar, null));
                return;
            case 10:
                MunicipalityListFragment this$06 = (MunicipalityListFragment) obj;
                da.m<Object>[] mVarArr5 = MunicipalityListFragment.f16919j;
                kotlin.jvm.internal.h.f(this$06, "this$0");
                wg.d dVar2 = (wg.d) this$06.f16921b.getValue();
                int r03 = this$06.f16925g;
                int r24 = this$06.f;
                dVar2.getClass();
                wg.e eVar3 = new wg.e(dVar2, r03, r24, null);
                a0 a0Var4 = dVar2.f13883c;
                v.C(a0Var4, null, 0, eVar3, 3);
                v.D(a0Var4, dVar2.f18914h, new wg.f(dVar2, null));
                return;
            case 11:
                MobileAccidentReportActivity this$07 = (MobileAccidentReportActivity) obj;
                int r102 = MobileAccidentReportActivity.f16940e;
                kotlin.jvm.internal.h.f(this$07, "this$0");
                this$07.onBackPressed();
                return;
            case 12:
                MobileAccidentDriverFragment this$08 = (MobileAccidentDriverFragment) obj;
                da.m<Object>[] mVarArr6 = MobileAccidentDriverFragment.f17231p;
                kotlin.jvm.internal.h.f(this$08, "this$0");
                FragmentKt.findNavController(this$08).navigate(R.id.mktDifferentVehicleFragment);
                return;
            case 13:
                MobileAccidentMapFragment this$09 = (MobileAccidentMapFragment) obj;
                da.m<Object>[] mVarArr7 = MobileAccidentMapFragment.f17338m;
                kotlin.jvm.internal.h.f(this$09, "this$0");
                this$09.f17348l = true;
                String str2 = this$09.f17346j;
                if (!(str2 == null || str2.length() == 0)) {
                    String str3 = this$09.f17347k;
                    if (str3 != null && str3.length() != 0) {
                        z10 = false;
                    }
                    if (!z10) {
                        kh.e eVar4 = (kh.e) this$09.f17340b.getValue();
                        String str4 = this$09.f17346j;
                        kotlin.jvm.internal.h.c(str4);
                        String str5 = this$09.f17347k;
                        kotlin.jvm.internal.h.c(str5);
                        eVar4.getClass();
                        kh.f fVar2 = new kh.f(eVar4, str4, str5, null);
                        a0 a0Var5 = eVar4.f13883c;
                        v.C(a0Var5, null, 0, fVar2, 3);
                        v.D(a0Var5, eVar4.f8950h, new kh.g(eVar4, null));
                        return;
                    }
                }
                FragmentKt.findNavController(this$09).popBackStack();
                return;
            case 14:
                CompletedReportItemModel.bind$lambda$0((CompletedReportItemModel) obj, view);
                return;
            case 15:
                CardVerificationResultActivity this$010 = (CardVerificationResultActivity) obj;
                int r103 = CardVerificationResultActivity.f17585g;
                kotlin.jvm.internal.h.f(this$010, "this$0");
                this$010.finish();
                return;
            case 16:
                GeneralOCRScanActivity this$011 = (GeneralOCRScanActivity) obj;
                int r104 = GeneralOCRScanActivity.f17686h;
                kotlin.jvm.internal.h.f(this$011, "this$0");
                this$011.finish();
                return;
            default:
                SMSVerificationActivity this$012 = (SMSVerificationActivity) obj;
                int r105 = SMSVerificationActivity.f17705p;
                kotlin.jvm.internal.h.f(this$012, "this$0");
                gf.b bVar2 = this$012.f17706b;
                if (bVar2 == null) {
                    kotlin.jvm.internal.h.n("mNetworkHelper");
                    throw null;
                }
                if (!bVar2.a()) {
                    this$012.u(R.string.connection_error_info, "warning");
                    return;
                }
                String string = mc.n.i0(String.valueOf(this$012.s().f17620b.getText())).toString();
                this$012.f17716n = string;
                if (string == null) {
                    kotlin.jvm.internal.h.n("mSMSVerification");
                    throw null;
                }
                if (!(string.length() > 0)) {
                    this$012.s().f17631n.setError(this$012.getResources().getString(R.string.validation_empty_sms_code));
                    return;
                }
                try {
                    this$012.s().f.setVisibility(0);
                    this$012.s().f17622d.setVisibility(8);
                    TextInputLayout textInputLayout = this$012.s().f17631n;
                    kotlin.jvm.internal.h.e(textInputLayout, "mSMSVerificationBinding.txtInputSmsCode");
                    d0.x(textInputLayout);
                } catch (Exception unused) {
                }
                this$012.s().f17631n.setError(null);
                l9.g[] gVarArr = new l9.g[3];
                gVarArr[0] = new l9.g("token", this$012.f17712j);
                gVarArr[1] = new l9.g("uuid", this$012.f17711h);
                String str6 = this$012.f17716n;
                if (str6 == null) {
                    kotlin.jvm.internal.h.n("mSMSVerification");
                    throw null;
                }
                gVarArr[2] = new l9.g("smsCode", str6);
                Data.Builder builder = new Data.Builder();
                while (r42 < 3) {
                    l9.g gVar2 = gVarArr[r42];
                    r42++;
                    builder.put((String) gVar2.f9582a, gVar2.f9583b);
                }
                Data dataBuild = builder.build();
                kotlin.jvm.internal.h.e(dataBuild, "dataBuilder.build()");
                OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(SMSVerificationWorker.class).setInputData(dataBuild).build();
                kotlin.jvm.internal.h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…                 .build()");
                WorkManager.getInstance(this$012).enqueue(oneTimeWorkRequestBuild);
                return;
        }
    }
}
