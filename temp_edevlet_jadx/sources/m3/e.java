package m3;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.errorprone.annotations.RestrictedInheritance;
import o3.a1;

@RestrictedInheritance(allowedOnPath = ".*java.*/com/google/android/gms.*", allowlistAnnotations = {h4.d.class, h4.e.class}, explanation = "Sub classing of GMS Core's APIs are restricted to GMS Core client libs and testing fakes.", link = "go/gmscore-restrictedinheritance")
/* loaded from: classes.dex */
public final class e extends f {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f9943c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public static final e f9944d = new e();

    @Nullable
    public static AlertDialog e(@NonNull Context context, int r6, r3.d0 d0Var, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        if (r6 == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(context, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(r3.a0.c(r6, context));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String strB = r3.a0.b(r6, context);
        if (strB != null) {
            builder.setPositiveButton(strB, d0Var);
        }
        String strD = r3.a0.d(r6, context);
        if (strD != null) {
            builder.setTitle(strD);
        }
        Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(r6)), new IllegalArgumentException());
        return builder.create();
    }

    public static void f(Activity activity, AlertDialog alertDialog, String str, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof FragmentActivity) {
                FragmentManager supportFragmentManager = ((FragmentActivity) activity).getSupportFragmentManager();
                l lVar = new l();
                if (alertDialog == null) {
                    throw new NullPointerException("Cannot display null dialog");
                }
                alertDialog.setOnCancelListener(null);
                alertDialog.setOnDismissListener(null);
                lVar.f9961a = alertDialog;
                if (onCancelListener != null) {
                    lVar.f9962b = onCancelListener;
                }
                lVar.show(supportFragmentManager, str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        android.app.FragmentManager fragmentManager = activity.getFragmentManager();
        c cVar = new c();
        if (alertDialog == null) {
            throw new NullPointerException("Cannot display null dialog");
        }
        alertDialog.setOnCancelListener(null);
        alertDialog.setOnDismissListener(null);
        cVar.f9933a = alertDialog;
        if (onCancelListener != null) {
            cVar.f9934b = onCancelListener;
        }
        cVar.show(fragmentManager, str);
    }

    @Override // m3.f
    @Nullable
    public final Intent b(@Nullable Context context, int r22, @Nullable String str) {
        return super.b(context, r22, str);
    }

    @Override // m3.f
    public final int c(int r12, @NonNull Context context) {
        return super.c(r12, context);
    }

    public final void d(@NonNull Activity activity, int r42, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog alertDialogE = e(activity, r42, new r3.b0(activity, super.b(activity, r42, "d")), onCancelListener);
        if (alertDialogE == null) {
            return;
        }
        f(activity, alertDialogE, "GooglePlayServicesErrorDialog", onCancelListener);
    }

    @TargetApi(20)
    public final void g(Context context, int r12, @Nullable PendingIntent pendingIntent) {
        int r122;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(r12), null), new IllegalArgumentException());
        if (r12 == 18) {
            new m(this, context).sendEmptyMessageDelayed(1, 120000L);
            return;
        }
        if (pendingIntent == null) {
            if (r12 == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String strF = r12 == 6 ? r3.a0.f(context, "common_google_play_services_resolution_required_title") : r3.a0.d(r12, context);
        if (strF == null) {
            strF = context.getResources().getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_notification_ticker);
        }
        String strE = (r12 == 6 || r12 == 19) ? r3.a0.e(context, "common_google_play_services_resolution_required_text", r3.a0.a(context)) : r3.a0.c(r12, context);
        Resources resources = context.getResources();
        Object systemService = context.getSystemService("notification");
        r3.r.i(systemService);
        NotificationManager notificationManager = (NotificationManager) systemService;
        NotificationCompat.Builder style = new NotificationCompat.Builder(context).setLocalOnly(true).setAutoCancel(true).setContentTitle(strF).setStyle(new NotificationCompat.BigTextStyle().bigText(strE));
        PackageManager packageManager = context.getPackageManager();
        if (w3.b.f18671a == null) {
            w3.b.f18671a = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        if (w3.b.f18671a.booleanValue()) {
            style.setSmallIcon(context.getApplicationInfo().icon).setPriority(2);
            if (w3.b.a(context)) {
                style.addAction(tr.gov.turkiye.edevlet.kapisi.R.drawable.common_full_open_on_phone, resources.getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_open_on_phone), pendingIntent);
            } else {
                style.setContentIntent(pendingIntent);
            }
        } else {
            style.setSmallIcon(R.drawable.stat_sys_warning).setTicker(resources.getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_notification_ticker)).setWhen(System.currentTimeMillis()).setContentIntent(pendingIntent).setContentText(strE);
        }
        if (w3.d.a()) {
            r3.r.l(w3.d.a());
            synchronized (f9943c) {
            }
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
            String string = context.getResources().getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_notification_channel_name);
            if (notificationChannel == null) {
                notificationChannel = new NotificationChannel("com.google.android.gms.availability", string, 4);
            } else {
                if (!string.contentEquals(notificationChannel.getName())) {
                    notificationChannel.setName(string);
                }
                style.setChannelId("com.google.android.gms.availability");
            }
            notificationManager.createNotificationChannel(notificationChannel);
            style.setChannelId("com.google.android.gms.availability");
        }
        Notification notificationBuild = style.build();
        if (r12 == 1 || r12 == 2 || r12 == 3) {
            j.f9954a.set(false);
            r122 = 10436;
        } else {
            r122 = 39789;
        }
        notificationManager.notify(r122, notificationBuild);
    }

    public final void h(@NonNull Activity activity, @NonNull o3.g gVar, int r52, @Nullable a1 a1Var) {
        AlertDialog alertDialogE = e(activity, r52, new r3.c0(super.b(activity, r52, "d"), gVar), a1Var);
        if (alertDialogE == null) {
            return;
        }
        f(activity, alertDialogE, "GooglePlayServicesErrorDialog", a1Var);
    }
}
