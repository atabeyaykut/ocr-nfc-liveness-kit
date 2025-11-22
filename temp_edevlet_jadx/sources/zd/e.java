package zd;

import android.content.Context;
import android.content.Intent;
import android.nfc.NfcAdapter;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.navigation.NavOptions;
import androidx.navigation.fragment.FragmentKt;
import c5.v;
import c5.y;
import com.google.android.material.chip.Chip;
import da.m;
import ke.d;
import kotlin.jvm.internal.h;
import nc.a0;
import pf.g;
import rf.i;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.barcode.BarcodeVerifyFragment;
import tr.gov.turkiye.edevlet.kapisi.barcode.manual.ManualInputBarcodeFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ebys.ElectronicDocServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.ConceptServiceDetailListModel;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.FavoriteServiceListModel;
import tr.gov.turkiye.edevlet.kapisi.dashboard.wonder.WonderServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.profile.ProfileFragment;
import tr.gov.turkiye.edevlet.kapisi.profile.contact.ContactInfoFragment;
import tr.gov.turkiye.edevlet.kapisi.profile.settings.SettingsFragment;
import tr.gov.turkiye.edevlet.kapisi.servicepage.PDFViewActivity;
import tr.gov.turkiye.edevlet.kapisi.services.epoxy.InstitutionGridItemModel;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions.MobileAccidentConditionFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.introduction.MobileAccidentIntroductionFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.MobileAccidentOnboardingFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.result.MobileAccidentResultFragment;
import tr.gov.turkiye.edevlet.kapisi.verification.CardVerificationResultActivity;
import yf.f;

/* loaded from: classes3.dex */
public final /* synthetic */ class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20052a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f20053b;

    public /* synthetic */ e(int r12, Object obj) {
        this.f20052a = r12;
        this.f20053b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        FragmentManager supportFragmentManager;
        boolean z10;
        FragmentManager supportFragmentManager2;
        int r42 = this.f20052a;
        Object obj = this.f20053b;
        switch (r42) {
            case 0:
                BarcodeVerifyFragment this$0 = (BarcodeVerifyFragment) obj;
                m<Object>[] mVarArr = BarcodeVerifyFragment.f;
                h.f(this$0, "this$0");
                if (this$0.f15775d) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("isFromLogin", true);
                    ManualInputBarcodeFragment manualInputBarcodeFragment = new ManualInputBarcodeFragment();
                    manualInputBarcodeFragment.setArguments(bundle);
                    FragmentActivity activity = this$0.getActivity();
                    if (activity != null && (supportFragmentManager = activity.getSupportFragmentManager()) != null) {
                        FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
                        h.e(fragmentTransactionBeginTransaction, "beginTransaction()");
                        fragmentTransactionBeginTransaction.setReorderingAllowed(true);
                        fragmentTransactionBeginTransaction.replace(R.id.fragment_container_view, manualInputBarcodeFragment);
                        fragmentTransactionBeginTransaction.commit();
                    }
                } else {
                    FragmentKt.findNavController(this$0).navigate(R.id.barcodeManualVerifyFirstFragment);
                }
                this$0.E("BarcodeVerifyManual_Screen");
                return;
            case 1:
                ie.e this$02 = (ie.e) obj;
                int r12 = ie.e.f7434c;
                h.f(this$02, "this$0");
                this$02.dismissAllowingStateLoss();
                return;
            case 2:
                ElectronicDocServicesFragment this$03 = (ElectronicDocServicesFragment) obj;
                m<Object>[] mVarArr2 = ElectronicDocServicesFragment.f16313h;
                h.f(this$03, "this$0");
                pf.d dVar = (pf.d) this$03.f16315b.getValue();
                dVar.getClass();
                g gVar = new g(dVar, null);
                a0 a0Var = dVar.f13883c;
                v.C(a0Var, null, 0, gVar, 3);
                v.D(a0Var, dVar.f13159h, new pf.h(dVar, null));
                return;
            case 3:
                FavoriteServicesFragment this$04 = (FavoriteServicesFragment) obj;
                m<Object>[] mVarArr3 = FavoriteServicesFragment.f16345l;
                h.f(this$04, "this$0");
                rf.g gVar2 = (rf.g) this$04.f16347b.getValue();
                gVar2.getClass();
                rf.h hVar = new rf.h(gVar2, null);
                a0 a0Var2 = gVar2.f13883c;
                v.C(a0Var2, null, 0, hVar, 3);
                v.D(a0Var2, gVar2.f14652h, new i(gVar2, null));
                return;
            case 4:
                ConceptServiceDetailListModel.bind$lambda$0((ConceptServiceDetailListModel) obj, view);
                return;
            case 5:
                FavoriteServiceListModel.bind$lambda$0((FavoriteServiceListModel) obj, view);
                return;
            case 6:
                WonderServicesFragment this$05 = (WonderServicesFragment) obj;
                m<Object>[] mVarArr4 = WonderServicesFragment.f16464e;
                h.f(this$05, "this$0");
                yf.e eVar = (yf.e) this$05.f16466b.getValue();
                eVar.getClass();
                f fVar = new f(eVar, null);
                a0 a0Var3 = eVar.f13883c;
                v.C(a0Var3, null, 0, fVar, 3);
                v.D(a0Var3, eVar.f19673h, new yf.g(eVar, null));
                return;
            case 7:
                ProfileFragment this$06 = (ProfileFragment) obj;
                m<Object>[] mVarArr5 = ProfileFragment.f16570l;
                h.f(this$06, "this$0");
                ((gg.b) this$06.f.getValue()).d();
                return;
            case 8:
                ContactInfoFragment this$07 = (ContactInfoFragment) obj;
                m<Object>[] mVarArr6 = ContactInfoFragment.f16590j;
                h.f(this$07, "this$0");
                NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this$07.getContext());
                if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
                    if (defaultAdapter == null || defaultAdapter.isEnabled()) {
                        Context context = this$07.f16596g;
                        if (context != null) {
                            FragmentActivity activity2 = this$07.getActivity();
                            View viewFindViewById = activity2 != null ? activity2.findViewById(R.id.nav_view) : null;
                            int r43 = ke.d.f8929a;
                            ConstraintLayout constraintLayout = this$07.H().f16612g;
                            h.e(constraintLayout, "mContactInfoFragmentBind…g.profileContactContainer");
                            ke.d dVarE = d.a.e(constraintLayout, R.string.nfc_not_support, viewFindViewById, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
                            if (dVarE != null) {
                                dVarE.show();
                            }
                        }
                    } else {
                        FragmentActivity activity3 = this$07.getActivity();
                        if (activity3 != null && (supportFragmentManager2 = activity3.getSupportFragmentManager()) != null) {
                            new ie.e(new gg.a()).show(supportFragmentManager2, ie.e.class.getSimpleName());
                        }
                    }
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (z10) {
                    gf.b bVar = this$07.f16592b;
                    if (bVar == null) {
                        this$07.N();
                        return;
                    }
                    if (bVar == null) {
                        h.n("mNetworkHelper");
                        throw null;
                    }
                    if (!bVar.a()) {
                        this$07.O();
                        return;
                    }
                    this$07.f16597h = true;
                    String strI = this$07.I();
                    String str = (!h.a(strI, "tr") && h.a(strI, "en")) ? "edk-verification-by-id-operations-en" : "edk-verification-by-id-operations";
                    String string = this$07.getString(R.string.profile_id_verification_page);
                    h.e(string, "getString(R.string.profile_id_verification_page)");
                    Intent intent = new Intent("action.servicepage.open");
                    intent.putExtra("folderUrl", str);
                    intent.putExtra("serviceName", string);
                    intent.putExtra("isCustomPage", true);
                    intent.putExtra("isEdkFolder", true);
                    intent.putExtra("isFavMenuActive", false);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    this$07.startActivity(intent);
                    this$07.L("ContactEdit_Screen");
                    this$07.K("Contact_Edit");
                    return;
                }
                return;
            case 9:
                SettingsFragment this$08 = (SettingsFragment) obj;
                m<Object>[] mVarArr7 = SettingsFragment.f16674d;
                h.f(this$08, "this$0");
                String string2 = this$08.getString(R.string.settings_fragment_change_password);
                h.e(string2, "getString(R.string.setti…fragment_change_password)");
                Intent intent2 = new Intent("action.servicepage.open");
                intent2.putExtra("folderUrl", "https://giris.turkiye.gov.tr/Giris/Mobil/V2/SifreDegistir?start=1");
                intent2.putExtra("serviceName", string2);
                intent2.putExtra("isCustomPage", true);
                intent2.putExtra("isFavMenuActive", false);
                if (Build.VERSION.SDK_INT >= 34) {
                    intent2.setPackage("tr.gov.turkiye.edevlet.kapisi");
                }
                this$08.startActivity(intent2);
                this$08.G("ChangePassword_Screen");
                this$08.F("Change_Password");
                return;
            case 10:
                PDFViewActivity this$09 = (PDFViewActivity) obj;
                int r13 = PDFViewActivity.f16758e;
                h.f(this$09, "this$0");
                this$09.finish();
                return;
            case 11:
                InstitutionGridItemModel.bind$lambda$0((InstitutionGridItemModel) obj, view);
                return;
            case 12:
                MobileAccidentConditionFragment this$010 = (MobileAccidentConditionFragment) obj;
                m<Object>[] mVarArr8 = MobileAccidentConditionFragment.f17029k;
                h.f(this$010, "this$0");
                FragmentKt.findNavController(this$010).popBackStack();
                return;
            case 13:
                MobileAccidentIntroductionFragment this$011 = (MobileAccidentIntroductionFragment) obj;
                m<Object>[] mVarArr9 = MobileAccidentIntroductionFragment.f17319g;
                h.f(this$011, "this$0");
                this$011.f = "HOST";
                int r14 = Build.VERSION.SDK_INT;
                if (r14 >= 23) {
                    y.y(this$011);
                    return;
                }
                Intent intent3 = new Intent("action.barcode.open");
                if (r14 >= 34) {
                    intent3.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    return;
                }
                return;
            case 14:
                MobileAccidentCompletedReportFragment this$012 = (MobileAccidentCompletedReportFragment) obj;
                m<Object>[] mVarArr10 = MobileAccidentCompletedReportFragment.f17464l;
                h.f(this$012, "this$0");
                Chip chip = (Chip) view;
                this$012.I().f17165b.check(chip.getId());
                int id2 = chip.getId();
                rh.d dVarJ = this$012.J();
                if (id2 != 0) {
                    dVarJ.d();
                    return;
                }
                dVarJ.getClass();
                rh.g gVar3 = new rh.g(dVarJ, null);
                a0 a0Var4 = dVarJ.f13883c;
                v.C(a0Var4, null, 0, gVar3, 3);
                v.D(a0Var4, dVarJ.f14734h, new rh.h(dVarJ, null));
                return;
            case 15:
                MobileAccidentOnboardingFragment this$013 = (MobileAccidentOnboardingFragment) obj;
                m<Object>[] mVarArr11 = MobileAccidentOnboardingFragment.f;
                h.f(this$013, "this$0");
                this$013.F().d();
                return;
            case 16:
                MobileAccidentResultFragment this$014 = (MobileAccidentResultFragment) obj;
                m<Object>[] mVarArr12 = MobileAccidentResultFragment.f17531d;
                h.f(this$014, "this$0");
                FragmentKt.findNavController(this$014).navigate(R.id.mktMyReports, BundleKt.bundleOf(new l9.g("redirectToCompletedTab", Boolean.valueOf(!this$014.f17534c))), new NavOptions.Builder().setPopUpTo(R.id.mktIntroductionFragment, false).build());
                return;
            default:
                CardVerificationResultActivity this$015 = (CardVerificationResultActivity) obj;
                int r15 = CardVerificationResultActivity.f17585g;
                h.f(this$015, "this$0");
                this$015.finish();
                return;
        }
    }
}
