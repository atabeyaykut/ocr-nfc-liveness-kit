package tr.gov.turkiye.edevlet.kapisi.profile.contact;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import c5.b4;
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
import l9.e;
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
import tr.gov.turkiye.edevlet.kapisi.profile.databinding.FragmentContactInfoBinding;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;", "Lee/a;", "<init>", "()V", "ui-profile_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ContactInfoFragment extends ee.a {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16590j = {androidx.room.util.a.b(ContactInfoFragment.class, "mContactInfoFragmentBinding", "getMContactInfoFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;"), androidx.room.util.a.b(ContactInfoFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ProfileContactViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public FirebaseAnalytics f16591a;

    /* renamed from: b, reason: collision with root package name */
    public gf.b f16592b;

    /* renamed from: c, reason: collision with root package name */
    public String f16593c;

    /* renamed from: d, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16594d;

    /* renamed from: e, reason: collision with root package name */
    public final e f16595e;
    public ProfileContactData f;

    /* renamed from: g, reason: collision with root package name */
    public Context f16596g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f16597h;

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
                ContactInfoFragment contactInfoFragment = ContactInfoFragment.this;
                if (z10) {
                    ContactInfoFragment.G(contactInfoFragment);
                } else if (bVar instanceof c1) {
                    ContactInfoFragment.F(contactInfoFragment, state.f5648e);
                } else if (bVar instanceof i) {
                    ContactInfoFragment.E(contactInfoFragment, ((i) bVar).f13749b);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentContactInfoBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16599a = new b();

        public b() {
            super(1, FragmentContactInfoBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;", 0);
        }

        @Override // x9.l
        public final FragmentContactInfoBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentContactInfoBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<q<gg.b, fg.e>, gg.b> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16600a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16601b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16602c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16600a = fragment;
            this.f16601b = dVar;
            this.f16602c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [gg.b, r0.z] */
        @Override // x9.l
        public final gg.b invoke(q<gg.b, fg.e> qVar) {
            q<gg.b, fg.e> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16601b);
            Fragment fragment = this.f16600a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16602c, clsQ, fg.e.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16603a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16604b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16605c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f16603a = dVar;
            this.f16604b = cVar;
            this.f16605c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16603a, new tr.gov.turkiye.edevlet.kapisi.profile.contact.a(this), w.a(fg.e.class), this.f16604b);
        }
    }

    public ContactInfoFragment() {
        super(R.layout.fragment_contact_info);
        this.f16594d = d0.C(this, b.f16599a);
        da.d dVarA = w.a(gg.b.class);
        this.f16595e = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f16590j[1]);
    }

    public static final void E(ContactInfoFragment contactInfoFragment, Throwable th2) {
        contactInfoFragment.getClass();
        if (th2 instanceof LoginException) {
            Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
            if (Build.VERSION.SDK_INT >= 34) {
                intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            contactInfoFragment.startActivity(intentB);
            FragmentActivity activity = contactInfoFragment.getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        if (!(th2 instanceof NetworkErrorException)) {
            contactInfoFragment.M();
            return;
        }
        contactInfoFragment.H().f16615j.setVisibility(8);
        contactInfoFragment.H().f16619n.f15878a.setVisibility(8);
        contactInfoFragment.H().f16613h.setVisibility(8);
        contactInfoFragment.H().f16609c.f15873a.setVisibility(0);
        contactInfoFragment.H().f16609c.f15874b.setOnClickListener(new xf.d(3, contactInfoFragment));
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0243  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void F(tr.gov.turkiye.edevlet.kapisi.profile.contact.ContactInfoFragment r13, tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactModel r14) {
        /*
            Method dump skipped, instructions count: 815
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.profile.contact.ContactInfoFragment.F(tr.gov.turkiye.edevlet.kapisi.profile.contact.ContactInfoFragment, tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactModel):void");
    }

    public static final void G(ContactInfoFragment contactInfoFragment) {
        contactInfoFragment.H().f16609c.f15873a.setVisibility(8);
        contactInfoFragment.H().f16613h.setVisibility(8);
        contactInfoFragment.H().f16619n.f15878a.setVisibility(8);
        contactInfoFragment.H().f16615j.setVisibility(0);
    }

    public final FragmentContactInfoBinding H() {
        return (FragmentContactInfoBinding) this.f16594d.a(this, f16590j[0]);
    }

    public final String I() {
        String str = this.f16593c;
        if (str != null) {
            return str;
        }
        h.n("mLanguage");
        throw null;
    }

    public final boolean J() {
        ProfileContactData profileContactData = this.f;
        if (profileContactData == null) {
            return false;
        }
        if (profileContactData != null) {
            return profileContactData.getHasTwoFactorUsageRight() == 1;
        }
        h.n("mUserProfileResult");
        throw null;
    }

    public final void K(String str) {
        try {
            FirebaseAnalytics firebaseAnalytics = this.f16591a;
            if (firebaseAnalytics == null) {
                h.n("firebaseAnalytics");
                throw null;
            }
            b4 b4Var = new b4(2, 0);
            b4Var.d("action", "Contact_Edit");
            firebaseAnalytics.a((Bundle) b4Var.f1418a, "EDK_Profile");
        } catch (Exception unused) {
        }
    }

    public final void L(String str) {
        try {
            FirebaseAnalytics firebaseAnalytics = this.f16591a;
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

    public final void M() {
        H().f16615j.setVisibility(8);
        H().f16609c.f15873a.setVisibility(8);
        H().f16613h.setVisibility(8);
        H().f16619n.f15878a.setVisibility(0);
    }

    public final void N() {
        Context context = this.f16596g;
        if (context != null) {
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r22 = ke.d.f8929a;
            ConstraintLayout constraintLayout = H().f16612g;
            h.e(constraintLayout, "mContactInfoFragmentBind…g.profileContactContainer");
            ke.d dVarA = d.a.a(constraintLayout, R.string.profile_info_update_error, viewFindViewById, R.drawable.toast_error, ContextCompat.getColor(context, R.color.error_color));
            if (dVarA != null) {
                dVarA.show();
            }
        }
    }

    public final void O() {
        Context context = this.f16596g;
        if (context != null) {
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r22 = ke.d.f8929a;
            ConstraintLayout constraintLayout = H().f16612g;
            h.e(constraintLayout, "mContactInfoFragmentBind…g.profileContactContainer");
            ke.d dVarE = d.a.e(constraintLayout, R.string.connection_error_info, viewFindViewById, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((gg.b) this.f16595e.getValue(), new a());
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
        if (this.f16597h) {
            ((gg.b) this.f16595e.getValue()).d();
            this.f16597h = false;
        }
        L("Profile_Contact_Screen");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f16596g = view.getContext();
        ((gg.b) this.f16595e.getValue()).d();
    }
}
