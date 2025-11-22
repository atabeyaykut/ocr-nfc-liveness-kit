package t1;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.fragment.FragmentKt;
import c5.y;
import java.util.Arrays;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.barcode.BarcodeVerifyFragment;
import tr.gov.turkiye.edevlet.kapisi.barcode.manual.dynamic.ManualDynamicFieldFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.ConceptServiceItemModel;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.FavoriteServiceListModel;
import tr.gov.turkiye.edevlet.kapisi.profile.contact.ContactInfoFragment;
import tr.gov.turkiye.edevlet.kapisi.profile.settings.SettingsFragment;
import tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity;
import tr.gov.turkiye.edevlet.kapisi.services.epoxy.FirmGridItemModel;
import tr.gov.turkiye.edevlet.kapisi.services.epoxy.InstitutionListItemModel;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions.MobileAccidentConditionFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.vehicle.MobileAccidentDifferentVehicleFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.introduction.MobileAccidentIntroductionFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.MobileAccidentOnboardingFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.policy.MobileAccidentPolicyFragment;
import tr.gov.turkiye.edevlet.kapisi.verification.CardVerificationResultActivity;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15518a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15519b;

    public /* synthetic */ f(int r12, Object obj) {
        this.f15518a = r12;
        this.f15519b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int r02 = this.f15518a;
        Object obj = this.f15519b;
        switch (r02) {
            case 0:
                g this$0 = (g) obj;
                int r15 = g.f15520j;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.fromParts("package", this$0.requireActivity().getPackageName(), null));
                intent.addFlags(268435456);
                this$0.startActivity(intent);
                break;
            case 1:
                BarcodeVerifyFragment this$02 = (BarcodeVerifyFragment) obj;
                da.m<Object>[] mVarArr = BarcodeVerifyFragment.f;
                kotlin.jvm.internal.h.f(this$02, "this$0");
                if (Build.VERSION.SDK_INT < 23) {
                    this$02.F();
                    break;
                } else {
                    FragmentActivity fragmentActivityRequireActivity = this$02.requireActivity();
                    String[] strArr = b0.a.f1005d;
                    if (!td.a.a(fragmentActivityRequireActivity, (String[]) Arrays.copyOf(strArr, 1))) {
                        this$02.requestPermissions(strArr, 0);
                        break;
                    } else {
                        this$02.F();
                        break;
                    }
                }
            case 2:
                ManualDynamicFieldFragment this$03 = (ManualDynamicFieldFragment) obj;
                da.m<Object>[] mVarArr2 = ManualDynamicFieldFragment.f15820g;
                kotlin.jvm.internal.h.f(this$03, "this$0");
                this$03.G();
                break;
            case 3:
                ConceptServiceItemModel.bind$lambda$0((ConceptServiceItemModel) obj, view);
                break;
            case 4:
                FavoriteServiceListModel.bind$lambda$1((FavoriteServiceListModel) obj, view);
                break;
            case 5:
                ContactInfoFragment this$04 = (ContactInfoFragment) obj;
                da.m<Object>[] mVarArr3 = ContactInfoFragment.f16590j;
                kotlin.jvm.internal.h.f(this$04, "this$0");
                String strI = this$04.I();
                String str = (!kotlin.jvm.internal.h.a(strI, "tr") && kotlin.jvm.internal.h.a(strI, "en")) ? "edk-what-is-verified-by-id-en" : "edk-what-is-verified-by-id";
                String string = this$04.getString(R.string.page_title_what_is_id_verification);
                kotlin.jvm.internal.h.e(string, "getString(R.string.page_…_what_is_id_verification)");
                Intent intent2 = new Intent("action.servicepage.open");
                intent2.putExtra("folderUrl", str);
                intent2.putExtra("serviceName", string);
                intent2.putExtra("isCustomPage", true);
                intent2.putExtra("isEdkFolder", true);
                intent2.putExtra("isFavMenuActive", false);
                if (Build.VERSION.SDK_INT >= 34) {
                    intent2.setPackage("tr.gov.turkiye.edevlet.kapisi");
                }
                this$04.startActivity(intent2);
                break;
            case 6:
                SettingsFragment this$05 = (SettingsFragment) obj;
                da.m<Object>[] mVarArr4 = SettingsFragment.f16674d;
                kotlin.jvm.internal.h.f(this$05, "this$0");
                String string2 = this$05.getString(R.string.settings_fragment_usage_history);
                kotlin.jvm.internal.h.e(string2, "getString(R.string.setti…s_fragment_usage_history)");
                Intent intent3 = new Intent("action.servicepage.open");
                intent3.putExtra("folderUrl", "edk-login-history");
                intent3.putExtra("serviceName", string2);
                intent3.putExtra("isCustomPage", true);
                intent3.putExtra("isEdkFolder", true);
                intent3.putExtra("isFavMenuActive", false);
                if (Build.VERSION.SDK_INT >= 34) {
                    intent3.setPackage("tr.gov.turkiye.edevlet.kapisi");
                }
                this$05.startActivity(intent3);
                this$05.G("UsageHistory_Screen");
                this$05.F("Usage_History");
                break;
            case 7:
                PaymentPageActivity this$06 = (PaymentPageActivity) obj;
                int r152 = PaymentPageActivity.f16765y;
                kotlin.jvm.internal.h.f(this$06, "this$0");
                this$06.x();
                break;
            case 8:
                FirmGridItemModel.bind$lambda$0((FirmGridItemModel) obj, view);
                break;
            case 9:
                InstitutionListItemModel.bind$lambda$0((InstitutionListItemModel) obj, view);
                break;
            case 10:
                MobileAccidentConditionFragment this$07 = (MobileAccidentConditionFragment) obj;
                da.m<Object>[] mVarArr5 = MobileAccidentConditionFragment.f17029k;
                kotlin.jvm.internal.h.f(this$07, "this$0");
                Intent intent4 = new Intent("android.intent.action.VIEW");
                intent4.setData(Uri.parse("tel:112"));
                this$07.startActivity(intent4);
                break;
            case 11:
                MobileAccidentDifferentVehicleFragment this$08 = (MobileAccidentDifferentVehicleFragment) obj;
                da.m<Object>[] mVarArr6 = MobileAccidentDifferentVehicleFragment.f17258g;
                kotlin.jvm.internal.h.f(this$08, "this$0");
                this$08.G();
                break;
            case 12:
                MobileAccidentIntroductionFragment this$09 = (MobileAccidentIntroductionFragment) obj;
                da.m<Object>[] mVarArr7 = MobileAccidentIntroductionFragment.f17319g;
                kotlin.jvm.internal.h.f(this$09, "this$0");
                this$09.f = "GUEST";
                if (Build.VERSION.SDK_INT < 23) {
                    this$09.F();
                    break;
                } else {
                    y.y(this$09);
                    break;
                }
            case 13:
                MobileAccidentOnboardingFragment this$010 = (MobileAccidentOnboardingFragment) obj;
                da.m<Object>[] mVarArr8 = MobileAccidentOnboardingFragment.f;
                kotlin.jvm.internal.h.f(this$010, "this$0");
                this$010.F().d();
                break;
            case 14:
                MobileAccidentPolicyFragment this$011 = (MobileAccidentPolicyFragment) obj;
                da.m<Object>[] mVarArr9 = MobileAccidentPolicyFragment.f17516e;
                kotlin.jvm.internal.h.f(this$011, "this$0");
                FragmentKt.findNavController(this$011).navigate(R.id.mktInformationFragment);
                break;
            default:
                CardVerificationResultActivity this$012 = (CardVerificationResultActivity) obj;
                int r153 = CardVerificationResultActivity.f17585g;
                kotlin.jvm.internal.h.f(this$012, "this$0");
                this$012.finish();
                break;
        }
    }
}
