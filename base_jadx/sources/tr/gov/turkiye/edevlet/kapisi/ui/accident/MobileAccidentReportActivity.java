package tr.gov.turkiye.edevlet.kapisi.ui.accident;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.navigation.ActivityKt;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.ui.AppBarConfiguration;
import c5.y;
import com.google.android.material.transition.MaterialFadeThrough;
import ff.b;
import ff.d;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.e;
import m9.t;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.MobileAccidentReportActivity;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.ActivityMobileAccidentReportViewpagerBinding;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/MobileAccidentReportActivity;", "Lu8/a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentReportActivity extends u8.a {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f16940e = 0;

    /* renamed from: b, reason: collision with root package name */
    public final e f16941b = y.v(3, new a(this));

    /* renamed from: c, reason: collision with root package name */
    public final b f16942c = new b(this);

    /* renamed from: d, reason: collision with root package name */
    public boolean f16943d;

    public static final class a extends j implements x9.a<ActivityMobileAccidentReportViewpagerBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f16944a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AppCompatActivity appCompatActivity) {
            super(0);
            this.f16944a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityMobileAccidentReportViewpagerBinding invoke() {
            LayoutInflater layoutInflater = this.f16944a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityMobileAccidentReportViewpagerBinding.inflate(layoutInflater);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f16942c.getClass();
        applyOverrideConfiguration(b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f16942c.getClass();
        return d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f16942c.b(resources);
        return resources;
    }

    @Override // androidx.view.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        NavController navControllerFindNavController = ActivityKt.findNavController(this, R.id.nav_host_fragment);
        NavDestination currentDestination = navControllerFindNavController.getCurrentDestination();
        if (!(currentDestination != null && navControllerFindNavController.getGraph().getStartDestination() == currentDestination.getId())) {
            super.onBackPressed();
            return;
        }
        if (this.f16943d) {
            Intent intent = new Intent("action.dashboard.open");
            if (Build.VERSION.SDK_INT >= 34) {
                intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            intent.putExtra("favListFetched", false);
            startActivity(intent);
        }
        finish();
    }

    @Override // u8.a, androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        FragmentManager childFragmentManager;
        List<Fragment> fragments;
        this.f16942c.d();
        super.onCreate(bundle);
        e eVar = this.f16941b;
        setContentView(((ActivityMobileAccidentReportViewpagerBinding) eVar.getValue()).f17065a);
        this.f16943d = getIntent().getBooleanExtra("isCallingFromLogin", false);
        ((ActivityMobileAccidentReportViewpagerBinding) eVar.getValue()).f17066b.setTitle(getString(R.string.mkt_toolbar_title));
        setSupportActionBar(((ActivityMobileAccidentReportViewpagerBinding) eVar.getValue()).f17066b);
        ((ActivityMobileAccidentReportViewpagerBinding) eVar.getValue()).f17066b.setNavigationIcon(R.drawable.toolbar_back);
        ((ActivityMobileAccidentReportViewpagerBinding) eVar.getValue()).f17066b.setNavigationOnClickListener(new nf.a(11, this));
        NavController navControllerFindNavController = ActivityKt.findNavController(this, R.id.nav_host_fragment);
        AppBarConfiguration appBarConfigurationBuild = new AppBarConfiguration.Builder(new int[0]).setFallbackOnNavigateUpListener(new AppBarConfiguration.OnNavigateUpListener() { // from class: xg.a
            @Override // androidx.navigation.ui.AppBarConfiguration.OnNavigateUpListener
            public final boolean onNavigateUp() {
                int r02 = MobileAccidentReportActivity.f16940e;
                MobileAccidentReportActivity this$0 = this.f19247a;
                h.f(this$0, "this$0");
                return this$0.onNavigateUp();
            }
        }).build();
        h.e(appBarConfigurationBuild, "Builder()\n              …\n                .build()");
        Fragment fragmentFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.nav_host_fragment);
        Fragment fragment = (fragmentFindFragmentById == null || (childFragmentManager = fragmentFindFragmentById.getChildFragmentManager()) == null || (fragments = childFragmentManager.getFragments()) == null) ? null : (Fragment) t.a1(fragments);
        if (fragment != null) {
            fragment.setExitTransition(new MaterialFadeThrough());
        }
        androidx.navigation.ui.ActivityKt.setupActionBarWithNavController(this, navControllerFindNavController, appBarConfigurationBuild);
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public final boolean onSupportNavigateUp() {
        return ActivityKt.findNavController(this, R.id.nav_host_fragment).navigateUp() || super.onSupportNavigateUp();
    }
}
