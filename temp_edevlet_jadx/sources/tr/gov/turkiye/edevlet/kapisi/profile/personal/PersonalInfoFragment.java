package tr.gov.turkiye.edevlet.kapisi.profile.personal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import c5.v;
import com.google.android.gms.internal.clearcut.d0;
import com.google.firebase.analytics.FirebaseAnalytics;
import da.m;
import fg.f;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import nc.a0;
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
import tr.gov.turkiye.edevlet.kapisi.data.profile.AddressInformation;
import tr.gov.turkiye.edevlet.kapisi.data.profile.IdentityInformation;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileServiceModel;
import tr.gov.turkiye.edevlet.kapisi.data.profile.UserProfileInfo;
import tr.gov.turkiye.edevlet.kapisi.data.profile.UserProfileResult;
import tr.gov.turkiye.edevlet.kapisi.profile.databinding.FragmentPersonalInfoBinding;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;", "Lee/a;", "<init>", "()V", "ui-profile_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class PersonalInfoFragment extends ee.a {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16659g = {androidx.room.util.a.b(PersonalInfoFragment.class, "mPersonalInfoFragmentBinding", "getMPersonalInfoFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;"), androidx.room.util.a.b(PersonalInfoFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public FirebaseAnalytics f16660a;

    /* renamed from: b, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16661b;

    /* renamed from: c, reason: collision with root package name */
    public Context f16662c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f16663d;

    /* renamed from: e, reason: collision with root package name */
    public ke.d f16664e;
    public final e f;

    public static final class a extends j implements l<fg.e, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(fg.e eVar) {
            fg.e state = eVar;
            h.f(state, "state");
            try {
                boolean z10 = state.f;
                boolean z11 = true;
                PersonalInfoFragment personalInfoFragment = PersonalInfoFragment.this;
                ProfileServiceModel profileServiceModel = state.f5647d;
                if (z10) {
                    r0.b<Result<ProfileServiceModel>> bVar = state.f5645b;
                    if (bVar instanceof d1 ? true : bVar instanceof k) {
                        m<Object>[] mVarArr = PersonalInfoFragment.f16659g;
                        personalInfoFragment.I().f16622b.f15873a.setVisibility(8);
                        personalInfoFragment.I().f16624d.setVisibility(8);
                        personalInfoFragment.I().f16632m.f15878a.setVisibility(8);
                        personalInfoFragment.I().f16625e.setVisibility(0);
                    } else if (bVar instanceof c1) {
                        PersonalInfoFragment.G(personalInfoFragment, profileServiceModel);
                    } else if (bVar instanceof i) {
                        PersonalInfoFragment.E(personalInfoFragment, ((i) bVar).f13749b, true);
                    }
                } else {
                    r0.b<Result<ProfileServiceModel>> bVar2 = state.f5644a;
                    if (!(bVar2 instanceof d1)) {
                        z11 = bVar2 instanceof k;
                    }
                    if (z11) {
                        m<Object>[] mVarArr2 = PersonalInfoFragment.f16659g;
                        personalInfoFragment.I().f16622b.f15873a.setVisibility(8);
                        personalInfoFragment.I().f16624d.setVisibility(8);
                        personalInfoFragment.I().f16632m.f15878a.setVisibility(8);
                        personalInfoFragment.I().f16625e.setVisibility(0);
                    } else if (bVar2 instanceof c1) {
                        PersonalInfoFragment.F(personalInfoFragment, profileServiceModel);
                    } else if (bVar2 instanceof i) {
                        PersonalInfoFragment.E(personalInfoFragment, ((i) bVar2).f13749b, false);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentPersonalInfoBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16666a = new b();

        public b() {
            super(1, FragmentPersonalInfoBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;", 0);
        }

        @Override // x9.l
        public final FragmentPersonalInfoBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentPersonalInfoBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<q<f, fg.e>, f> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16667a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16668b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16669c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16667a = fragment;
            this.f16668b = dVar;
            this.f16669c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [fg.f, r0.z] */
        @Override // x9.l
        public final f invoke(q<f, fg.e> qVar) {
            q<f, fg.e> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16668b);
            Fragment fragment = this.f16667a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16669c, clsQ, fg.e.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16670a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16671b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16672c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f16670a = dVar;
            this.f16671b = cVar;
            this.f16672c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16670a, new tr.gov.turkiye.edevlet.kapisi.profile.personal.a(this), w.a(fg.e.class), this.f16671b);
        }
    }

    public PersonalInfoFragment() {
        super(R.layout.fragment_personal_info);
        this.f16661b = d0.C(this, b.f16666a);
        this.f16663d = true;
        da.d dVarA = w.a(f.class);
        this.f = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f16659g[1]);
    }

    public static final void E(PersonalInfoFragment personalInfoFragment, Throwable th2, boolean z10) {
        View viewFindViewById;
        personalInfoFragment.getClass();
        if (th2 instanceof LoginException) {
            Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
            if (Build.VERSION.SDK_INT >= 34) {
                intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            personalInfoFragment.startActivity(intentB);
            FragmentActivity activity = personalInfoFragment.getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        if (!(th2 instanceof NetworkErrorException)) {
            if (!z10) {
                personalInfoFragment.K();
                return;
            }
            Context context = personalInfoFragment.f16662c;
            if (context != null) {
                FragmentActivity activity2 = personalInfoFragment.getActivity();
                viewFindViewById = activity2 != null ? activity2.findViewById(R.id.nav_view) : null;
                int r52 = ke.d.f8929a;
                NestedScrollView nestedScrollView = personalInfoFragment.I().f16624d;
                h.e(nestedScrollView, "mPersonalInfoFragmentBinding.profileContainer");
                ke.d dVarA = d.a.a(nestedScrollView, R.string.profile_info_update_error, viewFindViewById, R.drawable.toast_error, ContextCompat.getColor(context, R.color.error_color));
                if (dVarA != null) {
                    dVarA.show();
                    return;
                }
                return;
            }
            return;
        }
        if (!z10) {
            personalInfoFragment.I().f16625e.setVisibility(8);
            personalInfoFragment.I().f16632m.f15878a.setVisibility(8);
            personalInfoFragment.I().f16624d.setVisibility(8);
            personalInfoFragment.I().f16622b.f15873a.setVisibility(0);
            personalInfoFragment.I().f16622b.f15874b.setOnClickListener(new nf.a(4, personalInfoFragment));
            return;
        }
        Context context2 = personalInfoFragment.f16662c;
        if (context2 != null) {
            FragmentActivity activity3 = personalInfoFragment.getActivity();
            viewFindViewById = activity3 != null ? activity3.findViewById(R.id.nav_view) : null;
            int r53 = ke.d.f8929a;
            NestedScrollView nestedScrollView2 = personalInfoFragment.I().f16624d;
            h.e(nestedScrollView2, "mPersonalInfoFragmentBinding.profileContainer");
            ke.d dVarE = d.a.e(nestedScrollView2, R.string.connection_error_info, viewFindViewById, ContextCompat.getColor(context2, R.color.black), ContextCompat.getColor(context2, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    public static final void F(PersonalInfoFragment personalInfoFragment, ProfileServiceModel profileServiceModel) {
        personalInfoFragment.getClass();
        if (profileServiceModel.getUserProfileResult() == null) {
            personalInfoFragment.K();
            return;
        }
        personalInfoFragment.I().f16625e.setVisibility(8);
        personalInfoFragment.I().f16632m.f15878a.setVisibility(8);
        personalInfoFragment.I().f16622b.f15873a.setVisibility(8);
        personalInfoFragment.I().f16624d.setVisibility(0);
        personalInfoFragment.J(profileServiceModel.getUserProfileResult());
    }

    public static final void G(PersonalInfoFragment personalInfoFragment, ProfileServiceModel profileServiceModel) {
        Context context;
        ke.d dVar;
        personalInfoFragment.getClass();
        if (profileServiceModel.getUserProfileResult() == null) {
            personalInfoFragment.K();
            return;
        }
        personalInfoFragment.I().f16625e.setVisibility(8);
        personalInfoFragment.I().f16632m.f15878a.setVisibility(8);
        personalInfoFragment.I().f16622b.f15873a.setVisibility(8);
        personalInfoFragment.I().f16624d.setVisibility(0);
        personalInfoFragment.J(profileServiceModel.getUserProfileResult());
        if (personalInfoFragment.f16663d && (context = personalInfoFragment.f16662c) != null && (dVar = personalInfoFragment.f16664e) == null) {
            Boolean boolValueOf = dVar != null ? Boolean.valueOf(dVar.isShown()) : null;
            if (boolValueOf == null || !boolValueOf.booleanValue()) {
                FragmentActivity activity = personalInfoFragment.getActivity();
                View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
                int r02 = ke.d.f8929a;
                NestedScrollView nestedScrollView = personalInfoFragment.I().f16624d;
                h.e(nestedScrollView, "mPersonalInfoFragmentBinding.profileContainer");
                ke.d dVarA = d.a.a(nestedScrollView, R.string.profile_info_update_success, viewFindViewById, R.drawable.toast_success, ContextCompat.getColor(context, R.color.success_color));
                personalInfoFragment.f16664e = dVarA;
                if (dVarA != null) {
                    dVarA.show();
                }
            }
        }
    }

    @SuppressLint({"SimpleDateFormat"})
    public static String H(String str) {
        String str2;
        String str3 = "-";
        if (Build.VERSION.SDK_INT < 26) {
            try {
                str3 = new SimpleDateFormat("dd.MM.yyyy").format(new Date(str));
            } catch (Exception unused) {
            }
            h.e(str3, "{\n            try {\n    …\"\n            }\n        }");
            return str3;
        }
        try {
            try {
                LocalDateTime localDateTime = LocalDateTime.parse(str, DateTimeFormatter.ofPattern("MMM dd, yyyy h:mm:ss a"));
                DateTimeFormatter dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("dd.MM.yyyy");
                h.e(dateTimeFormatterOfPattern, "ofPattern(\"dd.MM.yyyy\")");
                str2 = localDateTime.format(dateTimeFormatterOfPattern);
            } catch (Exception unused2) {
                str3 = new SimpleDateFormat("dd.MM.yyyy").format(new Date(str));
                str2 = str3;
                h.e(str2, "{\n            try {\n    …}\n            }\n        }");
                return str2;
            }
        } catch (Exception unused3) {
            str2 = str3;
            h.e(str2, "{\n            try {\n    …}\n            }\n        }");
            return str2;
        }
        h.e(str2, "{\n            try {\n    …}\n            }\n        }");
        return str2;
    }

    public final FragmentPersonalInfoBinding I() {
        return (FragmentPersonalInfoBinding) this.f16661b.a(this, f16659g[0]);
    }

    public final void J(UserProfileResult userProfileResult) {
        if ((userProfileResult != null ? userProfileResult.getUserProfileInfo() : null) == null) {
            K();
            return;
        }
        UserProfileInfo userProfileInfo = userProfileResult.getUserProfileInfo();
        IdentityInformation identityInformation = userProfileInfo != null ? userProfileInfo.getIdentityInformation() : null;
        AddressInformation addressInformation = userProfileInfo != null ? userProfileInfo.getAddressInformation() : null;
        I().f16630k.setText(identityInformation != null ? identityInformation.getNameSurname() : null);
        I().f16628i.setText(identityInformation != null ? identityInformation.getFatherName() : null);
        I().f16629j.setText(identityInformation != null ? identityInformation.getMotherName() : null);
        I().f16626g.setText(H(identityInformation != null ? identityInformation.getBirthDate() : null));
        I().f16627h.setText(identityInformation != null ? identityInformation.getBirthPlace() : null);
        I().f.setText(addressInformation != null ? addressInformation.getDetailAddress() : null);
        I().f16631l.setText(H(identityInformation != null ? identityInformation.getInformationUpdateTime() : null));
        I().f16623c.setOnClickListener(new be.d(5, this));
    }

    public final void K() {
        I().f16625e.setVisibility(8);
        I().f16622b.f15873a.setVisibility(8);
        I().f16624d.setVisibility(8);
        I().f16632m.f15878a.setVisibility(0);
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((f) this.f.getValue(), new a());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        c5.w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f16662c = view.getContext();
        f fVar = (f) this.f.getValue();
        fVar.getClass();
        fg.g gVar = new fg.g(fVar, null);
        a0 a0Var = fVar.f13883c;
        v.C(a0Var, null, 0, gVar, 3);
        v.D(a0Var, fVar.f5649h, new fg.h(fVar, null));
    }
}
