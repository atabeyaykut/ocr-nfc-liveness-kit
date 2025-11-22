package tr.gov.turkiye.edevlet.kapisi.barcode;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import c5.y;
import ff.b;
import ff.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.e;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.barcode.databinding.ActivityBarcodeVerifyBinding;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodeVerifyActivity;", "Lu8/a;", "<init>", "()V", "ui-barcode_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class BarcodeVerifyActivity extends u8.a {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f15768d = 0;

    /* renamed from: b, reason: collision with root package name */
    public final e f15769b = y.v(3, new a(this));

    /* renamed from: c, reason: collision with root package name */
    public final b f15770c = new b(this);

    public static final class a extends j implements x9.a<ActivityBarcodeVerifyBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f15771a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AppCompatActivity appCompatActivity) {
            super(0);
            this.f15771a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityBarcodeVerifyBinding invoke() {
            LayoutInflater layoutInflater = this.f15771a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityBarcodeVerifyBinding.inflate(layoutInflater);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f15770c.getClass();
        applyOverrideConfiguration(b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f15770c.getClass();
        return d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f15770c.b(resources);
        return resources;
    }

    @Override // u8.a, androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.f15770c.d();
        super.onCreate(bundle);
        e eVar = this.f15769b;
        setContentView(((ActivityBarcodeVerifyBinding) eVar.getValue()).f15794a);
        ((ActivityBarcodeVerifyBinding) eVar.getValue()).f15795b.setTitle(getString(R.string.item_dashboard_barcode_verify));
        setSupportActionBar(((ActivityBarcodeVerifyBinding) eVar.getValue()).f15795b);
        ((ActivityBarcodeVerifyBinding) eVar.getValue()).f15795b.setNavigationOnClickListener(new zd.d(0, this));
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean("isFromLogin", true);
        BarcodeVerifyFragment barcodeVerifyFragment = new BarcodeVerifyFragment();
        barcodeVerifyFragment.setArguments(bundle2);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        h.e(supportFragmentManager, "supportFragmentManager");
        FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
        h.e(fragmentTransactionBeginTransaction, "beginTransaction()");
        fragmentTransactionBeginTransaction.setReorderingAllowed(true);
        fragmentTransactionBeginTransaction.replace(R.id.fragment_container_view, barcodeVerifyFragment);
        fragmentTransactionBeginTransaction.commit();
    }
}
