package tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.vehicle;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.core.content.ContextCompat;
import androidx.core.os.BundleKt;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.fragment.FragmentKt;
import androidx.view.result.ActivityResultLauncher;
import androidx.view.result.contract.ActivityResultContracts;
import c5.e0;
import c5.u;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import io.realm.g0;
import java.util.Arrays;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.g;
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
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DifferentVehicleSaveModel;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentDifferentCarBinding;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.vehicle.MobileAccidentDifferentVehicleFragment;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;", "Lee/a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentDifferentVehicleFragment extends ee.a {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f17258g = {androidx.room.util.a.b(MobileAccidentDifferentVehicleFragment.class, "mDifferentCarBinding", "getMDifferentCarBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;"), androidx.room.util.a.b(MobileAccidentDifferentVehicleFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17259a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f17260b;

    /* renamed from: c, reason: collision with root package name */
    public v.e f17261c;

    /* renamed from: d, reason: collision with root package name */
    public Context f17262d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17263e;
    public final ActivityResultLauncher<Intent> f;

    public static final class a extends j implements l<fh.c, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(fh.c cVar) {
            v.e eVar;
            fh.c state = cVar;
            h.f(state, "state");
            r0.b<Result<DifferentVehicleSaveModel>> bVar = state.f5682a;
            boolean z10 = true;
            boolean z11 = bVar instanceof d1 ? true : bVar instanceof k;
            MobileAccidentDifferentVehicleFragment mobileAccidentDifferentVehicleFragment = MobileAccidentDifferentVehicleFragment.this;
            if (z11) {
                yd.a.f19652a.c("Loading different car", new Object[0]);
                if (mobileAccidentDifferentVehicleFragment.f17263e && (eVar = mobileAccidentDifferentVehicleFragment.f17261c) != null) {
                    eVar.show();
                }
            } else if (bVar instanceof c1) {
                yd.a.f19652a.c("Success different car", new Object[0]);
                v.e eVar2 = mobileAccidentDifferentVehicleFragment.f17261c;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                if (mobileAccidentDifferentVehicleFragment.f17263e) {
                    mobileAccidentDifferentVehicleFragment.f17263e = false;
                    FragmentKt.findNavController(mobileAccidentDifferentVehicleFragment).navigate(R.id.mktPolicyFragment, BundleKt.bundleOf(new g("companyBrand", String.valueOf(mobileAccidentDifferentVehicleFragment.E().f.getText()))));
                }
            } else if (bVar instanceof i) {
                yd.a.f19652a.c("Fail different car", new Object[0]);
                mobileAccidentDifferentVehicleFragment.f17263e = false;
                Throwable th2 = ((i) bVar).f13749b;
                v.e eVar3 = mobileAccidentDifferentVehicleFragment.f17261c;
                if (eVar3 != null) {
                    eVar3.dismiss();
                }
                if (th2 instanceof LoginException) {
                    Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    mobileAccidentDifferentVehicleFragment.startActivity(intentB);
                    FragmentActivity activity = mobileAccidentDifferentVehicleFragment.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else if (th2 instanceof NetworkErrorException) {
                    mobileAccidentDifferentVehicleFragment.E().f17124j.setVisibility(8);
                    mobileAccidentDifferentVehicleFragment.E().f17127m.f15878a.setVisibility(8);
                    mobileAccidentDifferentVehicleFragment.E().f17125k.f15873a.setVisibility(0);
                    mobileAccidentDifferentVehicleFragment.E().f17125k.f15874b.setOnClickListener(new t1.f(11, mobileAccidentDifferentVehicleFragment));
                } else if (th2 instanceof ServiceErrorExceptionWithMessage) {
                    String errorMessage = ((ServiceErrorExceptionWithMessage) th2).getErrorMessage();
                    mobileAccidentDifferentVehicleFragment.E().f17124j.setVisibility(8);
                    mobileAccidentDifferentVehicleFragment.E().f17125k.f15873a.setVisibility(8);
                    mobileAccidentDifferentVehicleFragment.E().f17127m.f15878a.setVisibility(0);
                    if (errorMessage != null && errorMessage.length() != 0) {
                        z10 = false;
                    }
                    if (!z10) {
                        mobileAccidentDifferentVehicleFragment.E().f17127m.f15880c.setText(errorMessage);
                    }
                } else {
                    mobileAccidentDifferentVehicleFragment.E().f17124j.setVisibility(8);
                    mobileAccidentDifferentVehicleFragment.E().f17125k.f15873a.setVisibility(8);
                    mobileAccidentDifferentVehicleFragment.E().f17127m.f15878a.setVisibility(0);
                }
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends kotlin.jvm.internal.g implements l<View, FragmentDifferentCarBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f17265a = new b();

        public b() {
            super(1, FragmentDifferentCarBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;", 0);
        }

        @Override // x9.l
        public final FragmentDifferentCarBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentDifferentCarBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<v.e, l9.m> {
        public c() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(v.e eVar) {
            v.e dialog = eVar;
            h.f(dialog, "dialog");
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            MobileAccidentDifferentVehicleFragment mobileAccidentDifferentVehicleFragment = MobileAccidentDifferentVehicleFragment.this;
            Context context = mobileAccidentDifferentVehicleFragment.f17262d;
            intent.setData(Uri.fromParts("package", context != null ? context.getPackageName() : null, null));
            mobileAccidentDifferentVehicleFragment.startActivity(intent);
            dialog.dismiss();
            return l9.m.f9594a;
        }
    }

    public static final class d extends j implements l<v.e, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public static final d f17267a = new d();

        public d() {
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

    public static final class e extends j implements l<q<fh.d, fh.c>, fh.d> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17268a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17269b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17270c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17268a = fragment;
            this.f17269b = dVar;
            this.f17270c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [fh.d, r0.z] */
        @Override // x9.l
        public final fh.d invoke(q<fh.d, fh.c> qVar) {
            q<fh.d, fh.c> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17269b);
            Fragment fragment = this.f17268a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17270c, clsQ, fh.c.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class f extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17271a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f17272b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17273c;

        public f(da.d dVar, e eVar, da.d dVar2) {
            this.f17271a = dVar;
            this.f17272b = eVar;
            this.f17273c = dVar2;
        }

        public final l9.e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17271a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.vehicle.a(this), w.a(fh.c.class), this.f17272b);
        }
    }

    public MobileAccidentDifferentVehicleFragment() {
        super(R.layout.fragment_different_car);
        this.f17259a = d0.C(this, b.f17265a);
        da.d dVarA = w.a(fh.d.class);
        this.f17260b = new f(dVarA, new e(this, dVarA, dVarA), dVarA).t(this, f17258g[1]);
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new androidx.camera.core.impl.utils.futures.a(6, this));
        h.e(activityResultLauncherRegisterForActivityResult, "registerForActivityResul…)\n            }\n        }");
        this.f = activityResultLauncherRegisterForActivityResult;
    }

    public final FragmentDifferentCarBinding E() {
        return (FragmentDifferentCarBinding) this.f17259a.a(this, f17258g[0]);
    }

    public final void F() {
        Intent intent = new Intent("action.qr.open");
        if (Build.VERSION.SDK_INT >= 34) {
            intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
        }
        intent.putExtra("comingFrom", 1);
        this.f.launch(intent);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G() {
        /*
            r10 = this;
            tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentDifferentCarBinding r0 = r10.E()
            com.google.android.material.textfield.TextInputEditText r0 = r0.f
            android.text.Editable r0 = r0.getText()
            java.lang.String r3 = java.lang.String.valueOf(r0)
            tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentDifferentCarBinding r0 = r10.E()
            com.google.android.material.textfield.TextInputEditText r0 = r0.f17119d
            android.text.Editable r0 = r0.getText()
            java.lang.String r4 = java.lang.String.valueOf(r0)
            tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentDifferentCarBinding r0 = r10.E()
            com.google.android.material.textfield.TextInputEditText r0 = r0.f17120e
            android.text.Editable r0 = r0.getText()
            java.lang.String r5 = java.lang.String.valueOf(r0)
            int r0 = r3.length()
            r1 = 1
            r7 = 0
            if (r0 <= 0) goto L34
            r0 = 1
            goto L35
        L34:
            r0 = 0
        L35:
            r8 = 0
            if (r0 == 0) goto Lab
            int r0 = r4.length()
            if (r0 <= 0) goto L40
            r0 = 1
            goto L41
        L40:
            r0 = 0
        L41:
            if (r0 == 0) goto Lab
            int r0 = r5.length()
            if (r0 <= 0) goto L4b
            r0 = 1
            goto L4c
        L4b:
            r0 = 0
        L4c:
            if (r0 == 0) goto Lab
            yd.a$a r0 = yd.a.f19652a
            java.lang.String r2 = "documentNumber "
            java.lang.String r2 = r2.concat(r3)
            java.lang.Object[] r6 = new java.lang.Object[r7]
            r0.c(r2, r6)
            java.lang.String r2 = "identityNumber "
            java.lang.String r2 = r2.concat(r4)
            java.lang.Object[] r6 = new java.lang.Object[r7]
            r0.c(r2, r6)
            java.lang.String r2 = "plateNumber "
            java.lang.String r2 = r2.concat(r5)
            java.lang.Object[] r6 = new java.lang.Object[r7]
            r0.c(r2, r6)
            tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentDifferentCarBinding r0 = r10.E()
            android.widget.CheckBox r0 = r0.f17118c
            boolean r0 = r0.isChecked()
            if (r0 == 0) goto La3
            r10.f17263e = r1
            l9.e r0 = r10.f17260b
            java.lang.Object r0 = r0.getValue()
            fh.d r0 = (fh.d) r0
            r0.getClass()
            fh.e r9 = new fh.e
            r6 = 0
            r1 = r9
            r2 = r0
            r1.<init>(r2, r3, r4, r5, r6)
            r1 = 3
            nc.a0 r2 = r0.f13883c
            c5.v.C(r2, r8, r7, r9, r1)
            fh.f r1 = new fh.f
            r1.<init>(r0, r8)
            fh.h r0 = r0.f5684h
            c5.v.D(r2, r0, r1)
            goto Le7
        La3:
            android.content.Context r0 = r10.f17262d
            if (r0 == 0) goto Le4
            r1 = 2131951896(0x7f130118, float:1.954022E38)
            goto Le0
        Lab:
            tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentDifferentCarBinding r0 = r10.E()
            androidx.constraintlayout.widget.ConstraintLayout r0 = r0.f17121g
            int r0 = r0.getVisibility()
            if (r0 == 0) goto Ld9
            android.content.Context r0 = r10.f17262d
            if (r0 == 0) goto Ld0
            tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentDifferentCarBinding r1 = r10.E()
            android.widget.TextView r1 = r1.f17122h
            java.lang.String r2 = "mDifferentCarBinding.headerCardFormTitle"
            kotlin.jvm.internal.h.e(r1, r2)
            r2 = 2131231020(0x7f08012c, float:1.807811E38)
            android.graphics.drawable.Drawable r0 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r0, r2)
            ge.a.a(r1, r0)
        Ld0:
            tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentDifferentCarBinding r0 = r10.E()
            androidx.constraintlayout.widget.ConstraintLayout r0 = r0.f17121g
            r0.setVisibility(r7)
        Ld9:
            android.content.Context r0 = r10.f17262d
            if (r0 == 0) goto Le4
            r1 = 2131951897(0x7f130119, float:1.9540221E38)
        Le0:
            java.lang.String r8 = r0.getString(r1)
        Le4:
            r10.H(r8)
        Le7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.vehicle.MobileAccidentDifferentVehicleFragment.G():void");
    }

    public final void H(String str) {
        Context context = this.f17262d;
        if (context != null) {
            if (str == null || str.length() == 0) {
                str = getString(R.string.service_error_info);
            }
            h.e(str, "if (errorMessage.isNullO…rrorMessage\n            }");
            int r12 = ke.d.f8929a;
            NestedScrollView nestedScrollView = E().f17126l;
            h.e(nestedScrollView, "mDifferentCarBinding.profileContainer");
            ke.d dVarB = d.a.b(nestedScrollView, str, ContextCompat.getColor(context, R.color.error_color));
            if (dVarB != null) {
                dVarB.show();
            }
        }
    }

    public final void I(int r52) {
        Context context = this.f17262d;
        h.c(context);
        v.e eVar = new v.e(context);
        v.e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.permission_storage_rationale, eVar, null, 6, R.string.permission_rationale_dialog_ok), null, new c(), 2);
        v.e.d(eVar, Integer.valueOf(R.string.permission_rationale_dialog_cancel), d.f17267a);
        eVar.show();
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((fh.d) this.f17260b.getValue(), new a());
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
        if (r22 == 0) {
            if (td.a.d(Arrays.copyOf(grantResults, grantResults.length))) {
                F();
            } else if (td.a.c(this, (String[]) Arrays.copyOf(e0.f1488b, 1))) {
                I(R.string.permission_storage_rationale);
            } else {
                I(R.string.permission_storage_rationale);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        Context context = view.getContext();
        this.f17262d = context;
        if (context != null) {
            FragmentActivity activity = getActivity();
            Object systemService = activity != null ? activity.getSystemService("layout_inflater") : null;
            h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.progress_dialog, (ViewGroup) null);
            h.e(viewInflate, "inflater.inflate(R.layout.progress_dialog, null)");
            v.e eVar = new v.e(context);
            this.f17261c = eVar;
            u.n(eVar, viewInflate);
            v.e eVar2 = this.f17261c;
            if (eVar2 != null) {
                eVar2.b(false);
            }
        }
        g0 g0VarT = g0.t();
        g0VarT.m();
        E().f17117b.setOnClickListener(new xf.d(12, this));
        E().f17123i.setOnClickListener(new be.d(8, this));
        E().f17118c.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: fh.a
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                m<Object>[] mVarArr = MobileAccidentDifferentVehicleFragment.f17258g;
            }
        });
        E().f17122h.setOnClickListener(new zd.a(14, this));
    }
}
