package jd;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import gd.e;
import id.b;

@TargetApi(18)
/* loaded from: classes2.dex */
public final class a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final e f8492a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Context f8493b;

    /* renamed from: c, reason: collision with root package name */
    public int f8494c = 0;

    /* renamed from: d, reason: collision with root package name */
    public final C0158a f8495d = new C0158a();

    /* renamed from: jd.a$a, reason: collision with other inner class name */
    public class C0158a extends BroadcastReceiver {
        public C0158a() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            a aVar = a.this;
            aVar.a("the screen going off");
            aVar.f8493b.getApplicationContext().unregisterReceiver(aVar.f8495d);
        }
    }

    public a(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f8493b = applicationContext;
        this.f8492a = e.g(applicationContext);
        ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
    }

    public final void a(String str) {
        e eVar = this.f8492a;
        if (eVar.f6650l) {
            b.d("BackgroundPowerSaver", androidx.browser.browseractions.a.a("We have inferred by ", str, " that we are in the background."), new Object[0]);
            eVar.k(true);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        int r02 = this.f8494c - 1;
        this.f8494c = r02;
        b.a("BackgroundPowerSaver", "activity paused: %s active activities: %s", activity, Integer.valueOf(r02));
        if (this.f8494c < 1) {
            b.a("BackgroundPowerSaver", "setting background mode", new Object[0]);
            e eVar = this.f8492a;
            eVar.getClass();
            b.a("BeaconManager", "API setBackgroundMode true", new Object[0]);
            eVar.k(true);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        int r02 = this.f8494c + 1;
        this.f8494c = r02;
        if (r02 < 1) {
            b.a("BackgroundPowerSaver", "reset active activity count on resume.  It was %s", Integer.valueOf(r02));
            this.f8494c = 1;
        }
        e eVar = this.f8492a;
        eVar.getClass();
        b.a("BeaconManager", "API setBackgroundMode false", new Object[0]);
        eVar.k(false);
        b.a("BackgroundPowerSaver", "activity resumed: %s active activities: %s", activity, Integer.valueOf(this.f8494c));
        e.g(this.f8493b);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
