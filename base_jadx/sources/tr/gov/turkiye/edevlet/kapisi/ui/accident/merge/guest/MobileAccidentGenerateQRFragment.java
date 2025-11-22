package tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.os.BundleKt;
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
import kotlin.jvm.internal.r;
import r0.c1;
import r0.d1;
import r0.k;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlQRScanData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlQRScanInfo;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlQRScanMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlQRScanModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlQRScanObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlQRScanSubData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.GenerateQRData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.GenerateQRInfo;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.GenerateQRModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.GenerateQRObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ParticipantArray;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentShowQrBinding;
import x9.l;
import x9.q;
import yd.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;", "Lee/a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentGenerateQRFragment extends ee.a {

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f17363l = {androidx.room.util.a.b(MobileAccidentGenerateQRFragment.class, "mGenerateQRBinding", "getMGenerateQRBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;"), androidx.room.util.a.b(MobileAccidentGenerateQRFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17364a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f17365b;

    /* renamed from: c, reason: collision with root package name */
    public v.e f17366c;

    /* renamed from: d, reason: collision with root package name */
    public Context f17367d;

    /* renamed from: e, reason: collision with root package name */
    public lh.b f17368e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public String f17369g;

    /* renamed from: h, reason: collision with root package name */
    public String f17370h;

    /* renamed from: j, reason: collision with root package name */
    public final int f17371j;

    /* renamed from: k, reason: collision with root package name */
    public int f17372k;

    public /* synthetic */ class a extends kotlin.jvm.internal.g implements l<View, FragmentShowQrBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f17373a = new a();

        public a() {
            super(1, FragmentShowQrBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;", 0);
        }

        @Override // x9.l
        public final FragmentShowQrBinding invoke(View view) {
            View p02 = view;
            kotlin.jvm.internal.h.f(p02, "p0");
            return FragmentShowQrBinding.bind(p02);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRFragment$onCreate$3", f = "MobileAccidentGenerateQRFragment.kt", l = {}, m = "invokeSuspend")
    public static final class d extends r9.i implements q<r0.b<? extends Result<ControlQRScanModel>>, ControlQRScanModel, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ r0.b f17376a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ ControlQRScanModel f17377b;

        public d(p9.d<? super d> dVar) {
            super(3, dVar);
        }

        @Override // x9.q
        public final Object i(r0.b<? extends Result<ControlQRScanModel>> bVar, ControlQRScanModel controlQRScanModel, p9.d<? super l9.m> dVar) {
            d dVar2 = MobileAccidentGenerateQRFragment.this.new d(dVar);
            dVar2.f17376a = bVar;
            dVar2.f17377b = controlQRScanModel;
            return dVar2.invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            ControlQRScanObject checkScannedQRCodeObject;
            ControlQRScanMap controlQRScanMap;
            ControlQRScanSubData controlQRScanSubData;
            w.F(obj);
            r0.b bVar = this.f17376a;
            ControlQRScanModel controlQRScanModel = this.f17377b;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof k;
            MobileAccidentGenerateQRFragment mobileAccidentGenerateQRFragment = MobileAccidentGenerateQRFragment.this;
            if (z10) {
                a.C0306a c0306a = yd.a.f19652a;
                c0306a.c("Loading checkQRState  ***", new Object[0]);
                if (mobileAccidentGenerateQRFragment.f17372k >= mobileAccidentGenerateQRFragment.f17371j) {
                    c0306a.c("Loading checkQRState  *****", new Object[0]);
                    v.e eVar = mobileAccidentGenerateQRFragment.f17366c;
                    if (eVar != null) {
                        eVar.show();
                    }
                }
            } else if (bVar instanceof c1) {
                v.e eVar2 = mobileAccidentGenerateQRFragment.f17366c;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                ControlQRScanData controlQRScanData = controlQRScanModel.getControlQRScanData();
                ControlQRScanInfo controlQRScanInfo = (controlQRScanData == null || (checkScannedQRCodeObject = controlQRScanData.getCheckScannedQRCodeObject()) == null || (controlQRScanMap = checkScannedQRCodeObject.getControlQRScanMap()) == null || (controlQRScanSubData = controlQRScanMap.getControlQRScanSubData()) == null) ? null : controlQRScanSubData.getControlQRScanInfo();
                if (controlQRScanInfo != null && controlQRScanInfo.getChecked()) {
                    if (!controlQRScanInfo.getParticipants().getParticipants().isEmpty()) {
                        for (ParticipantArray participantArray : controlQRScanInfo.getParticipants().getParticipants()) {
                            if (kotlin.jvm.internal.h.a(participantArray.getParticipant().getPartyRole(), "HOST")) {
                                mobileAccidentGenerateQRFragment.f17369g = participantArray.getParticipant().getIdentityNumber();
                                mobileAccidentGenerateQRFragment.f17370h = participantArray.getParticipant().getPlate();
                            }
                        }
                        FragmentKt.findNavController(mobileAccidentGenerateQRFragment).navigate(R.id.mktMatchedReportFragment, BundleKt.bundleOf(new l9.g("identityNumber", mobileAccidentGenerateQRFragment.f17369g), new l9.g("plateNumber", mobileAccidentGenerateQRFragment.f17370h)));
                    }
                } else if (mobileAccidentGenerateQRFragment.f17372k < mobileAccidentGenerateQRFragment.f17371j) {
                    lh.b bVar2 = new lh.b(mobileAccidentGenerateQRFragment);
                    mobileAccidentGenerateQRFragment.f17368e = bVar2;
                    bVar2.start();
                } else {
                    mobileAccidentGenerateQRFragment.F().f17196g.setText(mobileAccidentGenerateQRFragment.getText(R.string.mkt_merge_page_qr_scan_message));
                    mobileAccidentGenerateQRFragment.F().f17192b.setVisibility(0);
                }
            } else if (bVar instanceof r0.i) {
                yd.a.f19652a.c("Error checkQRState ***", new Object[0]);
                MobileAccidentGenerateQRFragment.E(mobileAccidentGenerateQRFragment, ((r0.i) bVar).f13749b);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRFragment$onCreate$6", f = "MobileAccidentGenerateQRFragment.kt", l = {}, m = "invokeSuspend")
    public static final class g extends r9.i implements q<r0.b<? extends Result<GenerateQRModel>>, GenerateQRModel, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ r0.b f17381a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ GenerateQRModel f17382b;

        public g(p9.d<? super g> dVar) {
            super(3, dVar);
        }

        @Override // x9.q
        public final Object i(r0.b<? extends Result<GenerateQRModel>> bVar, GenerateQRModel generateQRModel, p9.d<? super l9.m> dVar) {
            g gVar = MobileAccidentGenerateQRFragment.this.new g(dVar);
            gVar.f17381a = bVar;
            gVar.f17382b = generateQRModel;
            return gVar.invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            GenerateQRObject generateQrObject;
            GenerateQRInfo map;
            w.F(obj);
            r0.b bVar = this.f17381a;
            GenerateQRModel generateQRModel = this.f17382b;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof k;
            MobileAccidentGenerateQRFragment mobileAccidentGenerateQRFragment = MobileAccidentGenerateQRFragment.this;
            if (z10) {
                m<Object>[] mVarArr = MobileAccidentGenerateQRFragment.f17363l;
                mobileAccidentGenerateQRFragment.F().f17193c.setVisibility(8);
                mobileAccidentGenerateQRFragment.F().f17195e.f15873a.setVisibility(8);
                mobileAccidentGenerateQRFragment.F().f.f15878a.setVisibility(8);
                v.e eVar = mobileAccidentGenerateQRFragment.f17366c;
                if (eVar != null) {
                    eVar.show();
                }
                yd.a.f19652a.c("Loading GenerateQR", new Object[0]);
            } else if (bVar instanceof c1) {
                yd.a.f19652a.c("Success GenerateQR", new Object[0]);
                v.e eVar2 = mobileAccidentGenerateQRFragment.f17366c;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                mobileAccidentGenerateQRFragment.F().f17195e.f15873a.setVisibility(8);
                mobileAccidentGenerateQRFragment.F().f.f15878a.setVisibility(8);
                mobileAccidentGenerateQRFragment.F().f17194d.setVisibility(0);
                mobileAccidentGenerateQRFragment.F().f17193c.setVisibility(0);
                GenerateQRData generateQRData = generateQRModel.getGenerateQRData();
                byte[] contentArray = Base64.decode((generateQRData == null || (generateQrObject = generateQRData.getGenerateQrObject()) == null || (map = generateQrObject.getMap()) == null) ? null : map.getGenerateQRInfo(), 2);
                AppCompatImageView appCompatImageView = mobileAccidentGenerateQRFragment.F().f17193c;
                kotlin.jvm.internal.h.e(appCompatImageView, "mGenerateQRBinding.mktGenerateQrContent");
                kotlin.jvm.internal.h.e(contentArray, "contentArray");
                ge.b.b(appCompatImageView, contentArray);
                mobileAccidentGenerateQRFragment.f = true;
                lh.b bVar2 = new lh.b(mobileAccidentGenerateQRFragment);
                mobileAccidentGenerateQRFragment.f17368e = bVar2;
                bVar2.start();
            } else if (bVar instanceof r0.i) {
                yd.a.f19652a.c("Fail GenerateQR", new Object[0]);
                MobileAccidentGenerateQRFragment.E(mobileAccidentGenerateQRFragment, ((r0.i) bVar).f13749b);
            }
            return l9.m.f9594a;
        }
    }

    public static final class h extends OnBackPressedCallback {

        public static final class a extends kotlin.jvm.internal.j implements l<v.e, l9.m> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentGenerateQRFragment f17385a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(MobileAccidentGenerateQRFragment mobileAccidentGenerateQRFragment) {
                super(1);
                this.f17385a = mobileAccidentGenerateQRFragment;
            }

            @Override // x9.l
            public final l9.m invoke(v.e eVar) {
                v.e dialog = eVar;
                kotlin.jvm.internal.h.f(dialog, "dialog");
                dialog.dismiss();
                FragmentKt.findNavController(this.f17385a).navigate(R.id.mktIntroductionFragment, (Bundle) null, new NavOptions.Builder().setPopUpTo(R.id.navigation_home, false).build());
                return l9.m.f9594a;
            }
        }

        public static final class b extends kotlin.jvm.internal.j implements l<v.e, l9.m> {

            /* renamed from: a, reason: collision with root package name */
            public static final b f17386a = new b();

            public b() {
                super(1);
            }

            @Override // x9.l
            public final l9.m invoke(v.e eVar) {
                v.e dialog = eVar;
                kotlin.jvm.internal.h.f(dialog, "dialog");
                dialog.dismiss();
                return l9.m.f9594a;
            }
        }

        public h() {
            super(true);
        }

        @Override // androidx.view.OnBackPressedCallback
        public final void handleOnBackPressed() {
            MobileAccidentGenerateQRFragment mobileAccidentGenerateQRFragment = MobileAccidentGenerateQRFragment.this;
            Context context = mobileAccidentGenerateQRFragment.f17367d;
            if (context != null) {
                v.e eVar = new v.e(context);
                v.e.f(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_title), null, 2);
                v.e.c(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_description), null, 6);
                v.e.e(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_positive_button), null, new a(mobileAccidentGenerateQRFragment), 2);
                v.e.d(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_negative_button), b.f17386a);
                eVar.show();
            }
        }
    }

    public static final class i extends kotlin.jvm.internal.j implements l<r0.q<lh.e, lh.d>, lh.e> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17387a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17388b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17389c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17387a = fragment;
            this.f17388b = dVar;
            this.f17389c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [lh.e, r0.z] */
        @Override // x9.l
        public final lh.e invoke(r0.q<lh.e, lh.d> qVar) {
            r0.q<lh.e, lh.d> stateFactory = qVar;
            kotlin.jvm.internal.h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17388b);
            Fragment fragment = this.f17387a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            kotlin.jvm.internal.h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17389c, clsQ, lh.d.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class j extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17390a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f17391b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17392c;

        public j(da.d dVar, i iVar, da.d dVar2) {
            this.f17390a = dVar;
            this.f17391b = iVar;
            this.f17392c = dVar2;
        }

        public final l9.e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            kotlin.jvm.internal.h.f(thisRef, "thisRef");
            kotlin.jvm.internal.h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17390a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.a(this), kotlin.jvm.internal.w.a(lh.d.class), this.f17391b);
        }
    }

    public MobileAccidentGenerateQRFragment() {
        super(R.layout.fragment_show_qr);
        this.f17364a = d0.C(this, a.f17373a);
        da.d dVarA = kotlin.jvm.internal.w.a(lh.e.class);
        this.f17365b = new j(dVarA, new i(this, dVarA, dVarA), dVarA).t(this, f17363l[1]);
        this.f17371j = 50;
    }

    public static final void E(MobileAccidentGenerateQRFragment mobileAccidentGenerateQRFragment, Throwable th2) {
        v.e eVar = mobileAccidentGenerateQRFragment.f17366c;
        if (eVar != null) {
            eVar.dismiss();
        }
        if (th2 instanceof LoginException) {
            Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
            if (Build.VERSION.SDK_INT >= 34) {
                intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            mobileAccidentGenerateQRFragment.startActivity(intentB);
            FragmentActivity activity = mobileAccidentGenerateQRFragment.getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        if (th2 instanceof NetworkErrorException) {
            mobileAccidentGenerateQRFragment.F().f17194d.setVisibility(8);
            mobileAccidentGenerateQRFragment.F().f.f15878a.setVisibility(8);
            mobileAccidentGenerateQRFragment.F().f17195e.f15873a.setVisibility(0);
            mobileAccidentGenerateQRFragment.F().f17195e.f15874b.setOnClickListener(new zd.d(17, mobileAccidentGenerateQRFragment));
            return;
        }
        if (!(th2 instanceof ServiceErrorExceptionWithMessage)) {
            mobileAccidentGenerateQRFragment.F().f17194d.setVisibility(8);
            mobileAccidentGenerateQRFragment.F().f17195e.f15873a.setVisibility(8);
            mobileAccidentGenerateQRFragment.F().f.f15878a.setVisibility(0);
            return;
        }
        String errorMessage = ((ServiceErrorExceptionWithMessage) th2).getErrorMessage();
        mobileAccidentGenerateQRFragment.F().f17194d.setVisibility(8);
        mobileAccidentGenerateQRFragment.F().f17195e.f15873a.setVisibility(8);
        mobileAccidentGenerateQRFragment.F().f.f15878a.setVisibility(0);
        if (errorMessage == null || errorMessage.length() == 0) {
            return;
        }
        mobileAccidentGenerateQRFragment.F().f.f15880c.setText(errorMessage);
    }

    public final FragmentShowQrBinding F() {
        return (FragmentShowQrBinding) this.f17364a.a(this, f17363l[0]);
    }

    @Override // r0.w
    public final void invalidate() {
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        kotlin.jvm.internal.h.f(context, "context");
        w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requireActivity().getOnBackPressedDispatcher().addCallback(this, new h());
        l9.e eVar = this.f17365b;
        B((lh.e) eVar.getValue(), new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRFragment.b
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((lh.d) obj).f9834c;
            }
        }, new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRFragment.c
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((lh.d) obj).f9835d;
            }
        }, D(null), new d(null));
        B((lh.e) eVar.getValue(), new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRFragment.e
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((lh.d) obj).f9832a;
            }
        }, new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRFragment.f
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((lh.d) obj).f9833b;
            }
        }, D(null), new g(null));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        lh.b bVar = this.f17368e;
        if (bVar != null) {
            bVar.cancel();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.f) {
            lh.b bVar = this.f17368e;
            if (bVar != null) {
                bVar.cancel();
            }
            lh.b bVar2 = this.f17368e;
            if (bVar2 != null) {
                bVar2.start();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        kotlin.jvm.internal.h.f(view, "view");
        super.onViewCreated(view, bundle);
        Context context = view.getContext();
        this.f17367d = context;
        if (context != null) {
            FragmentActivity activity = getActivity();
            Object systemService = activity != null ? activity.getSystemService("layout_inflater") : null;
            kotlin.jvm.internal.h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.progress_dialog, (ViewGroup) null);
            kotlin.jvm.internal.h.e(viewInflate, "inflater.inflate(R.layout.progress_dialog, null)");
            v.e eVar = new v.e(context);
            this.f17366c = eVar;
            u.n(eVar, viewInflate);
            v.e eVar2 = this.f17366c;
            if (eVar2 != null) {
                eVar2.b(false);
            }
        }
        F().f17192b.setOnClickListener(new ie.d(13, this));
    }
}
