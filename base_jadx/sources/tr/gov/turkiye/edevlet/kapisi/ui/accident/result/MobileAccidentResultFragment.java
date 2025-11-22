package tr.gov.turkiye.edevlet.kapisi.ui.accident.result;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavOptions;
import androidx.navigation.fragment.FragmentKt;
import androidx.view.OnBackPressedCallback;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import io.realm.g0;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import r0.q;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentResultBinding;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/result/MobileAccidentResultFragment;", "Lee/a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentResultFragment extends ee.a {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f17531d = {androidx.room.util.a.b(MobileAccidentResultFragment.class, "mResultBinding", "getMResultBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentResultBinding;"), androidx.room.util.a.b(MobileAccidentResultFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17532a;

    /* renamed from: b, reason: collision with root package name */
    public String f17533b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f17534c;

    public /* synthetic */ class a extends g implements l<View, FragmentResultBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f17535a = new a();

        public a() {
            super(1, FragmentResultBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentResultBinding;", 0);
        }

        @Override // x9.l
        public final FragmentResultBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentResultBinding.bind(p02);
        }
    }

    public static final class b extends OnBackPressedCallback {
        public b() {
            super(true);
        }

        @Override // androidx.view.OnBackPressedCallback
        public final void handleOnBackPressed() {
            FragmentKt.findNavController(MobileAccidentResultFragment.this).navigate(R.id.mktIntroductionFragment, (Bundle) null, new NavOptions.Builder().setPopUpTo(R.id.navigation_home, false).build());
        }
    }

    public static final class c extends j implements l<q<uh.d, uh.c>, uh.d> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17537a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17538b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17539c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17537a = fragment;
            this.f17538b = dVar;
            this.f17539c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [r0.z, uh.d] */
        @Override // x9.l
        public final uh.d invoke(q<uh.d, uh.c> qVar) {
            q<uh.d, uh.c> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17538b);
            Fragment fragment = this.f17537a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17539c, clsQ, uh.c.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17540a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f17541b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17542c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f17540a = dVar;
            this.f17541b = cVar;
            this.f17542c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17540a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.result.a(this), w.a(uh.c.class), this.f17541b);
        }
    }

    public MobileAccidentResultFragment() {
        super(R.layout.fragment_result);
        this.f17532a = d0.C(this, a.f17535a);
        da.d dVarA = w.a(uh.d.class);
        new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f17531d[1]);
    }

    public final FragmentResultBinding E() {
        return (FragmentResultBinding) this.f17532a.a(this, f17531d[0]);
    }

    @Override // r0.w
    public final void invalidate() {
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
        requireActivity().getOnBackPressedDispatcher().addCallback(this, new b());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        view.getContext();
        Bundle arguments = getArguments();
        this.f17533b = String.valueOf(arguments != null ? Long.valueOf(arguments.getLong("reportNumber")) : null);
        g0 g0VarT = g0.t();
        g0VarT.m();
        MKTAccidentReport mKTAccidentReport = (MKTAccidentReport) g0VarT.J(MKTAccidentReport.class).e();
        if (mKTAccidentReport != null) {
            if (h.a(mKTAccidentReport.getRole(), "HOST")) {
                this.f17534c = true;
                E().f17185b.setText(getString(R.string.mkt_result_page_button_text));
                E().f17186c.setText(getString(R.string.mkt_result_page_host_title));
                E().f17187d.setText(getString(R.string.mkt_result_page_card_host_description));
            } else {
                this.f17534c = false;
                E().f17185b.setText(getString(R.string.mkt_result_page_completed_reports_button_text));
                E().f17186c.setText(getString(R.string.mkt_result_page_title));
                E().f17187d.setText(getString(R.string.mkt_result_page_card_description, this.f17533b));
            }
        }
        E().f17185b.setOnClickListener(new zd.e(16, this));
    }
}
