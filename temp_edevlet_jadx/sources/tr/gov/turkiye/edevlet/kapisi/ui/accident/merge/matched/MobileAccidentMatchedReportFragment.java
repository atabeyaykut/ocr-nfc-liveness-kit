package tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.matched;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavOptions;
import androidx.navigation.fragment.FragmentKt;
import androidx.view.OnBackPressedCallback;
import androidx.view.result.ActivityResultLauncher;
import androidx.view.result.contract.ActivityResultContracts;
import c5.u;
import c5.w;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import io.realm.g0;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.r;
import org.json.JSONObject;
import r0.c1;
import r0.d1;
import r0.k;
import r0.q;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRDraftModel;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentMatchedReportInfoBinding;
import x9.l;
import x9.p;
import yd.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;", "Lee/a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentMatchedReportFragment extends ee.a {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f17416m = {androidx.room.util.a.b(MobileAccidentMatchedReportFragment.class, "mMatchedReportInfoBinding", "getMMatchedReportInfoBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMatchedReportInfoBinding;"), androidx.room.util.a.b(MobileAccidentMatchedReportFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17417a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f17418b;

    /* renamed from: c, reason: collision with root package name */
    public v.e f17419c;

    /* renamed from: d, reason: collision with root package name */
    public Context f17420d;

    /* renamed from: e, reason: collision with root package name */
    public String f17421e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public String f17422g;

    /* renamed from: h, reason: collision with root package name */
    public String f17423h;

    /* renamed from: j, reason: collision with root package name */
    public String f17424j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f17425k;

    /* renamed from: l, reason: collision with root package name */
    public final ActivityResultLauncher<Intent> f17426l;

    public static final class a extends j implements l<nh.b, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f17427a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(nh.b bVar) {
            nh.b state = bVar;
            h.f(state, "state");
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends kotlin.jvm.internal.g implements l<View, FragmentMatchedReportInfoBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f17428a = new b();

        public b() {
            super(1, FragmentMatchedReportInfoBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMatchedReportInfoBinding;", 0);
        }

        @Override // x9.l
        public final FragmentMatchedReportInfoBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentMatchedReportInfoBinding.bind(p02);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.matched.MobileAccidentMatchedReportFragment$onCreate$2", f = "MobileAccidentMatchedReportFragment.kt", l = {}, m = "invokeSuspend")
    public static final class d extends i implements p<r0.b<? extends Result<ScanQRDraftModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f17430a;

        public d(p9.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            d dVar2 = MobileAccidentMatchedReportFragment.this.new d(dVar);
            dVar2.f17430a = obj;
            return dVar2;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(r0.b<? extends Result<ScanQRDraftModel>> bVar, p9.d<? super l9.m> dVar) {
            return ((d) create(bVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            Intent intentE;
            w.F(obj);
            r0.b bVar = (r0.b) this.f17430a;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof k;
            MobileAccidentMatchedReportFragment mobileAccidentMatchedReportFragment = MobileAccidentMatchedReportFragment.this;
            if (z10) {
                yd.a.f19652a.c("Loading scanqrdraft  ***", new Object[0]);
                if (mobileAccidentMatchedReportFragment.f17425k) {
                    mobileAccidentMatchedReportFragment.f17425k = false;
                    v.e eVar = mobileAccidentMatchedReportFragment.f17419c;
                    if (eVar != null) {
                        eVar.show();
                    }
                }
            } else if (bVar instanceof c1) {
                a.C0306a c0306a = yd.a.f19652a;
                c0306a.c("success scanqrdraft  ***", new Object[0]);
                v.e eVar2 = mobileAccidentMatchedReportFragment.f17419c;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                if (h.a(mobileAccidentMatchedReportFragment.f17421e, "HOST")) {
                    mobileAccidentMatchedReportFragment.f17425k = false;
                    Context context = mobileAccidentMatchedReportFragment.f17420d;
                    if (context != null) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("scenarioId", mobileAccidentMatchedReportFragment.f17422g);
                        jSONObject.put("partyId", mobileAccidentMatchedReportFragment.f);
                        c0306a.c("json " + jSONObject, new Object[0]);
                        String str = "https://www.turkiye.gov.tr/sbm-mobil-kaza-tespit-tutanagi?kroki=duzenle&par=" + mobileAccidentMatchedReportFragment.f + "&sce=" + mobileAccidentMatchedReportFragment.f17422g;
                        String string = context.getString(R.string.mkt_toolbar_title);
                        String string2 = jSONObject.toString();
                        h.e(string2, "toString()");
                        h.e(string, "getString(R.string.mkt_toolbar_title)");
                        intentE = ze.a.e(str, string2, string);
                    } else {
                        intentE = null;
                    }
                    mobileAccidentMatchedReportFragment.f17426l.launch(intentE);
                }
            } else if (bVar instanceof r0.i) {
                yd.a.f19652a.c("Error scanqrdraft ***", new Object[0]);
                mobileAccidentMatchedReportFragment.f17425k = false;
            }
            return l9.m.f9594a;
        }
    }

    public static final class e extends OnBackPressedCallback {

        public static final class a extends j implements l<v.e, l9.m> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentMatchedReportFragment f17433a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(MobileAccidentMatchedReportFragment mobileAccidentMatchedReportFragment) {
                super(1);
                this.f17433a = mobileAccidentMatchedReportFragment;
            }

            @Override // x9.l
            public final l9.m invoke(v.e eVar) {
                v.e dialog = eVar;
                h.f(dialog, "dialog");
                dialog.dismiss();
                FragmentKt.findNavController(this.f17433a).navigate(R.id.mktIntroductionFragment, (Bundle) null, new NavOptions.Builder().setPopUpTo(R.id.navigation_home, false).build());
                return l9.m.f9594a;
            }
        }

        public static final class b extends j implements l<v.e, l9.m> {

            /* renamed from: a, reason: collision with root package name */
            public static final b f17434a = new b();

            public b() {
                super(1);
            }

            @Override // x9.l
            public final l9.m invoke(v.e eVar) {
                v.e dialog = eVar;
                h.f(dialog, "dialog");
                dialog.dismiss();
                return l9.m.f9594a;
            }
        }

        public e() {
            super(true);
        }

        @Override // androidx.view.OnBackPressedCallback
        public final void handleOnBackPressed() {
            MobileAccidentMatchedReportFragment mobileAccidentMatchedReportFragment = MobileAccidentMatchedReportFragment.this;
            Context context = mobileAccidentMatchedReportFragment.f17420d;
            if (context != null) {
                v.e eVar = new v.e(context);
                v.e.f(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_title), null, 2);
                v.e.c(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_description), null, 6);
                v.e.e(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_positive_button), null, new a(mobileAccidentMatchedReportFragment), 2);
                v.e.d(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_negative_button), b.f17434a);
                eVar.show();
            }
        }
    }

    public static final class f extends j implements l<q<nh.c, nh.b>, nh.c> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17435a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17436b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17437c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17435a = fragment;
            this.f17436b = dVar;
            this.f17437c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [nh.c, r0.z] */
        @Override // x9.l
        public final nh.c invoke(q<nh.c, nh.b> qVar) {
            q<nh.c, nh.b> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17436b);
            Fragment fragment = this.f17435a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17437c, clsQ, nh.b.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class g extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17438a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f17439b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17440c;

        public g(da.d dVar, f fVar, da.d dVar2) {
            this.f17438a = dVar;
            this.f17439b = fVar;
            this.f17440c = dVar2;
        }

        public final l9.e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17438a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.matched.a(this), kotlin.jvm.internal.w.a(nh.b.class), this.f17439b);
        }
    }

    public MobileAccidentMatchedReportFragment() {
        super(R.layout.fragment_matched_report_info);
        this.f17417a = d0.C(this, b.f17428a);
        da.d dVarA = kotlin.jvm.internal.w.a(nh.c.class);
        this.f17418b = new g(dVarA, new f(this, dVarA, dVarA), dVarA).t(this, f17416m[1]);
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new androidx.camera.core.impl.k(7, this));
        h.e(activityResultLauncherRegisterForActivityResult, "registerForActivityResul…}\n            }\n        }");
        this.f17426l = activityResultLauncherRegisterForActivityResult;
    }

    public final FragmentMatchedReportInfoBinding E() {
        return (FragmentMatchedReportInfoBinding) this.f17417a.a(this, f17416m[0]);
    }

    public final void F(String str) {
        Context context = this.f17420d;
        if (context != null) {
            if (str == null || str.length() == 0) {
                str = getString(R.string.service_error_info);
            }
            h.e(str, "if (errorMessage.isNullO…rrorMessage\n            }");
            int r12 = ke.d.f8929a;
            NestedScrollView nestedScrollView = E().f17161c;
            h.e(nestedScrollView, "mMatchedReportInfoBinding.mktMatchedMainContainer");
            ke.d dVarB = d.a.b(nestedScrollView, str, ContextCompat.getColor(context, R.color.error_color));
            if (dVarB != null) {
                dVarB.show();
            }
        }
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((nh.c) this.f17418b.getValue(), a.f17427a);
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
        requireActivity().getOnBackPressedDispatcher().addCallback(this, new e());
        C((nh.c) this.f17418b.getValue(), new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.matched.MobileAccidentMatchedReportFragment.c
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((nh.b) obj).f11006a;
            }
        }, D(null), new d(null));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f17420d = view.getContext();
        Bundle arguments = getArguments();
        this.f17423h = arguments != null ? arguments.getString("identityNumber") : null;
        Bundle arguments2 = getArguments();
        this.f17424j = arguments2 != null ? arguments2.getString("plateNumber") : null;
        Context context = this.f17420d;
        if (context != null) {
            FragmentActivity activity = getActivity();
            Object systemService = activity != null ? activity.getSystemService("layout_inflater") : null;
            h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.progress_dialog, (ViewGroup) null);
            h.e(viewInflate, "inflater.inflate(R.layout.progress_dialog, null)");
            v.e eVar = new v.e(context);
            this.f17419c = eVar;
            u.n(eVar, viewInflate);
            v.e eVar2 = this.f17419c;
            if (eVar2 != null) {
                eVar2.b(false);
            }
        }
        g0 g0VarT = g0.t();
        g0VarT.m();
        MKTAccidentReport mKTAccidentReport = (MKTAccidentReport) g0VarT.J(MKTAccidentReport.class).e();
        if (mKTAccidentReport != null) {
            this.f17421e = mKTAccidentReport.getRole();
            this.f = mKTAccidentReport.getId();
            this.f17422g = mKTAccidentReport.getScenarioId();
        }
        E().f17162d.setText(this.f17423h);
        TextView textView = E().f17163e;
        String str = this.f17424j;
        textView.setText(str != null ? ge.f.d(str) : null);
        E().f17160b.setOnClickListener(new zd.d(18, this));
    }
}
