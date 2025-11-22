package tr.gov.turkiye.edevlet.kapisi.profile.settings;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import c5.b4;
import c5.w;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.transition.MaterialSharedAxis;
import com.google.firebase.analytics.FirebaseAnalytics;
import da.m;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import t1.f;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.profile.databinding.FragmentSettingsBinding;
import x9.l;
import xf.d;
import zd.e;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/profile/settings/SettingsFragment;", "Lee/a;", "<init>", "()V", "ui-profile_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class SettingsFragment extends ee.a {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16674d = {androidx.room.util.a.b(SettingsFragment.class, "mSettingsFragmentBinding", "getMSettingsFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentSettingsBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public FirebaseAnalytics f16675a;

    /* renamed from: b, reason: collision with root package name */
    public String f16676b;

    /* renamed from: c, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16677c;

    public /* synthetic */ class a extends g implements l<View, FragmentSettingsBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f16678a = new a();

        public a() {
            super(1, FragmentSettingsBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentSettingsBinding;", 0);
        }

        @Override // x9.l
        public final FragmentSettingsBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentSettingsBinding.bind(p02);
        }
    }

    public SettingsFragment() {
        super(R.layout.fragment_settings);
        this.f16677c = d0.C(this, a.f16678a);
    }

    public final FragmentSettingsBinding E() {
        return (FragmentSettingsBinding) this.f16677c.a(this, f16674d[0]);
    }

    public final void F(String str) {
        try {
            FirebaseAnalytics firebaseAnalytics = this.f16675a;
            if (firebaseAnalytics == null) {
                h.n("firebaseAnalytics");
                throw null;
            }
            b4 b4Var = new b4(2, 0);
            b4Var.d("action", str);
            firebaseAnalytics.a((Bundle) b4Var.f1418a, "EDK_Settings");
        } catch (Exception unused) {
        }
    }

    public final void G(String str) {
        try {
            FirebaseAnalytics firebaseAnalytics = this.f16675a;
            if (firebaseAnalytics == null) {
                h.n("firebaseAnalytics");
                throw null;
            }
            b4 b4Var = new b4(2, 0);
            b4Var.d("screen_name", str);
            b4Var.d("screen_class", "SettingsFragment");
            firebaseAnalytics.a((Bundle) b4Var.f1418a, "screen_view");
        } catch (Exception unused) {
        }
    }

    @Override // r0.w
    public final void invalidate() {
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        MaterialSharedAxis materialSharedAxis = new MaterialSharedAxis(2, true);
        materialSharedAxis.setDuration(getResources().getInteger(R.integer.app_motion_duration_large));
        setEnterTransition(materialSharedAxis);
        MaterialSharedAxis materialSharedAxis2 = new MaterialSharedAxis(2, false);
        materialSharedAxis2.setDuration(getResources().getInteger(R.integer.app_motion_duration_large));
        setReturnTransition(materialSharedAxis2);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        G("Settings_Screen");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        MaterialCardView materialCardView;
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        int r32 = 0;
        if (arguments != null ? arguments.getBoolean("active2fa", false) : false) {
            materialCardView = E().f16647d;
        } else {
            materialCardView = E().f16647d;
            r32 = 8;
        }
        materialCardView.setVisibility(r32);
        E().f16648e.setVisibility(r32);
        E().f16645b.setOnClickListener(new e(9, this));
        E().f16646c.setOnClickListener(new f(6, this));
        E().f16647d.setOnClickListener(new d(4, this));
    }
}
