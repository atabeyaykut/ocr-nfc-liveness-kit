package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class AlarmManagerCompat {

    @RequiresApi(19)
    public static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        public static void setExact(AlarmManager alarmManager, int r12, long j10, PendingIntent pendingIntent) {
            alarmManager.setExact(r12, j10, pendingIntent);
        }
    }

    @RequiresApi(21)
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        public static AlarmManager.AlarmClockInfo createAlarmClockInfo(long j10, PendingIntent pendingIntent) {
            return new AlarmManager.AlarmClockInfo(j10, pendingIntent);
        }

        @DoNotInline
        public static void setAlarmClock(AlarmManager alarmManager, Object obj, PendingIntent pendingIntent) {
            alarmManager.setAlarmClock((AlarmManager.AlarmClockInfo) obj, pendingIntent);
        }
    }

    @RequiresApi(23)
    public static class Api23Impl {
        private Api23Impl() {
        }

        @DoNotInline
        public static void setAndAllowWhileIdle(AlarmManager alarmManager, int r12, long j10, PendingIntent pendingIntent) {
            alarmManager.setAndAllowWhileIdle(r12, j10, pendingIntent);
        }

        @DoNotInline
        public static void setExactAndAllowWhileIdle(AlarmManager alarmManager, int r12, long j10, PendingIntent pendingIntent) {
            alarmManager.setExactAndAllowWhileIdle(r12, j10, pendingIntent);
        }
    }

    private AlarmManagerCompat() {
    }

    @SuppressLint({"MissingPermission"})
    public static void setAlarmClock(@NonNull AlarmManager alarmManager, long j10, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
        Api21Impl.setAlarmClock(alarmManager, Api21Impl.createAlarmClockInfo(j10, pendingIntent), pendingIntent2);
    }

    public static void setAndAllowWhileIdle(@NonNull AlarmManager alarmManager, int r32, long j10, @NonNull PendingIntent pendingIntent) {
        if (Build.VERSION.SDK_INT >= 23) {
            Api23Impl.setAndAllowWhileIdle(alarmManager, r32, j10, pendingIntent);
        } else {
            alarmManager.set(r32, j10, pendingIntent);
        }
    }

    public static void setExact(@NonNull AlarmManager alarmManager, int r12, long j10, @NonNull PendingIntent pendingIntent) {
        Api19Impl.setExact(alarmManager, r12, j10, pendingIntent);
    }

    public static void setExactAndAllowWhileIdle(@NonNull AlarmManager alarmManager, int r32, long j10, @NonNull PendingIntent pendingIntent) {
        if (Build.VERSION.SDK_INT >= 23) {
            Api23Impl.setExactAndAllowWhileIdle(alarmManager, r32, j10, pendingIntent);
        } else {
            setExact(alarmManager, r32, j10, pendingIntent);
        }
    }
}
