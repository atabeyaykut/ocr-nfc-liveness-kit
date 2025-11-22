package ge;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.core.content.res.ResourcesCompat;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class c {
    public static final void a(NotificationManager notificationManager, String messageBody, Context context, PendingIntent pendingIntent) {
        h.f(messageBody, "messageBody");
        NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
        bigTextStyle.bigText(messageBody);
        NotificationCompat.Builder autoCancel = new NotificationCompat.Builder(context, "default").setContentTitle("e-Devlet").setStyle(bigTextStyle).setAutoCancel(true);
        h.e(autoCancel, "Builder(applicationConte…     .setAutoCancel(true)");
        autoCancel.setSmallIcon(R.drawable.edk_notification_logo);
        autoCancel.setColor(ResourcesCompat.getColor(context.getResources(), R.color.notification_color, null));
        autoCancel.setContentIntent(pendingIntent);
        notificationManager.notify(d.f6701a.incrementAndGet(), autoCancel.build());
    }

    public static final void b(NotificationManager notificationManager, String messageBody, Context context, PendingIntent pendingIntent) {
        h.f(messageBody, "messageBody");
        NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
        bigTextStyle.bigText(messageBody);
        NotificationCompat.Builder priority = new NotificationCompat.Builder(context, "otp").setContentTitle("e-Devlet").setStyle(bigTextStyle).setContentText(messageBody).setAutoCancel(true).setPriority(1);
        h.e(priority, "Builder(applicationConte…tionCompat.PRIORITY_HIGH)");
        priority.setSmallIcon(R.drawable.edk_notification_logo);
        priority.setColor(ResourcesCompat.getColor(context.getResources(), R.color.notification_color, null));
        priority.setContentIntent(pendingIntent);
        notificationManager.notify(1923, priority.build());
    }

    public static final void c(NotificationManager notificationManager, String messageBody, Context context, PendingIntent pendingIntent, PendingIntent pendingIntent2, PendingIntent pendingIntent3, String str, String str2) {
        h.f(messageBody, "messageBody");
        NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
        bigTextStyle.bigText(messageBody);
        NotificationCompat.Builder priority = new NotificationCompat.Builder(context, "otp").setContentTitle("e-Devlet").setContentText(messageBody).setStyle(bigTextStyle).setAutoCancel(true).setPriority(1);
        h.e(priority, "Builder(applicationConte…tionCompat.PRIORITY_HIGH)");
        priority.setSmallIcon(R.drawable.edk_notification_logo);
        priority.setColor(ResourcesCompat.getColor(context.getResources(), R.color.notification_color, null));
        priority.setContentIntent(pendingIntent);
        priority.addAction(android.R.drawable.ic_input_delete, str, pendingIntent3);
        priority.addAction(android.R.drawable.ic_input_add, str2, pendingIntent2);
        notificationManager.notify(1923, priority.build());
    }
}
