package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabaseMigrations;
import androidx.work.impl.model.Preference;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class IdGenerator {
    public static final int INITIAL_ID = 0;
    public static final String NEXT_ALARM_MANAGER_ID_KEY = "next_alarm_manager_id";
    public static final String NEXT_JOB_SCHEDULER_ID_KEY = "next_job_scheduler_id";
    public static final String PREFERENCE_FILE_KEY = "androidx.work.util.id";
    private final WorkDatabase mWorkDatabase;

    public IdGenerator(@NonNull WorkDatabase workDatabase) {
        this.mWorkDatabase = workDatabase;
    }

    public static void migrateLegacyIdGenerator(@NonNull Context context, @NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREFERENCE_FILE_KEY, 0);
        if (sharedPreferences.contains(NEXT_JOB_SCHEDULER_ID_KEY) || sharedPreferences.contains(NEXT_JOB_SCHEDULER_ID_KEY)) {
            int r32 = sharedPreferences.getInt(NEXT_JOB_SCHEDULER_ID_KEY, 0);
            int r52 = sharedPreferences.getInt(NEXT_ALARM_MANAGER_ID_KEY, 0);
            supportSQLiteDatabase.beginTransaction();
            try {
                supportSQLiteDatabase.execSQL(WorkDatabaseMigrations.INSERT_PREFERENCE, new Object[]{NEXT_JOB_SCHEDULER_ID_KEY, Integer.valueOf(r32)});
                supportSQLiteDatabase.execSQL(WorkDatabaseMigrations.INSERT_PREFERENCE, new Object[]{NEXT_ALARM_MANAGER_ID_KEY, Integer.valueOf(r52)});
                sharedPreferences.edit().clear().apply();
                supportSQLiteDatabase.setTransactionSuccessful();
            } finally {
                supportSQLiteDatabase.endTransaction();
            }
        }
    }

    private int nextId(String str) {
        this.mWorkDatabase.beginTransaction();
        try {
            Long longValue = this.mWorkDatabase.preferenceDao().getLongValue(str);
            int r12 = 0;
            int r02 = longValue != null ? longValue.intValue() : 0;
            if (r02 != Integer.MAX_VALUE) {
                r12 = r02 + 1;
            }
            update(str, r12);
            this.mWorkDatabase.setTransactionSuccessful();
            return r02;
        } finally {
            this.mWorkDatabase.endTransaction();
        }
    }

    private void update(String str, int r6) {
        this.mWorkDatabase.preferenceDao().insertPreference(new Preference(str, r6));
    }

    public int nextAlarmManagerId() {
        int r12;
        synchronized (IdGenerator.class) {
            r12 = nextId(NEXT_ALARM_MANAGER_ID_KEY);
        }
        return r12;
    }

    public int nextJobSchedulerIdWithRange(int r32, int r42) {
        synchronized (IdGenerator.class) {
            int r12 = nextId(NEXT_JOB_SCHEDULER_ID_KEY);
            if (r12 < r32 || r12 > r42) {
                update(NEXT_JOB_SCHEDULER_ID_KEY, r32 + 1);
            } else {
                r32 = r12;
            }
        }
        return r32;
    }
}
