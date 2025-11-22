package tr.gov.turkiye.edevlet.kapisi.profile;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.navigation.fragment.FragmentKt;
import c5.b4;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.transition.MaterialFadeThrough;
import com.google.firebase.analytics.FirebaseAnalytics;
import da.m;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import r0.c1;
import r0.d1;
import r0.i;
import r0.k;
import r0.q;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactData;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactModel;
import tr.gov.turkiye.edevlet.kapisi.profile.databinding.FragmentProfileBackupBinding;
import tr.gov.turkiye.edevlet.kapisi.profile.ui.controller.ProfileUIController;
import x9.l;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;", "<init>", "()V", "ui-profile_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ProfileFragment extends ee.a implements ProfileUIController.a {

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16570l = {androidx.room.util.a.b(ProfileFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ProfileContactViewModel;"), androidx.room.util.a.b(ProfileFragment.class, "mProfileFragmentBinding", "getMProfileFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public gf.b f16571a;

    /* renamed from: b, reason: collision with root package name */
    public FirebaseAnalytics f16572b;

    /* renamed from: c, reason: collision with root package name */
    public SharedPreferences f16573c;

    /* renamed from: d, reason: collision with root package name */
    public String f16574d;

    /* renamed from: e, reason: collision with root package name */
    public ProfileContactData f16575e;
    public final l9.e f;

    /* renamed from: g, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16576g;

    /* renamed from: h, reason: collision with root package name */
    public Context f16577h;

    /* renamed from: j, reason: collision with root package name */
    public ProfileUIController f16578j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f16579k;

    public static final class a extends j implements l<fg.e, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(fg.e eVar) {
            fg.e state = eVar;
            h.f(state, "state");
            try {
                r0.b<Result<ProfileContactModel>> bVar = state.f5646c;
                boolean z10 = bVar instanceof d1 ? true : bVar instanceof k;
                ProfileFragment profileFragment = ProfileFragment.this;
                if (z10) {
                    ProfileFragment.G(profileFragment);
                } else if (bVar instanceof c1) {
                    ProfileFragment.F(profileFragment, state.f5648e);
                } else if (bVar instanceof i) {
                    ProfileFragment.E(profileFragment, ((i) bVar).f13749b);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentProfileBackupBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16581a = new b();

        public b() {
            super(1, FragmentProfileBackupBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;", 0);
        }

        @Override // x9.l
        public final FragmentProfileBackupBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentProfileBackupBinding.bind(p02);
        }
    }

    public static final class c implements MenuProvider {
        public c() {
        }

        @Override // androidx.core.view.MenuProvider
        public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
            h.f(menu, "menu");
            h.f(menuInflater, "menuInflater");
            menuInflater.inflate(R.menu.profile_fragment_menu, menu);
        }

        @Override // androidx.core.view.MenuProvider
        public final /* synthetic */ void onMenuClosed(Menu menu) {
            androidx.core.view.h.a(this, menu);
        }

        @Override // androidx.core.view.MenuProvider
        public final boolean onMenuItemSelected(MenuItem menuItem) {
            h.f(menuItem, "menuItem");
            int itemId = menuItem.getItemId();
            ProfileFragment profileFragment = ProfileFragment.this;
            if (itemId == R.id.menu_logout) {
                Context context = profileFragment.f16577h;
                if (context != null) {
                    v.e eVar = new v.e(context);
                    v.e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.profile_logout_dialog_text, eVar, null, 6, R.string.profile_logout_dialog_yes), null, new fg.b(context, profileFragment), 2);
                    v.e.d(eVar, Integer.valueOf(R.string.profile_logout_dialog_no), fg.c.f5626a);
                    eVar.show();
                }
                profileFragment.J("Logout");
            } else if (itemId == R.id.menu_help) {
                m<Object>[] mVarArr = ProfileFragment.f16570l;
                String str = profileFragment.f16574d;
                if (str == null) {
                    h.n("mLanguage");
                    throw null;
                }
                String str2 = (!h.a(str, "tr") && h.a(str, "en")) ? "edk-profil-yardim-en" : "edk-profil-yardim";
                String string = profileFragment.getString(R.string.profile_settings_help);
                h.e(string, "getString(R.string.profile_settings_help)");
                profileFragment.M(string, str2, true);
                profileFragment.K("Help_Screen");
                profileFragment.J("Help");
            }
            return true;
        }

        @Override // androidx.core.view.MenuProvider
        public final /* synthetic */ void onPrepareMenu(Menu menu) {
            androidx.core.view.h.b(this, menu);
        }
    }

    public static final class d extends j implements l<q<gg.b, fg.e>, gg.b> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16583a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16584b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16585c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16583a = fragment;
            this.f16584b = dVar;
            this.f16585c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [gg.b, r0.z] */
        @Override // x9.l
        public final gg.b invoke(q<gg.b, fg.e> qVar) {
            q<gg.b, fg.e> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16584b);
            Fragment fragment = this.f16583a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16585c, clsQ, fg.e.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class e extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16586a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16587b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16588c;

        public e(da.d dVar, d dVar2, da.d dVar3) {
            this.f16586a = dVar;
            this.f16587b = dVar2;
            this.f16588c = dVar3;
        }

        public final l9.e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16586a, new tr.gov.turkiye.edevlet.kapisi.profile.a(this), w.a(fg.e.class), this.f16587b);
        }
    }

    public ProfileFragment() {
        super(R.layout.fragment_profile_backup);
        da.d dVarA = w.a(gg.b.class);
        this.f = new e(dVarA, new d(this, dVarA, dVarA), dVarA).t(this, f16570l[0]);
        this.f16576g = d0.C(this, b.f16581a);
    }

    public static final void E(ProfileFragment profileFragment, Throwable th2) {
        profileFragment.getClass();
        if (th2 instanceof LoginException) {
            Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
            if (Build.VERSION.SDK_INT >= 34) {
                intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            profileFragment.startActivity(intentB);
            FragmentActivity activity = profileFragment.getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        if (!(th2 instanceof NetworkErrorException)) {
            profileFragment.N();
            return;
        }
        profileFragment.H().f16639h.setVisibility(8);
        profileFragment.H().f16642k.f15878a.setVisibility(8);
        profileFragment.H().f.setVisibility(8);
        profileFragment.H().f16635c.f15873a.setVisibility(0);
        profileFragment.H().f16635c.f15874b.setOnClickListener(new zd.e(7, profileFragment));
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void F(tr.gov.turkiye.edevlet.kapisi.profile.ProfileFragment r16, tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactModel r17) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.profile.ProfileFragment.F(tr.gov.turkiye.edevlet.kapisi.profile.ProfileFragment, tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactModel):void");
    }

    public static final void G(ProfileFragment profileFragment) {
        profileFragment.H().f16635c.f15873a.setVisibility(8);
        profileFragment.H().f.setVisibility(8);
        profileFragment.H().f16642k.f15878a.setVisibility(8);
        profileFragment.H().f16639h.setVisibility(0);
    }

    public final FragmentProfileBackupBinding H() {
        return (FragmentProfileBackupBinding) this.f16576g.a(this, f16570l[1]);
    }

    public final SharedPreferences I() {
        SharedPreferences sharedPreferences = this.f16573c;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        h.n("sharedPreferences");
        throw null;
    }

    public final void J(String str) {
        try {
            FirebaseAnalytics firebaseAnalytics = this.f16572b;
            if (firebaseAnalytics == null) {
                h.n("firebaseAnalytics");
                throw null;
            }
            b4 b4Var = new b4(2, 0);
            b4Var.d("action", str);
            firebaseAnalytics.a((Bundle) b4Var.f1418a, "EDK_Profile");
        } catch (Exception unused) {
        }
    }

    public final void K(String str) {
        try {
            FirebaseAnalytics firebaseAnalytics = this.f16572b;
            if (firebaseAnalytics == null) {
                h.n("firebaseAnalytics");
                throw null;
            }
            b4 b4Var = new b4(2, 0);
            b4Var.d("screen_name", str);
            b4Var.d("screen_class", "ProfileFragment");
            firebaseAnalytics.a((Bundle) b4Var.f1418a, "screen_view");
        } catch (Exception unused) {
        }
    }

    public final void L() {
        this.f16579k = true;
        String str = this.f16574d;
        if (str == null) {
            h.n("mLanguage");
            throw null;
        }
        String str2 = (!h.a(str, "tr") && h.a(str, "en")) ? "edk-2fa-operations-en" : "edk-2fa-operations";
        String string = getString(R.string.settings_fragment_two_factor);
        h.e(string, "getString(R.string.settings_fragment_two_factor)");
        M(string, str2, true);
        K("TwoFactorSettings_Screen");
        J("Two_Factor_Settings");
    }

    public final void M(String str, String str2, boolean z10) {
        View viewFindViewById;
        gf.b bVar = this.f16571a;
        if (bVar == null) {
            Context context = this.f16577h;
            if (context != null) {
                FragmentActivity activity = getActivity();
                viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
                int r6 = ke.d.f8929a;
                ConstraintLayout constraintLayout = H().f16640i;
                h.e(constraintLayout, "mProfileFragmentBinding.profileMainContainer");
                ke.d dVarA = d.a.a(constraintLayout, R.string.profile_info_update_error, viewFindViewById, R.drawable.toast_error, ContextCompat.getColor(context, R.color.error_color));
                if (dVarA != null) {
                    dVarA.show();
                    return;
                }
                return;
            }
            return;
        }
        if (bVar.a()) {
            Intent intent = new Intent("action.servicepage.open");
            intent.putExtra("folderUrl", str2);
            intent.putExtra("serviceName", str);
            intent.putExtra("isCustomPage", true);
            intent.putExtra("isEdkFolder", z10);
            intent.putExtra("isFavMenuActive", false);
            if (Build.VERSION.SDK_INT >= 34) {
                intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            startActivity(intent);
            return;
        }
        Context context2 = this.f16577h;
        if (context2 != null) {
            FragmentActivity activity2 = getActivity();
            viewFindViewById = activity2 != null ? activity2.findViewById(R.id.nav_view) : null;
            int r62 = ke.d.f8929a;
            ConstraintLayout constraintLayout2 = H().f16640i;
            h.e(constraintLayout2, "mProfileFragmentBinding.profileMainContainer");
            ke.d dVarE = d.a.e(constraintLayout2, R.string.connection_error_info, viewFindViewById, ContextCompat.getColor(context2, R.color.black), ContextCompat.getColor(context2, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    public final void N() {
        H().f16639h.setVisibility(8);
        H().f16635c.f15873a.setVisibility(8);
        H().f.setVisibility(8);
        H().f16642k.f15878a.setVisibility(0);
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((gg.b) this.f.getValue(), new a());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        c5.w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setEnterTransition(new MaterialFadeThrough());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.f16579k) {
            ((gg.b) this.f.getValue()).d();
            this.f16579k = false;
        }
        K("Profile_Screen");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f16577h = view.getContext();
        this.f16578j = new ProfileUIController(this);
        EpoxyRecyclerView epoxyRecyclerView = H().f16641j;
        ProfileUIController profileUIController = this.f16578j;
        if (profileUIController == null) {
            h.n("mProfileUIController");
            throw null;
        }
        epoxyRecyclerView.setController(profileUIController);
        ((gg.b) this.f.getValue()).d();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        h.e(fragmentActivityRequireActivity, "requireActivity()");
        fragmentActivityRequireActivity.addMenuProvider(new c(), getViewLifecycleOwner(), Lifecycle.State.RESUMED);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.profile.ui.controller.ProfileUIController.a
    public final void s(jg.a operation) {
        String str;
        h.f(operation, "operation");
        int r42 = operation.f8507a;
        if (r42 == 1) {
            FragmentKt.findNavController(this).navigate(R.id.personalInfoFragment);
            str = "Id_And_Address_Info";
        } else if (r42 == 2) {
            String string = getString(R.string.settings_fragment_change_password);
            h.e(string, "getString(R.string.setti…fragment_change_password)");
            M(string, "https://giris.turkiye.gov.tr/Giris/Mobil/V2/SifreDegistir?start=1", false);
            K("ChangePassword_Screen");
            str = "Change_Password";
        } else {
            if (r42 == 3) {
                L();
                return;
            }
            if (r42 != 4) {
                if (r42 != 5) {
                    return;
                }
                String str2 = this.f16574d;
                if (str2 == null) {
                    h.n("mLanguage");
                    throw null;
                }
                String str3 = (!h.a(str2, "tr") && h.a(str2, "en")) ? "edk-erisim-kisitlamalari-en" : "edk-erisim-kisitlamalari";
                String string2 = getString(R.string.profile_item_account_access);
                h.e(string2, "getString(R.string.profile_item_account_access)");
                M(string2, str3, true);
                K("AccessRestrictions_Screen");
                J("Access_Restrictions");
                return;
            }
            String string3 = getString(R.string.settings_fragment_usage_history);
            h.e(string3, "getString(R.string.setti…s_fragment_usage_history)");
            M(string3, "edk-login-history", true);
            K("UsageHistory_Screen");
            str = "Usage_History";
        }
        J(str);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.profile.ui.controller.ProfileUIController.a
    public final void t() {
        this.f16579k = true;
        FragmentKt.findNavController(this).navigate(R.id.contactInfoFragment);
    }
}
