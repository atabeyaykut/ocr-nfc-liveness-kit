package tr.gov.turkiye.edevlet.kapisi.ui.accident.introduction;

import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.WorkSource;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.camera.core.impl.p;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.location.LocationRequestCompat;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.fragment.FragmentKt;
import c5.u;
import com.google.android.gms.internal.clearcut.b0;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import h5.y;
import h5.z;
import java.util.Arrays;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import o3.m;
import r0.c1;
import r0.d1;
import r0.i;
import r0.k;
import r0.q;
import r3.r;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DriverLicenceModel;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentIntroductionBinding;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;", "Lee/a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentIntroductionFragment extends ee.a {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f17319g = {androidx.room.util.a.b(MobileAccidentIntroductionFragment.class, "mIntroductionBinding", "getMIntroductionBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentIntroductionBinding;"), androidx.room.util.a.b(MobileAccidentIntroductionFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17320a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f17321b;

    /* renamed from: c, reason: collision with root package name */
    public m4.d f17322c;

    /* renamed from: d, reason: collision with root package name */
    public v.e f17323d;

    /* renamed from: e, reason: collision with root package name */
    public Context f17324e;
    public String f;

    public static final class a extends j implements l<jh.b, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(jh.b bVar) {
            jh.b state = bVar;
            h.f(state, "state");
            r0.b<Result<DriverLicenceModel>> bVar2 = state.f8519a;
            boolean z10 = true;
            boolean z11 = bVar2 instanceof d1 ? true : bVar2 instanceof k;
            MobileAccidentIntroductionFragment mobileAccidentIntroductionFragment = MobileAccidentIntroductionFragment.this;
            if (z11) {
                m<Object>[] mVarArr = MobileAccidentIntroductionFragment.f17319g;
                mobileAccidentIntroductionFragment.E().f17154e.setVisibility(8);
                mobileAccidentIntroductionFragment.E().f.f15873a.setVisibility(8);
                mobileAccidentIntroductionFragment.E().f17155g.f15878a.setVisibility(8);
                v.e eVar = mobileAccidentIntroductionFragment.f17323d;
                if (eVar != null) {
                    eVar.show();
                }
            } else if (bVar2 instanceof c1) {
                yd.a.f19652a.c("Success", new Object[0]);
                v.e eVar2 = mobileAccidentIntroductionFragment.f17323d;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                mobileAccidentIntroductionFragment.E().f17154e.setVisibility(0);
                mobileAccidentIntroductionFragment.E().f.f15873a.setVisibility(8);
                mobileAccidentIntroductionFragment.E().f17155g.f15878a.setVisibility(8);
            } else if (bVar2 instanceof i) {
                Throwable th2 = ((i) bVar2).f13749b;
                v.e eVar3 = mobileAccidentIntroductionFragment.f17323d;
                if (eVar3 != null) {
                    eVar3.dismiss();
                }
                if (th2 instanceof LoginException) {
                    Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    mobileAccidentIntroductionFragment.startActivity(intentB);
                    FragmentActivity activity = mobileAccidentIntroductionFragment.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else if (th2 instanceof NetworkErrorException) {
                    mobileAccidentIntroductionFragment.E().f17154e.setVisibility(8);
                    mobileAccidentIntroductionFragment.E().f17155g.f15878a.setVisibility(8);
                    mobileAccidentIntroductionFragment.E().f.f15873a.setVisibility(0);
                    mobileAccidentIntroductionFragment.E().f.f15874b.setOnClickListener(new ie.d(12, mobileAccidentIntroductionFragment));
                } else if (th2 instanceof ServiceErrorExceptionWithMessage) {
                    String errorMessage = ((ServiceErrorExceptionWithMessage) th2).getErrorMessage();
                    mobileAccidentIntroductionFragment.E().f17154e.setVisibility(8);
                    mobileAccidentIntroductionFragment.E().f.f15873a.setVisibility(8);
                    mobileAccidentIntroductionFragment.E().f17155g.f15878a.setVisibility(0);
                    if (errorMessage != null && errorMessage.length() != 0) {
                        z10 = false;
                    }
                    if (!z10) {
                        mobileAccidentIntroductionFragment.E().f17155g.f15880c.setText(errorMessage);
                    }
                } else {
                    mobileAccidentIntroductionFragment.E().f17154e.setVisibility(8);
                    mobileAccidentIntroductionFragment.E().f.f15873a.setVisibility(8);
                    mobileAccidentIntroductionFragment.E().f17155g.f15878a.setVisibility(0);
                }
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends kotlin.jvm.internal.g implements l<View, FragmentIntroductionBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f17326a = new b();

        public b() {
            super(1, FragmentIntroductionBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentIntroductionBinding;", 0);
        }

        @Override // x9.l
        public final FragmentIntroductionBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentIntroductionBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<Location, l9.m> {
        public c() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(Location location) {
            Location location2 = location;
            MobileAccidentIntroductionFragment mobileAccidentIntroductionFragment = MobileAccidentIntroductionFragment.this;
            if (location2 != null) {
                Bundle bundleBundleOf = BundleKt.bundleOf(new l9.g("partyRole", mobileAccidentIntroductionFragment.f), new l9.g("latitude", String.valueOf(location2.getLatitude())), new l9.g("longitude", String.valueOf(location2.getLongitude())));
                yd.a.f19652a.c("Lat " + location2.getLatitude() + " Lon " + location2.getLongitude(), new Object[0]);
                FragmentKt.findNavController(mobileAccidentIntroductionFragment).navigate(R.id.mktConditionFragment, bundleBundleOf);
            } else {
                m<Object>[] mVarArr = MobileAccidentIntroductionFragment.f17319g;
                mobileAccidentIntroductionFragment.H(R.string.mkt_introduction_page_location_general_error);
            }
            return l9.m.f9594a;
        }
    }

    public static final class d extends j implements l<v.e, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f17328a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ MobileAccidentIntroductionFragment f17329b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context, MobileAccidentIntroductionFragment mobileAccidentIntroductionFragment) {
            super(1);
            this.f17328a = context;
            this.f17329b = mobileAccidentIntroductionFragment;
        }

        @Override // x9.l
        public final l9.m invoke(v.e eVar) {
            v.e dialog = eVar;
            h.f(dialog, "dialog");
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", this.f17328a.getPackageName(), null));
            this.f17329b.startActivity(intent);
            dialog.dismiss();
            return l9.m.f9594a;
        }
    }

    public static final class e extends j implements l<v.e, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public static final e f17330a = new e();

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

    public static final class f extends j implements l<q<jh.c, jh.b>, jh.c> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17331a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17332b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17333c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17331a = fragment;
            this.f17332b = dVar;
            this.f17333c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [jh.c, r0.z] */
        @Override // x9.l
        public final jh.c invoke(q<jh.c, jh.b> qVar) {
            q<jh.c, jh.b> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17332b);
            Fragment fragment = this.f17331a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17333c, clsQ, jh.b.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class g extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17334a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f17335b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17336c;

        public g(da.d dVar, f fVar, da.d dVar2) {
            this.f17334a = dVar;
            this.f17335b = fVar;
            this.f17336c = dVar2;
        }

        public final l9.e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17334a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.introduction.a(this), w.a(jh.b.class), this.f17335b);
        }
    }

    public MobileAccidentIntroductionFragment() {
        super(R.layout.fragment_introduction);
        this.f17320a = d0.C(this, b.f17326a);
        da.d dVarA = w.a(jh.c.class);
        this.f17321b = new g(dVarA, new f(this, dVarA, dVarA), dVarA).t(this, f17319g[1]);
    }

    public final FragmentIntroductionBinding E() {
        return (FragmentIntroductionBinding) this.f17320a.a(this, f17319g[0]);
    }

    public final void F() {
        Context context = this.f17324e;
        if (context != null) {
            Object systemService = context.getSystemService("location");
            h.d(systemService, "null cannot be cast to non-null type android.location.LocationManager");
            if (!((LocationManager) systemService).isProviderEnabled("gps")) {
                H(R.string.mkt_introduction_page_location_provider_off);
                return;
            }
            int r22 = w4.d.f18694a;
            m4.d dVar = new m4.d(context);
            this.f17322c = dVar;
            h5.q qVar = new h5.q();
            x5.a.y(100);
            w4.a aVar = new w4.a(60000L, 0, 100, LocationRequestCompat.PASSIVE_INTERVAL, false, 0, null, new WorkSource(null), null);
            r.b(!qVar.b(), "cancellationToken may not be already canceled");
            m.a aVar2 = new m.a();
            aVar2.f11165a = new b0(aVar, qVar);
            aVar2.f11168d = 2415;
            dVar.c(0, aVar2.a()).f(new f0.b(new h5.l(qVar)));
            m4.d dVar2 = this.f17322c;
            if (dVar2 == null) {
                h.n("fusedLocationClient");
                throw null;
            }
            m.a aVar3 = new m.a();
            aVar3.f11165a = a0.b.f14m;
            aVar3.f11168d = 2414;
            z zVarC = dVar2.c(0, aVar3.a());
            p pVar = new p(7, new c());
            zVarC.getClass();
            y yVar = h5.m.f6842a;
            zVarC.d(yVar, pVar);
            zVarC.c(yVar, new androidx.camera.camera2.interop.f(6, this));
        }
    }

    public final void G(int r6) {
        Context context = this.f17324e;
        if (context != null) {
            v.e eVar = new v.e(context);
            v.e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.permission_location_rationale, eVar, null, 6, R.string.permission_rationale_dialog_ok), null, new d(context, this), 2);
            v.e.d(eVar, Integer.valueOf(R.string.permission_rationale_dialog_cancel), e.f17330a);
            eVar.show();
        }
    }

    public final void H(int r52) {
        Context context = this.f17324e;
        if (context != null) {
            int r12 = ke.d.f8929a;
            ConstraintLayout constraintLayout = E().f17154e;
            h.e(constraintLayout, "mIntroductionBinding.mkt…roductionContentContainer");
            ke.d dVarE = d.a.e(constraintLayout, r52, null, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((jh.c) this.f17321b.getValue(), new a());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        c5.w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onRequestPermissionsResult(int r22, String[] permissions, int[] grantResults) {
        h.f(permissions, "permissions");
        h.f(grantResults, "grantResults");
        super.onRequestPermissionsResult(r22, permissions, grantResults);
        if (r22 == 1) {
            if (td.a.d(Arrays.copyOf(grantResults, grantResults.length))) {
                F();
            }
        } else if (r22 == 2) {
            if (td.a.d(Arrays.copyOf(grantResults, grantResults.length))) {
                G(R.string.permission_location_rationale);
            }
        } else if (r22 == 3 && td.a.d(Arrays.copyOf(grantResults, grantResults.length))) {
            G(R.string.permission_location_rationale);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        Context context = view.getContext();
        this.f17324e = context;
        if (context != null) {
            int r42 = w4.d.f18694a;
            this.f17322c = new m4.d(context);
        }
        Context context2 = this.f17324e;
        if (context2 != null) {
            Object systemService = context2.getSystemService("layout_inflater");
            h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.progress_dialog, (ViewGroup) null);
            h.e(viewInflate, "inflater.inflate(R.layout.progress_dialog, null)");
            Context context3 = this.f17324e;
            h.c(context3);
            v.e eVar = new v.e(context3);
            this.f17323d = eVar;
            u.n(eVar, viewInflate);
            v.e eVar2 = this.f17323d;
            if (eVar2 != null) {
                eVar2.b(false);
            }
        }
        int r02 = 13;
        E().f17153d.setOnClickListener(new zd.e(r02, this));
        E().f17152c.setOnClickListener(new t1.f(12, this));
        E().f17151b.setOnClickListener(new xf.d(r02, this));
    }
}
