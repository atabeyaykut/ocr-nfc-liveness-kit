package tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.host;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.core.os.BundleKt;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavOptions;
import androidx.navigation.fragment.FragmentKt;
import androidx.view.OnBackPressedCallback;
import androidx.view.result.ActivityResultLauncher;
import androidx.view.result.contract.ActivityResultContracts;
import c5.e0;
import c5.u;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import io.realm.g0;
import java.util.Arrays;
import java.util.List;
import ke.d;
import kotlin.Metadata;
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
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRInfo;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRParticipantArray;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRParticipants;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRSubData;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentScanQrBinding;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;", "Lee/a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentQRScanFragment extends ee.a {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f17394j = {androidx.room.util.a.b(MobileAccidentQRScanFragment.class, "mScanQrBinding", "getMScanQrBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentScanQrBinding;"), androidx.room.util.a.b(MobileAccidentQRScanFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17395a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f17396b;

    /* renamed from: c, reason: collision with root package name */
    public v.e f17397c;

    /* renamed from: d, reason: collision with root package name */
    public Context f17398d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17399e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public String f17400g;

    /* renamed from: h, reason: collision with root package name */
    public final ActivityResultLauncher<Intent> f17401h;

    public static final class a extends j implements l<mh.b, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(mh.b bVar) {
            ScanQRParticipants participants;
            List<ScanQRParticipantArray> participantList;
            ScanQRObject scanQRObject;
            ScanQRMap scanQRMap;
            ScanQRSubData scanQRSubData;
            mh.b state = bVar;
            h.f(state, "state");
            r0.b<Result<ScanQRModel>> bVar2 = state.f10441a;
            boolean z10 = true;
            boolean z11 = bVar2 instanceof d1 ? true : bVar2 instanceof k;
            MobileAccidentQRScanFragment mobileAccidentQRScanFragment = MobileAccidentQRScanFragment.this;
            if (!z11) {
                scanQRInfo = null;
                scanQRInfo = null;
                scanQRInfo = null;
                ScanQRInfo scanQRInfo = null;
                if (bVar2 instanceof c1) {
                    v.e eVar = mobileAccidentQRScanFragment.f17397c;
                    if (eVar != null) {
                        eVar.dismiss();
                    }
                    yd.a.f19652a.c("Success QRScan", new Object[0]);
                    ScanQRData scanQRData = state.f10442b.getScanQRData();
                    if (scanQRData != null && (scanQRObject = scanQRData.getScanQRObject()) != null && (scanQRMap = scanQRObject.getScanQRMap()) != null && (scanQRSubData = scanQRMap.getScanQRSubData()) != null) {
                        scanQRInfo = scanQRSubData.getScanQRInfo();
                    }
                    if ((scanQRInfo == null || (participants = scanQRInfo.getParticipants()) == null || (participantList = participants.getParticipantList()) == null || !(participantList.isEmpty() ^ true)) ? false : true) {
                        for (ScanQRParticipantArray scanQRParticipantArray : scanQRInfo.getParticipants().getParticipantList()) {
                            if (h.a(scanQRParticipantArray.getParticipant().getPartyRole(), "GUEST")) {
                                mobileAccidentQRScanFragment.f = scanQRParticipantArray.getParticipant().getIdentityNumber();
                                mobileAccidentQRScanFragment.f17400g = scanQRParticipantArray.getParticipant().getPlate();
                            }
                        }
                        FragmentKt.findNavController(mobileAccidentQRScanFragment).navigate(R.id.mktMatchedReportFragment, BundleKt.bundleOf(new l9.g("identityNumber", mobileAccidentQRScanFragment.f), new l9.g("plateNumber", mobileAccidentQRScanFragment.f17400g)));
                    }
                } else if (bVar2 instanceof i) {
                    yd.a.f19652a.c("Fail QRScan", new Object[0]);
                    v.e eVar2 = mobileAccidentQRScanFragment.f17397c;
                    if (eVar2 != null) {
                        eVar2.dismiss();
                    }
                    Throwable th2 = ((i) bVar2).f13749b;
                    v.e eVar3 = mobileAccidentQRScanFragment.f17397c;
                    if (eVar3 != null) {
                        eVar3.dismiss();
                    }
                    if (th2 instanceof LoginException) {
                        Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                        if (Build.VERSION.SDK_INT >= 34) {
                            intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                        }
                        mobileAccidentQRScanFragment.startActivity(intentB);
                        FragmentActivity activity = mobileAccidentQRScanFragment.getActivity();
                        if (activity != null) {
                            activity.finish();
                        }
                    } else {
                        boolean z12 = th2 instanceof NetworkErrorException;
                        FragmentViewBindingDelegate fragmentViewBindingDelegate = mobileAccidentQRScanFragment.f17395a;
                        if (z12) {
                            Context context = mobileAccidentQRScanFragment.f17398d;
                            if (context != null) {
                                int r02 = ke.d.f8929a;
                                NestedScrollView nestedScrollView = ((FragmentScanQrBinding) fragmentViewBindingDelegate.a(mobileAccidentQRScanFragment, MobileAccidentQRScanFragment.f17394j[0])).f17190c;
                                h.e(nestedScrollView, "mScanQrBinding.mktQrScanContainer");
                                ke.d dVarE = d.a.e(nestedScrollView, R.string.connection_error_info, null, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
                                if (dVarE != null) {
                                    dVarE.show();
                                }
                            }
                        } else {
                            String errorMessage = th2 instanceof ServiceErrorExceptionWithMessage ? ((ServiceErrorExceptionWithMessage) th2).getErrorMessage() : null;
                            Context context2 = mobileAccidentQRScanFragment.f17398d;
                            if (context2 != null) {
                                if (errorMessage != null && errorMessage.length() != 0) {
                                    z10 = false;
                                }
                                if (z10) {
                                    errorMessage = mobileAccidentQRScanFragment.getString(R.string.service_error_info);
                                }
                                h.e(errorMessage, "if (errorMessage.isNullO…rrorMessage\n            }");
                                int r03 = ke.d.f8929a;
                                NestedScrollView nestedScrollView2 = ((FragmentScanQrBinding) fragmentViewBindingDelegate.a(mobileAccidentQRScanFragment, MobileAccidentQRScanFragment.f17394j[0])).f17190c;
                                h.e(nestedScrollView2, "mScanQrBinding.mktQrScanContainer");
                                ke.d dVarB = d.a.b(nestedScrollView2, errorMessage, ContextCompat.getColor(context2, R.color.error_color));
                                if (dVarB != null) {
                                    dVarB.show();
                                }
                            }
                        }
                    }
                }
            } else if (mobileAccidentQRScanFragment.f17399e) {
                mobileAccidentQRScanFragment.f17399e = false;
                v.e eVar4 = mobileAccidentQRScanFragment.f17397c;
                if (eVar4 != null) {
                    eVar4.show();
                }
                yd.a.f19652a.c("Loading QRScan", new Object[0]);
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends kotlin.jvm.internal.g implements l<View, FragmentScanQrBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f17403a = new b();

        public b() {
            super(1, FragmentScanQrBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentScanQrBinding;", 0);
        }

        @Override // x9.l
        public final FragmentScanQrBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentScanQrBinding.bind(p02);
        }
    }

    public static final class c extends OnBackPressedCallback {

        public static final class a extends j implements l<v.e, l9.m> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentQRScanFragment f17405a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(MobileAccidentQRScanFragment mobileAccidentQRScanFragment) {
                super(1);
                this.f17405a = mobileAccidentQRScanFragment;
            }

            @Override // x9.l
            public final l9.m invoke(v.e eVar) {
                v.e dialog = eVar;
                h.f(dialog, "dialog");
                dialog.dismiss();
                FragmentKt.findNavController(this.f17405a).navigate(R.id.mktIntroductionFragment, (Bundle) null, new NavOptions.Builder().setPopUpTo(R.id.navigation_home, false).build());
                return l9.m.f9594a;
            }
        }

        public static final class b extends j implements l<v.e, l9.m> {

            /* renamed from: a, reason: collision with root package name */
            public static final b f17406a = new b();

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

        public c() {
            super(true);
        }

        @Override // androidx.view.OnBackPressedCallback
        public final void handleOnBackPressed() {
            MobileAccidentQRScanFragment mobileAccidentQRScanFragment = MobileAccidentQRScanFragment.this;
            Context context = mobileAccidentQRScanFragment.f17398d;
            if (context != null) {
                v.e eVar = new v.e(context);
                v.e.f(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_title), null, 2);
                v.e.c(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_description), null, 6);
                v.e.e(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_positive_button), null, new a(mobileAccidentQRScanFragment), 2);
                v.e.d(eVar, Integer.valueOf(R.string.mkt_preview_page_back_button_dialog_negative_button), b.f17406a);
                eVar.show();
            }
        }
    }

    public static final class d extends j implements l<v.e, l9.m> {
        public d() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(v.e eVar) {
            v.e dialog = eVar;
            h.f(dialog, "dialog");
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            MobileAccidentQRScanFragment mobileAccidentQRScanFragment = MobileAccidentQRScanFragment.this;
            Context context = mobileAccidentQRScanFragment.f17398d;
            intent.setData(Uri.fromParts("package", context != null ? context.getPackageName() : null, null));
            mobileAccidentQRScanFragment.startActivity(intent);
            dialog.dismiss();
            return l9.m.f9594a;
        }
    }

    public static final class e extends j implements l<v.e, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public static final e f17408a = new e();

        public e() {
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

    public static final class f extends j implements l<q<mh.c, mh.b>, mh.c> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17409a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17410b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17411c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17409a = fragment;
            this.f17410b = dVar;
            this.f17411c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [mh.c, r0.z] */
        @Override // x9.l
        public final mh.c invoke(q<mh.c, mh.b> qVar) {
            q<mh.c, mh.b> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17410b);
            Fragment fragment = this.f17409a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17411c, clsQ, mh.b.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class g extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17412a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f17413b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17414c;

        public g(da.d dVar, f fVar, da.d dVar2) {
            this.f17412a = dVar;
            this.f17413b = fVar;
            this.f17414c = dVar2;
        }

        public final l9.e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17412a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.host.a(this), w.a(mh.b.class), this.f17413b);
        }
    }

    public MobileAccidentQRScanFragment() {
        super(R.layout.fragment_scan_qr);
        this.f17395a = d0.C(this, b.f17403a);
        da.d dVarA = w.a(mh.c.class);
        this.f17396b = new g(dVarA, new f(this, dVarA, dVarA), dVarA).t(this, f17394j[1]);
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new androidx.camera.core.impl.utils.futures.a(7, this));
        h.e(activityResultLauncherRegisterForActivityResult, "registerForActivityResul…)\n            }\n        }");
        this.f17401h = activityResultLauncherRegisterForActivityResult;
    }

    public final void E() {
        Intent intent = new Intent("action.qr.open");
        if (Build.VERSION.SDK_INT >= 34) {
            intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
        }
        intent.putExtra("comingFrom", 1);
        this.f17401h.launch(intent);
    }

    public final void F(int r52) {
        Context context = this.f17398d;
        h.c(context);
        v.e eVar = new v.e(context);
        v.e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.permission_camera_qr_rationale, eVar, null, 6, R.string.permission_rationale_dialog_ok), null, new d(), 2);
        v.e.d(eVar, Integer.valueOf(R.string.permission_rationale_dialog_cancel), e.f17408a);
        eVar.show();
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((mh.c) this.f17396b.getValue(), new a());
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
        requireActivity().getOnBackPressedDispatcher().addCallback(this, new c());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onRequestPermissionsResult(int r22, String[] permissions, int[] grantResults) {
        h.f(permissions, "permissions");
        h.f(grantResults, "grantResults");
        super.onRequestPermissionsResult(r22, permissions, grantResults);
        if (r22 == 4) {
            if (td.a.d(Arrays.copyOf(grantResults, grantResults.length))) {
                E();
            } else if (td.a.c(this, (String[]) Arrays.copyOf(e0.f1490d, 1))) {
                F(R.string.permission_camera_qr_rationale);
            } else {
                F(R.string.permission_camera_qr_rationale);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        Context context = view.getContext();
        this.f17398d = context;
        if (context != null) {
            FragmentActivity activity = getActivity();
            Object systemService = activity != null ? activity.getSystemService("layout_inflater") : null;
            h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.progress_dialog, (ViewGroup) null);
            h.e(viewInflate, "inflater.inflate(R.layout.progress_dialog, null)");
            v.e eVar = new v.e(context);
            this.f17397c = eVar;
            u.n(eVar, viewInflate);
            v.e eVar2 = this.f17397c;
            if (eVar2 != null) {
                eVar2.b(false);
            }
        }
        g0 g0VarT = g0.t();
        g0VarT.m();
        ((FragmentScanQrBinding) this.f17395a.a(this, f17394j[0])).f17189b.setOnClickListener(new ie.d(14, this));
    }
}
