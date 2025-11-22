package tr.gov.turkiye.edevlet.kapisi.main;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.widget.ImageView;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.core.impl.k;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.navigation.ActivityKt;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.BottomNavigationViewKt;
import androidx.view.result.ActivityResultLauncher;
import androidx.view.result.contract.ActivityResultContracts;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import c5.y;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.transition.MaterialFadeThrough;
import com.google.firebase.messaging.FirebaseMessaging;
import dg.c;
import ff.b;
import ff.d;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.e;
import m9.t;
import org.greenrobot.eventbus.ThreadMode;
import qd.i;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.ActivityMainBinding;
import tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteListWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker;
import tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageData;
import tr.gov.turkiye.edevlet.kapisi.main.MainActivity;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007¨\u0006\b"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;", "Lu8/a;", "Lqe/a;", NotificationCompat.CATEGORY_EVENT, "Ll9/m;", "onEvent", "<init>", "()V", "ui-main_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MainActivity extends u8.a {
    public static final /* synthetic */ int f = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f16565b;

    /* renamed from: c, reason: collision with root package name */
    public final e f16566c = y.v(3, new a(this));

    /* renamed from: d, reason: collision with root package name */
    public final b f16567d = new b(this);

    /* renamed from: e, reason: collision with root package name */
    public ActivityResultLauncher<String> f16568e;

    public static final class a extends j implements x9.a<ActivityMainBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f16569a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AppCompatActivity appCompatActivity) {
            super(0);
            this.f16569a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityMainBinding invoke() {
            LayoutInflater layoutInflater = this.f16569a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityMainBinding.inflate(layoutInflater);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f16567d.getClass();
        applyOverrideConfiguration(b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f16567d.getClass();
        return d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f16567d.b(resources);
        return resources;
    }

    @Override // u8.a, androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        FragmentManager childFragmentManager;
        List<Fragment> fragments;
        this.f16567d.d();
        super.onCreate(bundle);
        setContentView(u().f15856a);
        Intent intent = getIntent();
        if (intent != null) {
            this.f16565b = intent.getBooleanExtra("favListFetched", false);
        }
        setSupportActionBar(u().f15858c);
        NavController navControllerFindNavController = ActivityKt.findNavController(this, R.id.nav_host_fragment);
        Fragment fragment = null;
        AppBarConfiguration appBarConfigurationBuild = new AppBarConfiguration.Builder((Set<Integer>) x5.a.s(Integer.valueOf(R.id.navigation_home), Integer.valueOf(R.id.navigation_services), Integer.valueOf(R.id.navigation_search), Integer.valueOf(R.id.navigation_profile))).setOpenableLayout(null).setFallbackOnNavigateUpListener(new dg.b(c.f4908a)).build();
        h.b(appBarConfigurationBuild, "AppBarConfiguration.Buil…eUpListener)\n    .build()");
        Fragment fragmentFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.nav_host_fragment);
        if (fragmentFindFragmentById != null && (childFragmentManager = fragmentFindFragmentById.getChildFragmentManager()) != null && (fragments = childFragmentManager.getFragments()) != null) {
            fragment = (Fragment) t.a1(fragments);
        }
        if (fragment != null) {
            fragment.setExitTransition(new MaterialFadeThrough());
        }
        androidx.navigation.ui.ActivityKt.setupActionBarWithNavController(this, navControllerFindNavController, appBarConfigurationBuild);
        navControllerFindNavController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: dg.a
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public final void onDestinationChanged(NavController navController, NavDestination destination, Bundle bundle2) {
                int r42;
                ImageView imageView;
                int r52 = MainActivity.f;
                MainActivity this$0 = this.f4906a;
                h.f(this$0, "this$0");
                h.f(navController, "<anonymous parameter 0>");
                h.f(destination, "destination");
                if (destination.getId() != R.id.navigation_home && destination.getId() != R.id.navigation_services && destination.getId() != R.id.navigation_search && destination.getId() != R.id.navigation_profile) {
                    this$0.u().f15858c.setNavigationIcon(R.drawable.toolbar_back);
                }
                if (destination.getId() == R.id.navigation_home || destination.getId() == R.id.aboutPageFragment) {
                    if (this$0.getSupportActionBar() == null) {
                        return;
                    }
                    ActionBar supportActionBar = this$0.getSupportActionBar();
                    r42 = 0;
                    if (supportActionBar != null) {
                        supportActionBar.setDisplayShowTitleEnabled(false);
                    }
                    imageView = (ImageView) this$0.u().f15858c.findViewById(R.id.brand);
                } else {
                    if (this$0.getSupportActionBar() == null) {
                        return;
                    }
                    ActionBar supportActionBar2 = this$0.getSupportActionBar();
                    if (supportActionBar2 != null) {
                        supportActionBar2.setDisplayShowTitleEnabled(true);
                    }
                    imageView = (ImageView) this$0.u().f15858c.findViewById(R.id.brand);
                    r42 = 8;
                }
                imageView.setVisibility(r42);
            }
        });
        BottomNavigationView bottomNavigationView = u().f15857b;
        h.e(bottomNavigationView, "mainActivityBinding.navView");
        BottomNavigationViewKt.setupWithNavController(bottomNavigationView, navControllerFindNavController);
        try {
            if (!this.f16565b) {
                OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(FavoriteListWorker.class).build();
                h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…riteListWorker>().build()");
                WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild);
            }
        } catch (Exception unused) {
        }
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                t();
            }
            FirebaseMessaging.c().e().b(new androidx.camera.core.impl.utils.futures.a(5, this));
        } catch (Exception unused2) {
        }
        try {
            OneTimeWorkRequest oneTimeWorkRequestBuild2 = new OneTimeWorkRequest.Builder(InfoMessageWorker.class).build();
            h.e(oneTimeWorkRequestBuild2, "OneTimeWorkRequestBuilde…oMessageWorker>().build()");
            WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild2);
        } catch (Exception unused3) {
        }
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(qe.a aVar) {
        InfoMessageData infoMessageData;
        if (aVar != null) {
            try {
                if (aVar.f13599a && (infoMessageData = aVar.f13600b) != null) {
                    qd.b.b().i(new qe.b(infoMessageData));
                }
            } catch (Exception unused) {
            }
        }
        qd.b.b().l(qe.a.class);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (qd.b.b().e(this)) {
            qd.b.b().n(this);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() throws SecurityException {
        super.onResume();
        this.f16567d.e(this);
        if (qd.b.b().e(this)) {
            return;
        }
        qd.b.b().k(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public final boolean onSupportNavigateUp() {
        return ActivityKt.findNavController(this, R.id.nav_host_fragment).navigateUp() || super.onSupportNavigateUp();
    }

    @RequiresApi(26)
    public final void s() {
        NotificationChannel notificationChannel = new NotificationChannel("default", "Tüm Bildirimler", 3);
        NotificationChannel notificationChannel2 = new NotificationChannel("otp", "Islem Bildirimleri", 4);
        Object systemService = getSystemService("notification");
        h.d(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        notificationChannel.setLightColor(-16776961);
        notificationChannel.setLockscreenVisibility(0);
        notificationChannel2.setLightColor(-16776961);
        notificationChannel2.setLockscreenVisibility(0);
        notificationManager.createNotificationChannel(notificationChannel);
        notificationManager.createNotificationChannel(notificationChannel2);
    }

    @RequiresApi(26)
    public final void t() {
        if (Build.VERSION.SDK_INT < 33 || ContextCompat.checkSelfPermission(this, "android.permission.POST_NOTIFICATIONS") == 0) {
            s();
            return;
        }
        ActivityResultLauncher<String> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new k(5, this));
        h.e(activityResultLauncherRegisterForActivityResult, "registerForActivityResul…          }\n            }");
        this.f16568e = activityResultLauncherRegisterForActivityResult;
        v.e eVar = new v.e(this);
        v.e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.permission_post_notification, eVar, null, 6, R.string.permission_post_notification_rationale_dialog_ok), null, new dg.d(this), 2);
        v.e.d(eVar, Integer.valueOf(R.string.permission_post_notification_rationale_dialog_cancel), dg.e.f4910a);
        eVar.show();
    }

    public final ActivityMainBinding u() {
        return (ActivityMainBinding) this.f16566c.getValue();
    }
}
