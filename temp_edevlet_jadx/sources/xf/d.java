package xf;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.nfc.NfcAdapter;
import android.os.Build;
import android.text.Editable;
import android.view.View;
import android.webkit.WebView;
import android.widget.Toast;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.navigation.fragment.FragmentKt;
import com.google.android.gms.internal.clearcut.d0;
import io.realm.q0;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.DashboardGridItemModel;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.HeadLineItemModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import tr.gov.turkiye.edevlet.kapisi.login.LoginActivity;
import tr.gov.turkiye.edevlet.kapisi.profile.contact.ContactInfoFragment;
import tr.gov.turkiye.edevlet.kapisi.profile.settings.SettingsFragment;
import tr.gov.turkiye.edevlet.kapisi.scan.QRScanActivity;
import tr.gov.turkiye.edevlet.kapisi.search.SearchFragment;
import tr.gov.turkiye.edevlet.kapisi.search.databinding.FragmentSearchBinding;
import tr.gov.turkiye.edevlet.kapisi.services.city.InstitutionCityListFragment;
import tr.gov.turkiye.edevlet.kapisi.services.epoxy.InstitutionContactListItemModel;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions.MobileAccidentConditionFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.vehicle.MobileAccidentDifferentVehicleFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.introduction.MobileAccidentIntroductionFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.MobileAccidentOnboardingFragment;
import tr.gov.turkiye.edevlet.kapisi.verification.CardReadActivity;
import tr.gov.turkiye.edevlet.kapisi.verification.CardVerificationActivity;
import tr.gov.turkiye.edevlet.kapisi.verification.identity.CardInfoFragment;
import tr.gov.turkiye.edevlet.kapisi.verification.ocr.CardOCRScanActivity;

/* loaded from: classes3.dex */
public final /* synthetic */ class d implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19228a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19229b;

    public /* synthetic */ d(int r12, Object obj) {
        this.f19228a = r12;
        this.f19229b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        FragmentManager supportFragmentManager;
        DialogFragment cVar;
        q0<AccidentReportParticipant> participants;
        int r32 = this.f19228a;
        Object obj = this.f19229b;
        switch (r32) {
            case 0:
                DashboardGridItemModel.bind$lambda$0((DashboardGridItemModel) obj, view);
                return;
            case 1:
                HeadLineItemModel.bind$lambda$0((HeadLineItemModel) obj, view);
                return;
            case 2:
                LoginActivity this$0 = (LoginActivity) obj;
                int r10 = LoginActivity.E;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                if (this$0.y().a()) {
                    this$0.f16544k = true;
                    this$0.H();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("eDevletMobil", "true");
                    WebView webView = this$0.x().f;
                    String str = this$0.f16547n;
                    kotlin.jvm.internal.h.c(str);
                    webView.loadUrl(str, linkedHashMap);
                    return;
                }
                return;
            case 3:
                ContactInfoFragment this$02 = (ContactInfoFragment) obj;
                da.m<Object>[] mVarArr = ContactInfoFragment.f16590j;
                kotlin.jvm.internal.h.f(this$02, "this$0");
                ((gg.b) this$02.f16595e.getValue()).d();
                return;
            case 4:
                SettingsFragment this$03 = (SettingsFragment) obj;
                da.m<Object>[] mVarArr2 = SettingsFragment.f16674d;
                kotlin.jvm.internal.h.f(this$03, "this$0");
                String str2 = this$03.f16676b;
                if (str2 == null) {
                    kotlin.jvm.internal.h.n("mLanguage");
                    throw null;
                }
                String str3 = (!kotlin.jvm.internal.h.a(str2, "tr") && kotlin.jvm.internal.h.a(str2, "en")) ? "edk-2fa-operations-en" : "edk-2fa-operations";
                String string = this$03.getString(R.string.settings_fragment_two_factor);
                kotlin.jvm.internal.h.e(string, "getString(R.string.settings_fragment_two_factor)");
                Intent intent = new Intent("action.servicepage.open");
                intent.putExtra("folderUrl", str3);
                intent.putExtra("serviceName", string);
                intent.putExtra("isCustomPage", true);
                intent.putExtra("isEdkFolder", true);
                intent.putExtra("isFavMenuActive", false);
                if (Build.VERSION.SDK_INT >= 34) {
                    intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
                }
                this$03.startActivity(intent);
                this$03.G("TwoFactorAuthentication_Screen");
                this$03.F("Two_Factor_Authentication");
                return;
            case 5:
                QRScanActivity this$04 = (QRScanActivity) obj;
                int r102 = QRScanActivity.f16681k;
                kotlin.jvm.internal.h.f(this$04, "this$0");
                this$04.finish();
                return;
            case 6:
                SearchFragment this$05 = (SearchFragment) obj;
                da.m<Object>[] mVarArr3 = SearchFragment.f16707s;
                kotlin.jvm.internal.h.f(this$05, "this$0");
                FragmentSearchBinding fragmentSearchBinding = this$05.f16713g;
                if (fragmentSearchBinding == null) {
                    kotlin.jvm.internal.h.n("mSearchFragmentBinding");
                    throw null;
                }
                Editable text = fragmentSearchBinding.f.f15877c.getText();
                if (text != null) {
                    text.clear();
                }
                FragmentSearchBinding fragmentSearchBinding2 = this$05.f16713g;
                if (fragmentSearchBinding2 == null) {
                    kotlin.jvm.internal.h.n("mSearchFragmentBinding");
                    throw null;
                }
                fragmentSearchBinding2.f.f15877c.clearFocus();
                this$05.H();
                return;
            case 7:
                InstitutionCityListFragment this$06 = (InstitutionCityListFragment) obj;
                da.m<Object>[] mVarArr4 = InstitutionCityListFragment.f;
                kotlin.jvm.internal.h.f(this$06, "this$0");
                qg.i iVar = (qg.i) this$06.f16830a.getValue();
                int r02 = this$06.f16833d;
                iVar.getClass();
                qg.j jVar = new qg.j(iVar, r02, null);
                nc.a0 a0Var = iVar.f13883c;
                c5.v.C(a0Var, null, 0, jVar, 3);
                c5.v.D(a0Var, iVar.f13674h, new qg.k(iVar, null));
                return;
            case 8:
                InstitutionContactListItemModel.bind$lambda$0((InstitutionContactListItemModel) obj, view);
                return;
            case 9:
                MobileAccidentApproveFragment this$07 = (MobileAccidentApproveFragment) obj;
                da.m<Object>[] mVarArr5 = MobileAccidentApproveFragment.f16969s;
                kotlin.jvm.internal.h.f(this$07, "this$0");
                MKTAccidentReport mKTAccidentReport = this$07.f16971b;
                String str4 = "HOST";
                if (!kotlin.jvm.internal.h.a(mKTAccidentReport != null ? mKTAccidentReport.getRole() : null, "HOST")) {
                    AccidentMergedReport accidentMergedReport = this$07.f16970a;
                    str4 = "GUEST";
                    if (accidentMergedReport != null && (participants = accidentMergedReport.getParticipants()) != null) {
                        Iterator<AccidentReportParticipant> it = participants.iterator();
                        while (it.hasNext()) {
                            AccidentReportParticipant next = it.next();
                            if (kotlin.jvm.internal.h.a(next.getPartyRole(), "GUEST")) {
                                next.getReportPartyId();
                            }
                        }
                    }
                }
                Context context = this$07.f;
                if (context != null) {
                    v.e eVar = new v.e(context);
                    v.e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.mkt_preview_page_card_approval_dialog, eVar, null, 6, R.string.mkt_preview_page_card_approval_dialog_positive), null, new zg.d(str4, this$07), 2);
                    v.e.d(eVar, Integer.valueOf(R.string.mkt_preview_page_card_approval_dialog_negative), zg.e.f20302a);
                    eVar.show();
                    return;
                }
                return;
            case 10:
                MobileAccidentConditionFragment this$08 = (MobileAccidentConditionFragment) obj;
                da.m<Object>[] mVarArr6 = MobileAccidentConditionFragment.f17029k;
                kotlin.jvm.internal.h.f(this$08, "this$0");
                bh.c cVar2 = (bh.c) this$08.f17031b.getValue();
                cVar2.getClass();
                bh.f fVar = new bh.f(cVar2, null);
                nc.a0 a0Var2 = cVar2.f13883c;
                c5.v.C(a0Var2, null, 0, fVar, 3);
                c5.v.D(a0Var2, cVar2.f1311h, new bh.g(cVar2, null));
                return;
            case 11:
                MobileAccidentDriverFragment this$09 = (MobileAccidentDriverFragment) obj;
                da.m<Object>[] mVarArr7 = MobileAccidentDriverFragment.f17231p;
                kotlin.jvm.internal.h.f(this$09, "this$0");
                dh.f fVarH = this$09.H();
                fVarH.getClass();
                dh.i iVar2 = new dh.i(fVarH, null);
                nc.a0 a0Var3 = fVarH.f13883c;
                c5.v.C(a0Var3, null, 0, iVar2, 3);
                c5.v.D(a0Var3, fVarH.f4943i, new dh.j(fVarH, null));
                return;
            case 12:
                MobileAccidentDifferentVehicleFragment this$010 = (MobileAccidentDifferentVehicleFragment) obj;
                da.m<Object>[] mVarArr8 = MobileAccidentDifferentVehicleFragment.f17258g;
                kotlin.jvm.internal.h.f(this$010, "this$0");
                this$010.G();
                return;
            case 13:
                MobileAccidentIntroductionFragment this$011 = (MobileAccidentIntroductionFragment) obj;
                da.m<Object>[] mVarArr9 = MobileAccidentIntroductionFragment.f17319g;
                kotlin.jvm.internal.h.f(this$011, "this$0");
                FragmentKt.findNavController(this$011).navigate(R.id.mktMyReports);
                return;
            case 14:
                MobileAccidentOnboardingFragment this$012 = (MobileAccidentOnboardingFragment) obj;
                da.m<Object>[] mVarArr10 = MobileAccidentOnboardingFragment.f;
                kotlin.jvm.internal.h.f(this$012, "this$0");
                Context context2 = this$012.f17505d;
                if (context2 != null) {
                    try {
                        context2.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + context2.getPackageName())));
                        return;
                    } catch (ActivityNotFoundException unused) {
                        Toast.makeText(context2, R.string.toast_market_not_found, 1).show();
                        return;
                    }
                }
                return;
            case 15:
                CardVerificationActivity this$013 = (CardVerificationActivity) obj;
                int r103 = CardVerificationActivity.f17576k;
                kotlin.jvm.internal.h.f(this$013, "this$0");
                this$013.finish();
                return;
            case 16:
                CardInfoFragment this$014 = (CardInfoFragment) obj;
                da.m<Object>[] mVarArr11 = CardInfoFragment.f17653j;
                kotlin.jvm.internal.h.f(this$014, "this$0");
                if (Build.VERSION.SDK_INT < 23) {
                    this$014.G();
                    return;
                }
                FragmentActivity fragmentActivityRequireActivity = this$014.requireActivity();
                String[] strArr = c5.y.f2139s;
                if (td.a.a(fragmentActivityRequireActivity, (String[]) Arrays.copyOf(strArr, 1))) {
                    this$014.G();
                    return;
                } else {
                    this$014.requestPermissions(strArr, 0);
                    return;
                }
            case 17:
                CardOCRScanActivity this$015 = (CardOCRScanActivity) obj;
                int r104 = CardOCRScanActivity.f17671j;
                kotlin.jvm.internal.h.f(this$015, "this$0");
                this$015.finish();
                return;
            default:
                ai.c this$016 = (ai.c) obj;
                da.m<Object>[] mVarArr12 = ai.c.f334m;
                kotlin.jvm.internal.h.f(this$016, "this$0");
                try {
                    NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this$016.getActivity());
                    if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
                        if (defaultAdapter == null || defaultAdapter.isEnabled()) {
                            FragmentActivity activity = this$016.getActivity();
                            if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
                                return;
                            } else {
                                cVar = new ie.c(new ai.b());
                            }
                        } else {
                            FragmentActivity activity2 = this$016.getActivity();
                            if (activity2 == null || (supportFragmentManager = activity2.getSupportFragmentManager()) == null) {
                                return;
                            } else {
                                cVar = new ie.e(new ai.a());
                            }
                        }
                        cVar.show(supportFragmentManager, ie.e.class.getSimpleName());
                        return;
                    }
                    Context context3 = this$016.f336b;
                    if (context3 != null) {
                        if (!d0.w(context3)) {
                            Context context4 = this$016.f336b;
                            if (context4 != null) {
                                v.e eVar2 = new v.e(context4);
                                v.e.c(eVar2, Integer.valueOf(R.string.nfc_settings_xiaomi), null, 6);
                                v.e.e(eVar2, Integer.valueOf(R.string.permission_rationale_dialog_ok), null, new ai.d(context4), 2);
                                v.e.d(eVar2, Integer.valueOf(R.string.permission_rationale_dialog_cancel), ai.e.f347a);
                                eVar2.show();
                                return;
                            }
                            return;
                        }
                        Intent intent2 = new Intent(this$016.getActivity(), (Class<?>) CardReadActivity.class);
                        intent2.putExtra("uuid", this$016.f337c);
                        intent2.putExtra("challenge", this$016.f338d);
                        intent2.putExtra("verificationCode", this$016.f341h);
                        intent2.putExtra("token", this$016.f339e);
                        intent2.putExtra("phoneNumber", this$016.f);
                        intent2.putExtra("countryCode", this$016.f340g);
                        intent2.putExtra("serialNo", this$016.f342j);
                        intent2.putExtra("birthDate", this$016.f343k);
                        intent2.putExtra("validationDate", this$016.f344l);
                        this$016.startActivityForResult(intent2, 266);
                        return;
                    }
                    return;
                } catch (Exception unused2) {
                    return;
                }
        }
    }
}
