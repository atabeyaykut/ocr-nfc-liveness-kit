package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationCompat;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.utils.IdGenerator;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
class Alarms {
    private static final String TAG = Logger.tagWithPrefix("Alarms");

    private Alarms() {
    }

    public static void cancelAlarm(@NonNull Context context, @NonNull WorkManagerImpl workManagerImpl, @NonNull String str) {
        SystemIdInfoDao systemIdInfoDao = workManagerImpl.getWorkDatabase().systemIdInfoDao();
        SystemIdInfo systemIdInfo = systemIdInfoDao.getSystemIdInfo(str);
        if (systemIdInfo != null) {
            cancelExactAlarm(context, str, systemIdInfo.systemId);
            Logger.get().debug(TAG, String.format("Removing SystemIdInfo for workSpecId (%s)", str), new Throwable[0]);
            systemIdInfoDao.removeSystemIdInfo(str);
        }
    }

    private static void cancelExactAlarm(@NonNull Context context, @NonNull String str, int r72) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent service = PendingIntent.getService(context, r72, CommandHandler.createDelayMetIntent(context, str), Build.VERSION.SDK_INT >= 23 ? 603979776 : PKIFailureInfo.duplicateCertReq);
        if (service == null || alarmManager == null) {
            return;
        }
        Logger.get().debug(TAG, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(r72)), new Throwable[0]);
        alarmManager.cancel(service);
    }

    public static void setAlarm(@NonNull Context context, @NonNull WorkManagerImpl workManagerImpl, @NonNull String str, long j10) {
        int r32;
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        SystemIdInfoDao systemIdInfoDao = workDatabase.systemIdInfoDao();
        SystemIdInfo systemIdInfo = systemIdInfoDao.getSystemIdInfo(str);
        if (systemIdInfo != null) {
            cancelExactAlarm(context, str, systemIdInfo.systemId);
            r32 = systemIdInfo.systemId;
        } else {
            r32 = new IdGenerator(workDatabase).nextAlarmManagerId();
            systemIdInfoDao.insertSystemIdInfo(new SystemIdInfo(str, r32));
        }
        setExactAlarm(context, str, r32, j10);
    }

    private static void setExactAlarm(@NonNull Context context, @NonNull String str, int r52, long j10) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent service = PendingIntent.getService(context, r52, CommandHandler.createDelayMetIntent(context, str), Build.VERSION.SDK_INT >= 23 ? 201326592 : 134217728);
        if (alarmManager != null) {
            alarmManager.setExact(0, j10, service);
        }
    }
}
