package tr.gov.turkiye.edevlet.kapisi.ui.accident.driver;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.os.BundleKt;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.fragment.FragmentKt;
import c5.u;
import c5.w;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import java.util.ArrayList;
import java.util.List;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.r;
import m9.n;
import m9.v;
import r0.c1;
import r0.d1;
import r0.k;
import r0.q;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleInfo;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleSaveModel;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentDriverCarBinding;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.ui.CarListUIController;
import x9.l;
import x9.p;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentDriverFragment extends ee.a implements CarListUIController.a {

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f17231p = {androidx.room.util.a.b(MobileAccidentDriverFragment.class, "mDriverCarBinding", "getMDriverCarBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;"), androidx.room.util.a.b(MobileAccidentDriverFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17232a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f17233b;

    /* renamed from: c, reason: collision with root package name */
    public CarListUIController f17234c;

    /* renamed from: d, reason: collision with root package name */
    public List<VehicleInfo> f17235d;

    /* renamed from: e, reason: collision with root package name */
    public v.e f17236e;
    public v.e f;

    /* renamed from: g, reason: collision with root package name */
    public Context f17237g;

    /* renamed from: h, reason: collision with root package name */
    public String f17238h;

    /* renamed from: j, reason: collision with root package name */
    public String f17239j;

    /* renamed from: k, reason: collision with root package name */
    public Integer f17240k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f17241l;

    /* renamed from: m, reason: collision with root package name */
    public VehicleInfo f17242m;

    /* renamed from: n, reason: collision with root package name */
    public VehicleInfo f17243n;

    public static final class a extends j implements l<dh.e, l9.m> {
        public a() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:122:0x023f  */
        /* JADX WARN: Removed duplicated region for block: B:181:0x0322  */
        /* JADX WARN: Removed duplicated region for block: B:182:0x0335  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0077  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00a4  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0125  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final l9.m invoke(dh.e r13) {
            /*
                Method dump skipped, instructions count: 898
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverFragment.a.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentDriverCarBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f17245a = new b();

        public b() {
            super(1, FragmentDriverCarBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDriverCarBinding;", 0);
        }

        @Override // x9.l
        public final FragmentDriverCarBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentDriverCarBinding.bind(p02);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverFragment$onCreate$2", f = "MobileAccidentDriverFragment.kt", l = {}, m = "invokeSuspend")
    public static final class d extends i implements p<r0.b<? extends Result<VehicleSaveModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f17247a;

        public d(p9.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            d dVar2 = MobileAccidentDriverFragment.this.new d(dVar);
            dVar2.f17247a = obj;
            return dVar2;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(r0.b<? extends Result<VehicleSaveModel>> bVar, p9.d<? super l9.m> dVar) {
            return ((d) create(bVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            r0.b bVar = (r0.b) this.f17247a;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof k;
            MobileAccidentDriverFragment mobileAccidentDriverFragment = MobileAccidentDriverFragment.this;
            if (z10) {
                yd.a.f19652a.c("Loading save vehicle ***", new Object[0]);
                v.e eVar = mobileAccidentDriverFragment.f17236e;
                if ((eVar == null || eVar.isShowing()) ? false : true) {
                    MobileAccidentDriverFragment.F(mobileAccidentDriverFragment);
                }
            } else if (bVar instanceof c1) {
                yd.a.f19652a.c("Success Vehicle ***", new Object[0]);
                v.e eVar2 = mobileAccidentDriverFragment.f17236e;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                v.e eVar3 = mobileAccidentDriverFragment.f;
                if (eVar3 != null) {
                    eVar3.dismiss();
                }
                if (mobileAccidentDriverFragment.f17241l) {
                    mobileAccidentDriverFragment.f17241l = false;
                    l9.g[] gVarArr = new l9.g[1];
                    StringBuilder sb2 = new StringBuilder();
                    VehicleInfo vehicleInfo = mobileAccidentDriverFragment.f17242m;
                    if (vehicleInfo == null) {
                        h.n("mSelectedVehicle");
                        throw null;
                    }
                    sb2.append(vehicleInfo.getBrandName());
                    sb2.append(" - ");
                    VehicleInfo vehicleInfo2 = mobileAccidentDriverFragment.f17242m;
                    if (vehicleInfo2 == null) {
                        h.n("mSelectedVehicle");
                        throw null;
                    }
                    sb2.append(vehicleInfo2.getTradeName());
                    gVarArr[0] = new l9.g("companyBrand", sb2.toString());
                    FragmentKt.findNavController(mobileAccidentDriverFragment).navigate(R.id.mktPolicyFragment, BundleKt.bundleOf(gVarArr));
                }
            } else if (bVar instanceof r0.i) {
                yd.a.f19652a.c("Error save vehicle ***", new Object[0]);
                if (mobileAccidentDriverFragment.f17243n == null) {
                    VehicleInfo vehicleInfo3 = mobileAccidentDriverFragment.f17242m;
                    if (vehicleInfo3 == null) {
                        h.n("mSelectedVehicle");
                        throw null;
                    }
                    mobileAccidentDriverFragment.f17243n = vehicleInfo3;
                    MobileAccidentDriverFragment.E(mobileAccidentDriverFragment, ((r0.i) bVar).f13749b);
                }
                VehicleInfo vehicleInfo4 = mobileAccidentDriverFragment.f17243n;
                VehicleInfo vehicleInfo5 = mobileAccidentDriverFragment.f17242m;
                if (vehicleInfo5 == null) {
                    h.n("mSelectedVehicle");
                    throw null;
                }
                if (!h.a(vehicleInfo4, vehicleInfo5)) {
                    VehicleInfo vehicleInfo6 = mobileAccidentDriverFragment.f17242m;
                    if (vehicleInfo6 == null) {
                        h.n("mSelectedVehicle");
                        throw null;
                    }
                    mobileAccidentDriverFragment.f17243n = vehicleInfo6;
                    MobileAccidentDriverFragment.E(mobileAccidentDriverFragment, ((r0.i) bVar).f13749b);
                }
            }
            return l9.m.f9594a;
        }
    }

    public static final class e extends j implements l<q<dh.f, dh.e>, dh.f> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17249a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17250b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17251c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17249a = fragment;
            this.f17250b = dVar;
            this.f17251c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [dh.f, r0.z] */
        @Override // x9.l
        public final dh.f invoke(q<dh.f, dh.e> qVar) {
            q<dh.f, dh.e> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17250b);
            Fragment fragment = this.f17249a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17251c, clsQ, dh.e.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class f extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17252a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f17253b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17254c;

        public f(da.d dVar, e eVar, da.d dVar2) {
            this.f17252a = dVar;
            this.f17253b = eVar;
            this.f17254c = dVar2;
        }

        public final l9.e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17252a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.a(this), kotlin.jvm.internal.w.a(dh.e.class), this.f17253b);
        }
    }

    public MobileAccidentDriverFragment() {
        super(R.layout.fragment_driver_car);
        this.f17232a = d0.C(this, b.f17245a);
        da.d dVarA = kotlin.jvm.internal.w.a(dh.f.class);
        this.f17233b = new f(dVarA, new e(this, dVarA, dVarA), dVarA).t(this, f17231p[1]);
        this.f17235d = v.f10173a;
    }

    public static final void E(MobileAccidentDriverFragment mobileAccidentDriverFragment, Throwable th2) {
        v.e eVar = mobileAccidentDriverFragment.f17236e;
        if (eVar != null) {
            eVar.dismiss();
        }
        if (th2 instanceof LoginException) {
            Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
            if (Build.VERSION.SDK_INT >= 34) {
                intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            mobileAccidentDriverFragment.startActivity(intentB);
            FragmentActivity activity = mobileAccidentDriverFragment.getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        if (th2 instanceof NetworkErrorException) {
            mobileAccidentDriverFragment.I();
            return;
        }
        String errorMessage = th2 instanceof ServiceErrorExceptionWithMessage ? ((ServiceErrorExceptionWithMessage) th2).getErrorMessage() : null;
        Context context = mobileAccidentDriverFragment.f17237g;
        if (context != null) {
            Object systemService = context.getSystemService("layout_inflater");
            h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.result_mkt_error_dialog, (ViewGroup) null);
            h.e(viewInflate, "inflater.inflate(R.layou…t_mkt_error_dialog, null)");
            TextView textView = (TextView) viewInflate.findViewById(R.id.result_dialog_txt_content);
            if (errorMessage == null || errorMessage.length() == 0) {
                textView.setText(R.string.service_error_info);
            } else {
                textView.setText(errorMessage);
            }
            v.e eVar2 = new v.e(context);
            u.n(eVar2, viewInflate);
            eVar2.show();
            eVar2.b(false);
            v.e.e(eVar2, Integer.valueOf(R.string.barcode_close_dialog), null, null, 6);
            v.e.e(eVar2, null, null, dh.a.f4911a, 3);
            mobileAccidentDriverFragment.f = eVar2;
        }
    }

    public static final void F(MobileAccidentDriverFragment mobileAccidentDriverFragment) {
        mobileAccidentDriverFragment.G().f17135i.f15873a.setVisibility(8);
        mobileAccidentDriverFragment.G().f17139m.f15878a.setVisibility(8);
        v.e eVar = mobileAccidentDriverFragment.f17236e;
        if (eVar != null) {
            eVar.show();
        }
    }

    public final FragmentDriverCarBinding G() {
        return (FragmentDriverCarBinding) this.f17232a.a(this, f17231p[0]);
    }

    public final dh.f H() {
        return (dh.f) this.f17233b.getValue();
    }

    public final void I() {
        Context context = this.f17237g;
        if (context != null) {
            int r12 = ke.d.f8929a;
            NestedScrollView nestedScrollView = G().f;
            h.e(nestedScrollView, "mDriverCarBinding.mktDriverParentContainer");
            ke.d dVarE = d.a.e(nestedScrollView, R.string.connection_error_info, null, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u(H(), new a());
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.ui.CarListUIController.a
    public final void n(VehicleInfo service) {
        boolean z10;
        h.f(service, "service");
        yd.a.f19652a.c("select", new Object[0]);
        List<VehicleInfo> list = this.f17235d;
        ArrayList arrayList = new ArrayList(n.Q0(list));
        int r52 = 0;
        for (Object obj : list) {
            int r82 = r52 + 1;
            if (r52 < 0) {
                b8.f.k0();
                throw null;
            }
            VehicleInfo vehicleInfo = (VehicleInfo) obj;
            if (h.a(vehicleInfo.getPlateNumber(), service.getPlateNumber())) {
                this.f17240k = Integer.valueOf(r52);
                this.f17242m = service;
                z10 = true;
            } else {
                z10 = false;
            }
            arrayList.add(vehicleInfo.copy((8191 & 1) != 0 ? vehicleInfo.carKind : 0, (8191 & 2) != 0 ? vehicleInfo.carKindName : null, (8191 & 4) != 0 ? vehicleInfo.institutionCarId : null, (8191 & 8) != 0 ? vehicleInfo.brandNumber : null, (8191 & 16) != 0 ? vehicleInfo.brandName : null, (8191 & 32) != 0 ? vehicleInfo.modelYear : null, (8191 & 64) != 0 ? vehicleInfo.engineNo : null, (8191 & 128) != 0 ? vehicleInfo.plateNumber : null, (8191 & 256) != 0 ? vehicleInfo.chassisNo : null, (8191 & 512) != 0 ? vehicleInfo.registeredDocumentSerialNo : null, (8191 & 1024) != 0 ? vehicleInfo.registeredDate : null, (8191 & 2048) != 0 ? vehicleInfo.registeredDateFormatted : null, (8191 & 4096) != 0 ? vehicleInfo.tradeName : null, (8191 & 8192) != 0 ? vehicleInfo.isSelected : z10));
            r52 = r82;
        }
        this.f17235d = arrayList;
        CarListUIController carListUIController = this.f17234c;
        if (carListUIController == null) {
            h.n("mServiceListController");
            throw null;
        }
        carListUIController.setData(arrayList, service);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.ui.CarListUIController.a
    public final void o(VehicleInfo service) {
        h.f(service, "service");
        yd.a.f19652a.c("unselect", new Object[0]);
        List<VehicleInfo> list = this.f17235d;
        ArrayList arrayList = new ArrayList(n.Q0(list));
        for (VehicleInfo vehicleInfoCopy : list) {
            if (h.a(vehicleInfoCopy.getPlateNumber(), service.getPlateNumber())) {
                vehicleInfoCopy = vehicleInfoCopy.copy((8191 & 1) != 0 ? vehicleInfoCopy.carKind : 0, (8191 & 2) != 0 ? vehicleInfoCopy.carKindName : null, (8191 & 4) != 0 ? vehicleInfoCopy.institutionCarId : null, (8191 & 8) != 0 ? vehicleInfoCopy.brandNumber : null, (8191 & 16) != 0 ? vehicleInfoCopy.brandName : null, (8191 & 32) != 0 ? vehicleInfoCopy.modelYear : null, (8191 & 64) != 0 ? vehicleInfoCopy.engineNo : null, (8191 & 128) != 0 ? vehicleInfoCopy.plateNumber : null, (8191 & 256) != 0 ? vehicleInfoCopy.chassisNo : null, (8191 & 512) != 0 ? vehicleInfoCopy.registeredDocumentSerialNo : null, (8191 & 1024) != 0 ? vehicleInfoCopy.registeredDate : null, (8191 & 2048) != 0 ? vehicleInfoCopy.registeredDateFormatted : null, (8191 & 4096) != 0 ? vehicleInfoCopy.tradeName : null, (8191 & 8192) != 0 ? vehicleInfoCopy.isSelected : false);
            }
            arrayList.add(vehicleInfoCopy);
        }
        this.f17235d = arrayList;
        CarListUIController carListUIController = this.f17234c;
        if (carListUIController == null) {
            h.n("mServiceListController");
            throw null;
        }
        carListUIController.setData(arrayList, service);
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
        C(H(), new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverFragment.c
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((dh.e) obj).f4938c;
            }
        }, D(null), new d(null));
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010e  */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onViewCreated(android.view.View r5, android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverFragment.onViewCreated(android.view.View, android.os.Bundle):void");
    }
}
