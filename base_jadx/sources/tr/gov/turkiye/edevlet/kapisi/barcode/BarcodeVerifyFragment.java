package tr.gov.turkiye.edevlet.kapisi.barcode;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import androidx.view.result.ActivityResultLauncher;
import androidx.view.result.contract.ActivityResultContracts;
import c5.b4;
import c5.w;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.transition.MaterialSharedAxis;
import com.google.firebase.analytics.FirebaseAnalytics;
import da.m;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import t1.f;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.barcode.databinding.FragmentBarcodeVerifyBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import v.e;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodeVerifyFragment;", "Lee/a;", "<init>", "()V", "ui-barcode_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class BarcodeVerifyFragment extends ee.a {
    public static final /* synthetic */ m<Object>[] f = {androidx.room.util.a.b(BarcodeVerifyFragment.class, "mBarcodeVerifyBinding", "getMBarcodeVerifyBinding()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentBarcodeVerifyBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public FirebaseAnalytics f15772a;

    /* renamed from: b, reason: collision with root package name */
    public final FragmentViewBindingDelegate f15773b;

    /* renamed from: c, reason: collision with root package name */
    public Context f15774c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f15775d;

    /* renamed from: e, reason: collision with root package name */
    public final ActivityResultLauncher<Intent> f15776e;

    public /* synthetic */ class a extends g implements l<View, FragmentBarcodeVerifyBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f15777a = new a();

        public a() {
            super(1, FragmentBarcodeVerifyBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentBarcodeVerifyBinding;", 0);
        }

        @Override // x9.l
        public final FragmentBarcodeVerifyBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentBarcodeVerifyBinding.bind(p02);
        }
    }

    public static final class b extends j implements l<e, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f15778a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ BarcodeVerifyFragment f15779b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, BarcodeVerifyFragment barcodeVerifyFragment) {
            super(1);
            this.f15778a = context;
            this.f15779b = barcodeVerifyFragment;
        }

        @Override // x9.l
        public final l9.m invoke(e eVar) {
            e dialog = eVar;
            h.f(dialog, "dialog");
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", this.f15778a.getPackageName(), null));
            this.f15779b.startActivity(intent);
            dialog.dismiss();
            return l9.m.f9594a;
        }
    }

    public static final class c extends j implements l<e, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f15780a = new c();

        public c() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(e eVar) {
            e dialog = eVar;
            h.f(dialog, "dialog");
            dialog.dismiss();
            return l9.m.f9594a;
        }
    }

    public BarcodeVerifyFragment() {
        super(R.layout.fragment_barcode_verify);
        this.f15773b = d0.C(this, a.f15777a);
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new androidx.constraintlayout.core.state.a());
        h.e(activityResultLauncherRegisterForActivityResult, "registerForActivityResul…)\n            }\n        }");
        this.f15776e = activityResultLauncherRegisterForActivityResult;
    }

    public final void E(String str) {
        try {
            FirebaseAnalytics firebaseAnalytics = this.f15772a;
            if (firebaseAnalytics == null) {
                h.n("firebaseAnalytics");
                throw null;
            }
            b4 b4Var = new b4(2, 0);
            b4Var.d("screen_name", str);
            b4Var.d("screen_class", "BarcodeVerifyFragment");
            firebaseAnalytics.a((Bundle) b4Var.f1418a, "screen_view");
        } catch (Exception unused) {
        }
    }

    public final void F() {
        Intent intent = new Intent("action.barcode.open");
        if (Build.VERSION.SDK_INT >= 34) {
            intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
        }
        intent.putExtra("isFromLogin", true);
        this.f15776e.launch(intent);
        E("BarcodeVerifyQR_Screen");
    }

    public final void G(int r6) {
        Context context = this.f15774c;
        if (context != null) {
            e eVar = new e(context);
            e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.permission_camera_rationale, eVar, null, 6, R.string.permission_rationale_dialog_ok), null, new b(context, this), 2);
            e.d(eVar, Integer.valueOf(R.string.permission_rationale_dialog_cancel), c.f15780a);
            eVar.show();
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
    public final void onRequestPermissionsResult(int r22, String[] permissions, int[] grantResults) {
        h.f(permissions, "permissions");
        h.f(grantResults, "grantResults");
        super.onRequestPermissionsResult(r22, permissions, grantResults);
        if (r22 == 0) {
            if (td.a.d(Arrays.copyOf(grantResults, grantResults.length))) {
                F();
            } else if (td.a.c(this, (String[]) Arrays.copyOf(b0.a.f1005d, 1))) {
                G(R.string.permission_camera_rationale);
            } else {
                G(R.string.permission_camera_rationale);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        E("BarcodeVerify_Screen");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f15774c = view.getContext();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f15775d = arguments.getBoolean("isFromLogin");
        }
        m<?>[] mVarArr = f;
        m<?> mVar = mVarArr[0];
        FragmentViewBindingDelegate fragmentViewBindingDelegate = this.f15773b;
        ((FragmentBarcodeVerifyBinding) fragmentViewBindingDelegate.a(this, mVar)).f15797b.setOnClickListener(new zd.e(0, this));
        ((FragmentBarcodeVerifyBinding) fragmentViewBindingDelegate.a(this, mVarArr[0])).f15798c.setOnClickListener(new f(1, this));
    }
}
