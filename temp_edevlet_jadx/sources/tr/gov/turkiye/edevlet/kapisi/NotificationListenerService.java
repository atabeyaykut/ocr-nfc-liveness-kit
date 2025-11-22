package tr.gov.turkiye.edevlet.kapisi;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.collection.ArrayMap;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import com.google.firebase.messaging.FirebaseMessagingService;
import g7.g0;
import ge.c;
import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.g;
import mc.j;
import tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/NotificationListenerService;", "Lcom/google/firebase/messaging/FirebaseMessagingService;", "<init>", "()V", "app_v21Release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class NotificationListenerService extends FirebaseMessagingService {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public final void d(g0 g0Var) {
        int r6;
        PendingIntent pendingIntentApprove;
        if (g0Var.f5864b == null) {
            ArrayMap arrayMap = new ArrayMap();
            Bundle bundle = g0Var.f5863a;
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals(TypedValues.TransitionType.S_FROM) && !str.equals("message_type") && !str.equals("collapse_key")) {
                        arrayMap.put(str, str2);
                    }
                }
            }
            g0Var.f5864b = arrayMap;
        }
        ArrayMap arrayMap2 = g0Var.f5864b;
        h.e(arrayMap2, "remoteMessage.data");
        String str3 = (String) arrayMap2.get("edk_pns_template_id");
        if (str3 != null) {
            try {
                if (j.x(str3, "1")) {
                    String str4 = (String) arrayMap2.get("alert");
                    String str5 = (String) arrayMap2.get("edk_pns_hizmet_kodu");
                    if (str4 == null || str4.length() == 0) {
                        return;
                    }
                    if (str5 == null || str5.length() == 0) {
                        return;
                    }
                    int r42 = new Random().nextInt(1000);
                    Intent intent = new Intent("action.login.open");
                    intent.setFlags(32768);
                    int r72 = Build.VERSION.SDK_INT;
                    if (r72 >= 34) {
                        intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    intent.putExtra("newServiceNotification", str5);
                    intent.putExtra("redirectToMessageBox", true);
                    intent.putExtra("pushTemplateId", "1");
                    intent.setFlags(67141632);
                    PendingIntent resultPendingIntent = r72 >= 23 ? PendingIntent.getActivity(this, r42, intent, 201326592) : PendingIntent.getActivity(this, r42, intent, 134217728);
                    Object systemService = getSystemService("notification");
                    h.d(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
                    Context applicationContext = getApplicationContext();
                    h.e(applicationContext, "applicationContext");
                    h.e(resultPendingIntent, "resultPendingIntent");
                    c.a((NotificationManager) systemService, str4, applicationContext, resultPendingIntent);
                    return;
                }
                if (j.x(str3, ExifInterface.GPS_MEASUREMENT_2D)) {
                    String str6 = (String) arrayMap2.get("alert");
                    if (str6 == null || str6.length() == 0) {
                        return;
                    }
                    int r22 = new Random().nextInt(1000);
                    Intent intent2 = new Intent("action.login.open");
                    intent2.setFlags(32768);
                    int r62 = Build.VERSION.SDK_INT;
                    if (r62 >= 34) {
                        intent2.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    intent2.putExtra("redirectToMessageBox", true);
                    intent2.putExtra("pushTemplateId", ExifInterface.GPS_MEASUREMENT_2D);
                    intent2.setFlags(67141632);
                    PendingIntent resultPendingIntent2 = r62 >= 23 ? PendingIntent.getActivity(this, r22, intent2, 201326592) : PendingIntent.getActivity(this, r22, intent2, 134217728);
                    Object systemService2 = getSystemService("notification");
                    h.d(systemService2, "null cannot be cast to non-null type android.app.NotificationManager");
                    Context applicationContext2 = getApplicationContext();
                    h.e(applicationContext2, "applicationContext");
                    h.e(resultPendingIntent2, "resultPendingIntent");
                    c.a((NotificationManager) systemService2, str6, applicationContext2, resultPendingIntent2);
                    return;
                }
                if (j.x(str3, ExifInterface.GPS_MEASUREMENT_3D)) {
                    String str7 = (String) arrayMap2.get("alert");
                    String str8 = (String) arrayMap2.get("edk_pns_redirect_url");
                    if (str7 == null || str7.length() == 0) {
                        return;
                    }
                    if (str8 == null || str8.length() == 0) {
                        return;
                    }
                    int r32 = new Random().nextInt(1000);
                    Intent intent3 = new Intent("android.intent.action.VIEW");
                    intent3.setData(Uri.parse(str8));
                    PendingIntent resultPendingIntent3 = Build.VERSION.SDK_INT >= 23 ? PendingIntent.getActivity(this, r32, intent3, 201326592) : PendingIntent.getActivity(this, r32, intent3, 134217728);
                    Object systemService3 = getSystemService("notification");
                    h.d(systemService3, "null cannot be cast to non-null type android.app.NotificationManager");
                    Context applicationContext3 = getApplicationContext();
                    h.e(applicationContext3, "applicationContext");
                    h.e(resultPendingIntent3, "resultPendingIntent");
                    c.a((NotificationManager) systemService3, str7, applicationContext3, resultPendingIntent3);
                    return;
                }
                if (j.x(str3, "4")) {
                    String str9 = (String) arrayMap2.get("alert");
                    String str10 = (String) arrayMap2.get("edk_pns_market_redirect_url");
                    if (str9 == null || str9.length() == 0) {
                        return;
                    }
                    if (str10 == null || str10.length() == 0) {
                        return;
                    }
                    int r33 = new Random().nextInt(1000);
                    Intent intent4 = new Intent("android.intent.action.VIEW");
                    intent4.setData(Uri.parse(str10));
                    PendingIntent resultPendingIntent4 = Build.VERSION.SDK_INT >= 23 ? PendingIntent.getActivity(this, r33, intent4, 201326592) : PendingIntent.getActivity(this, r33, intent4, 134217728);
                    Object systemService4 = getSystemService("notification");
                    h.d(systemService4, "null cannot be cast to non-null type android.app.NotificationManager");
                    Context applicationContext4 = getApplicationContext();
                    h.e(applicationContext4, "applicationContext");
                    h.e(resultPendingIntent4, "resultPendingIntent");
                    c.a((NotificationManager) systemService4, str9, applicationContext4, resultPendingIntent4);
                    return;
                }
                if (j.x(str3, "5")) {
                    String str11 = (String) arrayMap2.get("alert");
                    String str12 = (String) arrayMap2.get("edk_pns_redirect_url");
                    if (str11 == null || str11.length() == 0) {
                        return;
                    }
                    if (str12 == null || str12.length() == 0) {
                        return;
                    }
                    int r34 = new Random().nextInt(1000);
                    Intent intent5 = new Intent("android.intent.action.VIEW");
                    intent5.setData(Uri.parse(str12));
                    PendingIntent resultPendingIntent5 = Build.VERSION.SDK_INT >= 23 ? PendingIntent.getActivity(this, r34, intent5, 201326592) : PendingIntent.getActivity(this, r34, intent5, 134217728);
                    Object systemService5 = getSystemService("notification");
                    h.d(systemService5, "null cannot be cast to non-null type android.app.NotificationManager");
                    Context applicationContext5 = getApplicationContext();
                    h.e(applicationContext5, "applicationContext");
                    h.e(resultPendingIntent5, "resultPendingIntent");
                    c.a((NotificationManager) systemService5, str11, applicationContext5, resultPendingIntent5);
                    return;
                }
                if (j.x(str3, "6")) {
                    String str13 = (String) arrayMap2.get("alert");
                    if (str13 == null || str13.length() == 0) {
                        return;
                    }
                    int r23 = new Random().nextInt(1000);
                    Intent intent6 = new Intent("action.login.open");
                    intent6.setFlags(32768);
                    int r63 = Build.VERSION.SDK_INT;
                    if (r63 >= 34) {
                        intent6.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    intent6.putExtra("redirectToMessageBox", false);
                    intent6.putExtra("pushTemplateId", "6");
                    intent6.setFlags(67141632);
                    PendingIntent resultPendingIntent6 = r63 >= 23 ? PendingIntent.getActivity(this, r23, intent6, 201326592) : PendingIntent.getActivity(this, r23, intent6, 134217728);
                    Object systemService6 = getSystemService("notification");
                    h.d(systemService6, "null cannot be cast to non-null type android.app.NotificationManager");
                    Context applicationContext6 = getApplicationContext();
                    h.e(applicationContext6, "applicationContext");
                    h.e(resultPendingIntent6, "resultPendingIntent");
                    c.a((NotificationManager) systemService6, str13, applicationContext6, resultPendingIntent6);
                    return;
                }
                if (j.x(str3, "7")) {
                    String str14 = (String) arrayMap2.get("alert");
                    if (str14 == null || str14.length() == 0) {
                        return;
                    }
                    Random random = new Random();
                    int r73 = random.nextInt(1000);
                    int r82 = random.nextInt(1000);
                    int r43 = random.nextInt(1000);
                    Intent intent7 = new Intent("action.login.open");
                    intent7.setFlags(32768);
                    int r11 = Build.VERSION.SDK_INT;
                    if (r11 >= 34) {
                        intent7.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    intent7.putExtra("redirectToMessageBox", false);
                    intent7.putExtra("pushTemplateId", "7");
                    intent7.setFlags(67141632);
                    PendingIntent resultPendingIntent7 = PendingIntent.getActivity(this, r73, intent7, r11 >= 23 ? 201326592 : 134217728);
                    Object systemService7 = getSystemService("notification");
                    h.d(systemService7, "null cannot be cast to non-null type android.app.NotificationManager");
                    NotificationManager notificationManager = (NotificationManager) systemService7;
                    if (!arrayMap2.containsKey("user_key") || !arrayMap2.containsKey("transaction_id")) {
                        Context applicationContext7 = getApplicationContext();
                        h.e(applicationContext7, "applicationContext");
                        h.e(resultPendingIntent7, "resultPendingIntent");
                        c.b(notificationManager, str14, applicationContext7, resultPendingIntent7);
                        return;
                    }
                    Intent intent8 = new Intent(this, (Class<?>) NotificationClickListener.class);
                    intent8.setAction("tr.gov.turkiye.edevlet.kapisi.APPROVE_ACTION");
                    intent8.putExtra("uk", (String) arrayMap2.get("user_key"));
                    intent8.putExtra("tid", (String) arrayMap2.get("transaction_id"));
                    intent8.putExtra("nid", 1923);
                    Intent intent9 = new Intent(this, (Class<?>) NotificationClickListener.class);
                    intent9.setAction("tr.gov.turkiye.edevlet.kapisi.CANCEL_ACTION");
                    intent9.putExtra("uk", (String) arrayMap2.get("user_key"));
                    intent9.putExtra("tid", (String) arrayMap2.get("transaction_id"));
                    intent9.putExtra("nid", 1923);
                    if (r11 >= 23) {
                        pendingIntentApprove = PendingIntent.getBroadcast(this, r82, intent8, 201326592);
                        r6 = 134217728;
                    } else {
                        r6 = 134217728;
                        pendingIntentApprove = PendingIntent.getBroadcast(this, r82, intent8, 134217728);
                    }
                    PendingIntent pendingIntentCancel = r11 >= 23 ? PendingIntent.getBroadcast(this, r43, intent9, 201326592) : PendingIntent.getBroadcast(this, r43, intent9, r6);
                    String string = getString(R.string.notification_text_approve);
                    h.e(string, "getString(R.string.notification_text_approve)");
                    String string2 = getString(R.string.notification_text_cancel);
                    h.e(string2, "getString(R.string.notification_text_cancel)");
                    try {
                        if (h.a(String.valueOf(getApplicationContext().getSharedPreferences("MainActivity", 0).getString("language", "tr")), "tr")) {
                            string = "Onayla";
                            string2 = "Vazgeç";
                        }
                    } catch (Exception unused) {
                    }
                    String str15 = string;
                    String str16 = string2;
                    Context applicationContext8 = getApplicationContext();
                    h.e(applicationContext8, "applicationContext");
                    h.e(resultPendingIntent7, "resultPendingIntent");
                    h.e(pendingIntentApprove, "pendingIntentApprove");
                    h.e(pendingIntentCancel, "pendingIntentCancel");
                    c.c(notificationManager, str14, applicationContext8, resultPendingIntent7, pendingIntentApprove, pendingIntentCancel, str16, str15);
                }
            } catch (Exception unused2) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public final void e(String token) throws Throwable {
        h.f(token, "token");
        try {
            SharedPreferences sharedPreferences = getSharedPreferences("MainActivity", 0);
            h.e(sharedPreferences, "sharedPreferences");
            SharedPreferences.Editor editor = sharedPreferences.edit();
            h.e(editor, "editor");
            editor.putString("gcm_token", token);
            editor.commit();
            g[] gVarArr = {new g("token", token)};
            Data.Builder builder = new Data.Builder();
            g gVar = gVarArr[0];
            builder.put((String) gVar.f9582a, gVar.f9583b);
            Data dataBuild = builder.build();
            h.e(dataBuild, "dataBuilder.build()");
            OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(RegisterWorker.class).setInputData(dataBuild).build();
            h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…tData(workerData).build()");
            OneTimeWorkRequest oneTimeWorkRequestBuild2 = new OneTimeWorkRequest.Builder(UpdateTokenWorker.class).setInputData(dataBuild).build();
            h.e(oneTimeWorkRequestBuild2, "OneTimeWorkRequestBuilde…tData(workerData).build()");
            WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild);
            WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild2);
        } catch (Exception unused) {
        }
    }
}
