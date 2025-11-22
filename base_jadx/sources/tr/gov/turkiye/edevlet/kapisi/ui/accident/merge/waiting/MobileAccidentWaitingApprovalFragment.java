package tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.waiting;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavOptions;
import androidx.navigation.fragment.FragmentKt;
import androidx.view.OnBackPressedCallback;
import c5.u;
import c5.w;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.r;
import r0.c1;
import r0.d1;
import r0.k;
import r0.q;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlConfirmationRequestData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlConfirmationRequestInfo;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlConfirmationRequestMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlConfirmationRequestModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlConfirmationRequestObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlConfirmationRequestSubData;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentWaitingApprovalBinding;
import x9.l;
import x9.p;
import yd.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;", "Lee/a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentWaitingApprovalFragment extends ee.a {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f17443h = {androidx.room.util.a.b(MobileAccidentWaitingApprovalFragment.class, "mWaitingApprovalBinding", "getMWaitingApprovalBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;"), androidx.room.util.a.b(MobileAccidentWaitingApprovalFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17444a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f17445b;

    /* renamed from: c, reason: collision with root package name */
    public v.e f17446c;

    /* renamed from: d, reason: collision with root package name */
    public Context f17447d;

    /* renamed from: e, reason: collision with root package name */
    public ph.a f17448e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public int f17449g;

    public /* synthetic */ class a extends g implements l<View, FragmentWaitingApprovalBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f17450a = new a();

        public a() {
            super(1, FragmentWaitingApprovalBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;", 0);
        }

        @Override // x9.l
        public final FragmentWaitingApprovalBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentWaitingApprovalBinding.bind(p02);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.waiting.MobileAccidentWaitingApprovalFragment$onCreate$2", f = "MobileAccidentWaitingApprovalFragment.kt", l = {}, m = "invokeSuspend")
    public static final class c extends i implements p<r0.b<? extends Result<ControlConfirmationRequestModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f17452a;

        public c(p9.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            c cVar = MobileAccidentWaitingApprovalFragment.this.new c(dVar);
            cVar.f17452a = obj;
            return cVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(r0.b<? extends Result<ControlConfirmationRequestModel>> bVar, p9.d<? super l9.m> dVar) {
            return ((c) create(bVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            ControlConfirmationRequestObject controlConfirmationRequestObject;
            ControlConfirmationRequestSubData controlConfirmationRequestSubData;
            ControlConfirmationRequestMap controlConfirmationRequestMap;
            ControlConfirmationRequestInfo controlConfirmationRequestInfo;
            v.e eVar;
            w.F(obj);
            r0.b bVar = (r0.b) this.f17452a;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof k;
            MobileAccidentWaitingApprovalFragment mobileAccidentWaitingApprovalFragment = MobileAccidentWaitingApprovalFragment.this;
            if (z10) {
                yd.a.f19652a.c("Loading checkQRState  ***", new Object[0]);
                if (mobileAccidentWaitingApprovalFragment.f17449g >= mobileAccidentWaitingApprovalFragment.f && (eVar = mobileAccidentWaitingApprovalFragment.f17446c) != null) {
                    eVar.show();
                }
            } else if (bVar instanceof c1) {
                a.C0306a c0306a = yd.a.f19652a;
                c0306a.c("Success checkQRState  ***", new Object[0]);
                v.e eVar2 = mobileAccidentWaitingApprovalFragment.f17446c;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                try {
                    ControlConfirmationRequestData controlConfirmationRequestData = ((ControlConfirmationRequestModel) ((Result) ((c1) bVar).f13723b).getOrThrow()).getControlConfirmationRequestData();
                    if (h.a((controlConfirmationRequestData == null || (controlConfirmationRequestObject = controlConfirmationRequestData.getControlConfirmationRequestObject()) == null || (controlConfirmationRequestSubData = controlConfirmationRequestObject.getControlConfirmationRequestSubData()) == null || (controlConfirmationRequestMap = controlConfirmationRequestSubData.getControlConfirmationRequestMap()) == null || (controlConfirmationRequestInfo = controlConfirmationRequestMap.getControlConfirmationRequestInfo()) == null) ? null : Boolean.valueOf(controlConfirmationRequestInfo.getResult()), Boolean.TRUE)) {
                        c0306a.c("result true", new Object[0]);
                        FragmentKt.findNavController(mobileAccidentWaitingApprovalFragment).navigate(R.id.mktApprovalFragment);
                    } else {
                        c0306a.c("Check Approve - 0", new Object[0]);
                        if (mobileAccidentWaitingApprovalFragment.f17449g < mobileAccidentWaitingApprovalFragment.f) {
                            c0306a.c("Check Approve - 1", new Object[0]);
                            ph.a aVar = new ph.a(mobileAccidentWaitingApprovalFragment);
                            mobileAccidentWaitingApprovalFragment.f17448e = aVar;
                            aVar.start();
                        } else {
                            c0306a.c("Check Approve - 2", new Object[0]);
                            mobileAccidentWaitingApprovalFragment.E().f17199c.setVisibility(8);
                            mobileAccidentWaitingApprovalFragment.E().f17198b.setVisibility(0);
                        }
                    }
                } catch (Exception unused) {
                    yd.a.f19652a.c("Check Approve - 3", new Object[0]);
                }
            } else if (bVar instanceof r0.i) {
                yd.a.f19652a.c("Error checkQRState ***", new Object[0]);
            }
            return l9.m.f9594a;
        }
    }

    public static final class d extends OnBackPressedCallback {

        public static final class a extends j implements l<v.e, l9.m> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentWaitingApprovalFragment f17455a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(MobileAccidentWaitingApprovalFragment mobileAccidentWaitingApprovalFragment) {
                super(1);
                this.f17455a = mobileAccidentWaitingApprovalFragment;
            }

            @Override // x9.l
            public final l9.m invoke(v.e eVar) {
                v.e dialog = eVar;
                h.f(dialog, "dialog");
                dialog.dismiss();
                FragmentKt.findNavController(this.f17455a).navigate(R.id.mktIntroductionFragment, (Bundle) null, new NavOptions.Builder().setPopUpTo(R.id.navigation_home, false).build());
                return l9.m.f9594a;
            }
        }

        public static final class b extends j implements l<v.e, l9.m> {

            /* renamed from: a, reason: collision with root package name */
            public static final b f17456a = new b();

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

        public d() {
            super(true);
        }

        @Override // androidx.view.OnBackPressedCallback
        public final void handleOnBackPressed() {
            MobileAccidentWaitingApprovalFragment mobileAccidentWaitingApprovalFragment = MobileAccidentWaitingApprovalFragment.this;
            Context context = mobileAccidentWaitingApprovalFragment.f17447d;
            if (context != null) {
                v.e eVar = new v.e(context);
                v.e.f(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_title), null, 2);
                v.e.c(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_description), null, 6);
                v.e.e(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_positive_button), null, new a(mobileAccidentWaitingApprovalFragment), 2);
                v.e.d(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_negative_button), b.f17456a);
                eVar.show();
            }
        }
    }

    public static final class e extends j implements l<q<ph.d, ph.c>, ph.d> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17457a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17458b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17459c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17457a = fragment;
            this.f17458b = dVar;
            this.f17459c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [ph.d, r0.z] */
        @Override // x9.l
        public final ph.d invoke(q<ph.d, ph.c> qVar) {
            q<ph.d, ph.c> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17458b);
            Fragment fragment = this.f17457a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17459c, clsQ, ph.c.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class f extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17460a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f17461b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17462c;

        public f(da.d dVar, e eVar, da.d dVar2) {
            this.f17460a = dVar;
            this.f17461b = eVar;
            this.f17462c = dVar2;
        }

        public final l9.e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17460a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.waiting.a(this), kotlin.jvm.internal.w.a(ph.c.class), this.f17461b);
        }
    }

    public MobileAccidentWaitingApprovalFragment() {
        super(R.layout.fragment_waiting_approval);
        this.f17444a = d0.C(this, a.f17450a);
        da.d dVarA = kotlin.jvm.internal.w.a(ph.d.class);
        this.f17445b = new f(dVarA, new e(this, dVarA, dVarA), dVarA).t(this, f17443h[1]);
        this.f = 60;
    }

    public final FragmentWaitingApprovalBinding E() {
        return (FragmentWaitingApprovalBinding) this.f17444a.a(this, f17443h[0]);
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
        requireActivity().getOnBackPressedDispatcher().addCallback(this, new d());
        C((ph.d) this.f17445b.getValue(), new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.waiting.MobileAccidentWaitingApprovalFragment.b
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((ph.c) obj).f13240a;
            }
        }, D(null), new c(null));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        ph.a aVar = this.f17448e;
        if (aVar != null) {
            aVar.cancel();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        ph.a aVar = this.f17448e;
        if (aVar != null) {
            aVar.cancel();
        }
        ph.a aVar2 = this.f17448e;
        if (aVar2 != null) {
            aVar2.start();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        Context context = view.getContext();
        this.f17447d = context;
        if (context != null) {
            FragmentActivity activity = getActivity();
            Object systemService = activity != null ? activity.getSystemService("layout_inflater") : null;
            h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.progress_dialog, (ViewGroup) null);
            h.e(viewInflate, "inflater.inflate(R.layout.progress_dialog, null)");
            v.e eVar = new v.e(context);
            this.f17446c = eVar;
            u.n(eVar, viewInflate);
            v.e eVar2 = this.f17446c;
            if (eVar2 != null) {
                eVar2.b(false);
            }
        }
        ph.a aVar = new ph.a(this);
        this.f17448e = aVar;
        aVar.start();
        E().f17198b.setOnClickListener(new ie.d(15, this));
    }
}
