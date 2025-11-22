package ie;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.transition.TransitionManager;
import c5.e0;
import c5.v;
import da.m;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.jvm.internal.h;
import lh.f;
import nc.a0;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import qf.g;
import tf.i;
import tf.j;
import tf.k;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.editor.EditorServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.AboutPageItemModel;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.ElectronicServiceListItemModel;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.WonderListItemModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.QuestionAnswer;
import tr.gov.turkiye.edevlet.kapisi.institution.InstitutionServiceItemModel;
import tr.gov.turkiye.edevlet.kapisi.profile.ProfileFragment;
import tr.gov.turkiye.edevlet.kapisi.profile.contact.ContactInfoFragment;
import tr.gov.turkiye.edevlet.kapisi.search.SearchFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions.MobileAccidentConditionFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.introduction.MobileAccidentIntroductionFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.host.MobileAccidentQRScanFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.waiting.MobileAccidentWaitingApprovalFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.MobileAccidentOnboardingFragment;
import tr.gov.turkiye.edevlet.kapisi.verification.CardReadActivity;
import tr.gov.turkiye.edevlet.kapisi.verification.CardVerificationResultActivity;
import tr.gov.turkiye.edevlet.kapisi.verification.sms.SMSVerificationErrorActivity;
import zg.l;
import zg.s;
import zg.t;

/* loaded from: classes3.dex */
public final /* synthetic */ class d implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7432a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7433b;

    public /* synthetic */ d(int r12, Object obj) {
        this.f7432a = r12;
        this.f7433b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws JSONException {
        int r42 = this.f7432a;
        Object obj = this.f7433b;
        switch (r42) {
            case 0:
                e this$0 = (e) obj;
                h.f(this$0, "this$0");
                try {
                    this$0.startActivity(new Intent("android.settings.NFC_SETTINGS"));
                } catch (Exception unused) {
                }
                this$0.dismissAllowingStateLoss();
                return;
            case 1:
                EditorServicesFragment this$02 = (EditorServicesFragment) obj;
                m<Object>[] mVarArr = EditorServicesFragment.f16329h;
                h.f(this$02, "this$0");
                qf.d dVar = (qf.d) this$02.f16331b.getValue();
                dVar.getClass();
                g gVar = new g(dVar, null);
                a0 a0Var = dVar.f13883c;
                v.C(a0Var, null, 0, gVar, 3);
                v.D(a0Var, dVar.f13613h, new qf.h(dVar, null));
                return;
            case 2:
                MyCityListFragment this$03 = (MyCityListFragment) obj;
                m<Object>[] mVarArr2 = MyCityListFragment.f16381k;
                h.f(this$03, "this$0");
                i iVar = (i) this$03.f16382a.getValue();
                iVar.getClass();
                j jVar = new j(iVar, 91, null);
                a0 a0Var2 = iVar.f13883c;
                v.C(a0Var2, null, 0, jVar, 3);
                v.D(a0Var2, iVar.f15702h, new k(iVar, null));
                return;
            case 3:
                AboutPageItemModel.bind$lambda$0((AboutPageItemModel) obj, view);
                return;
            case 4:
                ElectronicServiceListItemModel.bind$lambda$2((ElectronicServiceListItemModel) obj, view);
                return;
            case 5:
                WonderListItemModel.bind$lambda$0((WonderListItemModel) obj, view);
                return;
            case 6:
                InstitutionServiceItemModel.bind$lambda$2((InstitutionServiceItemModel) obj, view);
                return;
            case 7:
                ProfileFragment this$04 = (ProfileFragment) obj;
                m<Object>[] mVarArr3 = ProfileFragment.f16570l;
                h.f(this$04, "this$0");
                TransitionManager.beginDelayedTransition(this$04.H().f16640i, new fg.a());
                this$04.H().f16638g.setVisibility(8);
                SharedPreferences.Editor editor = this$04.I().edit();
                h.e(editor, "editor");
                editor.putBoolean("profileBannerShown", true);
                editor.putLong("profileBannerShownDate", System.currentTimeMillis());
                editor.apply();
                return;
            case 8:
                ContactInfoFragment this$05 = (ContactInfoFragment) obj;
                m<Object>[] mVarArr4 = ContactInfoFragment.f16590j;
                h.f(this$05, "this$0");
                if (this$05.J()) {
                    gf.b bVar = this$05.f16592b;
                    if (bVar == null) {
                        this$05.N();
                        return;
                    }
                    if (bVar == null) {
                        h.n("mNetworkHelper");
                        throw null;
                    }
                    if (!bVar.a()) {
                        this$05.O();
                        return;
                    }
                    this$05.f16597h = true;
                    String strI = this$05.I();
                    String str = (!h.a(strI, "tr") && h.a(strI, "en")) ? "edk-phone-number-operations-en" : "edk-phone-number-operations";
                    String string = this$05.getString(R.string.profile_phone_number_update_page);
                    h.e(string, "getString(R.string.profi…phone_number_update_page)");
                    Intent intent = new Intent("action.servicepage.open");
                    intent.putExtra("folderUrl", str);
                    intent.putExtra("serviceName", string);
                    intent.putExtra("isCustomPage", true);
                    intent.putExtra("isEdkFolder", true);
                    intent.putExtra("isFavMenuActive", false);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    this$05.startActivity(intent);
                    this$05.L("ContactEdit_Screen");
                    this$05.K("Contact_Edit");
                    return;
                }
                gf.b bVar2 = this$05.f16592b;
                if (bVar2 == null) {
                    this$05.N();
                    return;
                }
                if (bVar2 == null) {
                    h.n("mNetworkHelper");
                    throw null;
                }
                if (!bVar2.a()) {
                    this$05.O();
                    return;
                }
                this$05.f16597h = true;
                String strI2 = this$05.I();
                String str2 = (!h.a(strI2, "tr") && h.a(strI2, "en")) ? "edk-phone-number-operations-without-id-verification-en" : "edk-phone-number-operations-without-id-verification";
                String string2 = this$05.getString(R.string.profile_phone_number_update_page);
                h.e(string2, "getString(R.string.profi…phone_number_update_page)");
                Intent intent2 = new Intent("action.servicepage.open");
                intent2.putExtra("folderUrl", str2);
                intent2.putExtra("serviceName", string2);
                intent2.putExtra("isCustomPage", true);
                intent2.putExtra("isEdkFolder", true);
                intent2.putExtra("isFavMenuActive", false);
                if (Build.VERSION.SDK_INT >= 34) {
                    intent2.setPackage("tr.gov.turkiye.edevlet.kapisi");
                }
                this$05.startActivity(intent2);
                this$05.L("ContactEdit_Screen");
                this$05.K("Contact_Edit");
                return;
            case 9:
                SearchFragment this$06 = (SearchFragment) obj;
                m<Object>[] mVarArr5 = SearchFragment.f16707s;
                h.f(this$06, "this$0");
                String str3 = this$06.f16718m;
                if (str3 == null || str3.length() == 0) {
                    this$06.H();
                    return;
                }
                ng.k kVar = (ng.k) this$06.f16712e.getValue();
                String str4 = this$06.f16718m;
                h.c(str4);
                kVar.d(str4);
                return;
            case 10:
                MobileAccidentApproveFragment this$07 = (MobileAccidentApproveFragment) obj;
                m<Object>[] mVarArr6 = MobileAccidentApproveFragment.f16969s;
                h.f(this$07, "this$0");
                l lVarI = this$07.I();
                lVarI.getClass();
                s sVar = new s(lVarI, null);
                a0 a0Var3 = lVarI.f13883c;
                v.C(a0Var3, null, 0, sVar, 3);
                v.D(a0Var3, lVarI.f20369h, new t(lVarI, null));
                return;
            case 11:
                MobileAccidentConditionFragment this$08 = (MobileAccidentConditionFragment) obj;
                m<Object>[] mVarArr7 = MobileAccidentConditionFragment.f17029k;
                h.f(this$08, "this$0");
                this$08.f17037j = true;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("partyRole", this$08.f17035g);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("latitude", this$08.f17034e);
                jSONObject2.put("longitude", this$08.f);
                jSONObject.put("deviceLocation", jSONObject2);
                JSONArray jSONArray = new JSONArray();
                Iterator it = this$08.f17036h.iterator();
                while (it.hasNext()) {
                    QuestionAnswer questionAnswer = (QuestionAnswer) it.next();
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("questionCode", questionAnswer.getQuestionCode());
                    jSONObject3.put("answer", questionAnswer.getAnswer());
                    jSONArray.put(jSONObject3);
                }
                jSONObject.put("answers", jSONArray);
                bh.c cVar = (bh.c) this$08.f17031b.getValue();
                String string3 = jSONObject.toString();
                h.e(string3, "rootObject.toString()");
                cVar.getClass();
                bh.d dVar2 = new bh.d(cVar, string3, null);
                a0 a0Var4 = cVar.f13883c;
                v.C(a0Var4, null, 0, dVar2, 3);
                v.D(a0Var4, cVar.f1312i, new bh.e(cVar, null));
                return;
            case 12:
                MobileAccidentIntroductionFragment this$09 = (MobileAccidentIntroductionFragment) obj;
                m<Object>[] mVarArr8 = MobileAccidentIntroductionFragment.f17319g;
                h.f(this$09, "this$0");
                jh.c cVar2 = (jh.c) this$09.f17321b.getValue();
                cVar2.getClass();
                jh.d dVar3 = new jh.d(cVar2, null);
                a0 a0Var5 = cVar2.f13883c;
                v.C(a0Var5, null, 0, dVar3, 3);
                v.D(a0Var5, cVar2.f8521h, new jh.e(cVar2, null));
                return;
            case 13:
                MobileAccidentGenerateQRFragment this$010 = (MobileAccidentGenerateQRFragment) obj;
                m<Object>[] mVarArr9 = MobileAccidentGenerateQRFragment.f17363l;
                h.f(this$010, "this$0");
                lh.e eVar = (lh.e) this$010.f17365b.getValue();
                eVar.getClass();
                f fVar = new f(eVar, null);
                a0 a0Var6 = eVar.f13883c;
                v.C(a0Var6, null, 0, fVar, 3);
                v.D(a0Var6, eVar.f9837i, new lh.g(eVar, null));
                return;
            case 14:
                MobileAccidentQRScanFragment this$011 = (MobileAccidentQRScanFragment) obj;
                m<Object>[] mVarArr10 = MobileAccidentQRScanFragment.f17394j;
                h.f(this$011, "this$0");
                if (Build.VERSION.SDK_INT < 23) {
                    this$011.E();
                    return;
                }
                FragmentActivity fragmentActivityRequireActivity = this$011.requireActivity();
                String[] strArr = e0.f1490d;
                if (td.a.a(fragmentActivityRequireActivity, (String[]) Arrays.copyOf(strArr, 1))) {
                    this$011.E();
                    return;
                } else {
                    this$011.requestPermissions(strArr, 4);
                    return;
                }
            case 15:
                MobileAccidentWaitingApprovalFragment this$012 = (MobileAccidentWaitingApprovalFragment) obj;
                m<Object>[] mVarArr11 = MobileAccidentWaitingApprovalFragment.f17443h;
                h.f(this$012, "this$0");
                ((ph.d) this$012.f17445b.getValue()).d();
                return;
            case 16:
                MobileAccidentCompletedReportFragment this$013 = (MobileAccidentCompletedReportFragment) obj;
                m<Object>[] mVarArr12 = MobileAccidentCompletedReportFragment.f17464l;
                h.f(this$013, "this$0");
                this$013.J().d();
                return;
            case 17:
                MobileAccidentOnboardingFragment this$014 = (MobileAccidentOnboardingFragment) obj;
                m<Object>[] mVarArr13 = MobileAccidentOnboardingFragment.f;
                h.f(this$014, "this$0");
                this$014.f17506e = true;
                th.d dVarF = this$014.F();
                v.C(dVarF.f13883c, null, 0, new th.e(dVarF, null), 3);
                v.D(dVarF.f13883c, dVarF.f15740i, new th.f(dVarF, null));
                return;
            case 18:
                CardReadActivity this$015 = (CardReadActivity) obj;
                int r12 = CardReadActivity.f17549r;
                h.f(this$015, "this$0");
                this$015.finish();
                return;
            case 19:
                CardVerificationResultActivity this$016 = (CardVerificationResultActivity) obj;
                int r13 = CardVerificationResultActivity.f17585g;
                h.f(this$016, "this$0");
                this$016.finish();
                return;
            default:
                SMSVerificationErrorActivity this$017 = (SMSVerificationErrorActivity) obj;
                int r14 = SMSVerificationErrorActivity.f17719d;
                h.f(this$017, "this$0");
                this$017.finish();
                return;
        }
    }
}
