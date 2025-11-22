package androidx.work.impl.model;

import android.database.Cursor;
import androidx.collection.ArrayMap;
import androidx.lifecycle.LiveData;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class WorkSpecDao_Impl implements WorkSpecDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<WorkSpec> __insertionAdapterOfWorkSpec;
    private final SharedSQLiteStatement __preparedStmtOfDelete;
    private final SharedSQLiteStatement __preparedStmtOfIncrementWorkSpecRunAttemptCount;
    private final SharedSQLiteStatement __preparedStmtOfMarkWorkSpecScheduled;
    private final SharedSQLiteStatement __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast;
    private final SharedSQLiteStatement __preparedStmtOfResetScheduledState;
    private final SharedSQLiteStatement __preparedStmtOfResetWorkSpecRunAttemptCount;
    private final SharedSQLiteStatement __preparedStmtOfSetOutput;
    private final SharedSQLiteStatement __preparedStmtOfSetPeriodStartTime;

    public WorkSpecDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
        this.__insertionAdapterOfWorkSpec = new EntityInsertionAdapter<WorkSpec>(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.1
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, WorkSpec workSpec) throws Throwable {
                String str = workSpec.f999id;
                if (str == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, str);
                }
                supportSQLiteStatement.bindLong(2, WorkTypeConverters.stateToInt(workSpec.state));
                String str2 = workSpec.workerClassName;
                if (str2 == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, str2);
                }
                String str3 = workSpec.inputMergerClassName;
                if (str3 == null) {
                    supportSQLiteStatement.bindNull(4);
                } else {
                    supportSQLiteStatement.bindString(4, str3);
                }
                byte[] byteArrayInternal = Data.toByteArrayInternal(workSpec.input);
                if (byteArrayInternal == null) {
                    supportSQLiteStatement.bindNull(5);
                } else {
                    supportSQLiteStatement.bindBlob(5, byteArrayInternal);
                }
                byte[] byteArrayInternal2 = Data.toByteArrayInternal(workSpec.output);
                if (byteArrayInternal2 == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindBlob(6, byteArrayInternal2);
                }
                supportSQLiteStatement.bindLong(7, workSpec.initialDelay);
                supportSQLiteStatement.bindLong(8, workSpec.intervalDuration);
                supportSQLiteStatement.bindLong(9, workSpec.flexDuration);
                supportSQLiteStatement.bindLong(10, workSpec.runAttemptCount);
                supportSQLiteStatement.bindLong(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
                supportSQLiteStatement.bindLong(12, workSpec.backoffDelayDuration);
                supportSQLiteStatement.bindLong(13, workSpec.periodStartTime);
                supportSQLiteStatement.bindLong(14, workSpec.minimumRetentionDuration);
                supportSQLiteStatement.bindLong(15, workSpec.scheduleRequestedAt);
                supportSQLiteStatement.bindLong(16, workSpec.expedited ? 1L : 0L);
                supportSQLiteStatement.bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(workSpec.outOfQuotaPolicy));
                Constraints constraints = workSpec.constraints;
                if (constraints != null) {
                    supportSQLiteStatement.bindLong(18, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                    supportSQLiteStatement.bindLong(19, constraints.requiresCharging() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(20, constraints.requiresDeviceIdle() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(21, constraints.requiresBatteryNotLow() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(22, constraints.requiresStorageNotLow() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(23, constraints.getTriggerContentUpdateDelay());
                    supportSQLiteStatement.bindLong(24, constraints.getTriggerMaxContentDelay());
                    byte[] bArrContentUriTriggersToByteArray = WorkTypeConverters.contentUriTriggersToByteArray(constraints.getContentUriTriggers());
                    if (bArrContentUriTriggersToByteArray != null) {
                        supportSQLiteStatement.bindBlob(25, bArrContentUriTriggersToByteArray);
                        return;
                    }
                } else {
                    supportSQLiteStatement.bindNull(18);
                    supportSQLiteStatement.bindNull(19);
                    supportSQLiteStatement.bindNull(20);
                    supportSQLiteStatement.bindNull(21);
                    supportSQLiteStatement.bindNull(22);
                    supportSQLiteStatement.bindNull(23);
                    supportSQLiteStatement.bindNull(24);
                }
                supportSQLiteStatement.bindNull(25);
            }

            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }
        };
        this.__preparedStmtOfDelete = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM workspec WHERE id=?";
            }
        };
        this.__preparedStmtOfSetOutput = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET output=? WHERE id=?";
            }
        };
        this.__preparedStmtOfSetPeriodStartTime = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET period_start_time=? WHERE id=?";
            }
        };
        this.__preparedStmtOfIncrementWorkSpecRunAttemptCount = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
            }
        };
        this.__preparedStmtOfResetWorkSpecRunAttemptCount = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.6
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
            }
        };
        this.__preparedStmtOfMarkWorkSpecScheduled = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.7
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
            }
        };
        this.__preparedStmtOfResetScheduledState = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.8
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
            }
        };
        this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.9
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkProgressAsandroidxWorkData(ArrayMap<String, ArrayList<Data>> arrayMap) {
        ArrayList<Data> arrayList;
        int r52;
        Set<String> setKeySet = arrayMap.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (arrayMap.size() > 999) {
            ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>(RoomDatabase.MAX_BIND_PARAMETER_CNT);
            int size = arrayMap.size();
            int r42 = 0;
            loop0: while (true) {
                r52 = 0;
                while (r42 < size) {
                    arrayMap2.put(arrayMap.keyAt(r42), arrayMap.valueAt(r42));
                    r42++;
                    r52++;
                    if (r52 == 999) {
                        break;
                    }
                }
                __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                arrayMap2 = new ArrayMap<>(RoomDatabase.MAX_BIND_PARAMETER_CNT);
            }
            if (r52 > 0) {
                __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                return;
            }
            return;
        }
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        int size2 = setKeySet.size();
        StringUtil.appendPlaceholders(sbNewStringBuilder, size2);
        sbNewStringBuilder.append(")");
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(sbNewStringBuilder.toString(), size2 + 0);
        int r22 = 1;
        for (String str : setKeySet) {
            if (str == null) {
                roomSQLiteQueryAcquire.bindNull(r22);
            } else {
                roomSQLiteQueryAcquire.bindString(r22, str);
            }
            r22++;
        }
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(cursorQuery, "work_spec_id");
            if (columnIndex == -1) {
                return;
            }
            while (cursorQuery.moveToNext()) {
                if (!cursorQuery.isNull(columnIndex) && (arrayList = arrayMap.get(cursorQuery.getString(columnIndex))) != null) {
                    arrayList.add(Data.fromByteArray(cursorQuery.getBlob(0)));
                }
            }
        } finally {
            cursorQuery.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkTagAsjavaLangString(ArrayMap<String, ArrayList<String>> arrayMap) {
        ArrayList<String> arrayList;
        int r52;
        Set<String> setKeySet = arrayMap.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (arrayMap.size() > 999) {
            ArrayMap<String, ArrayList<String>> arrayMap2 = new ArrayMap<>(RoomDatabase.MAX_BIND_PARAMETER_CNT);
            int size = arrayMap.size();
            int r42 = 0;
            loop0: while (true) {
                r52 = 0;
                while (r42 < size) {
                    arrayMap2.put(arrayMap.keyAt(r42), arrayMap.valueAt(r42));
                    r42++;
                    r52++;
                    if (r52 == 999) {
                        break;
                    }
                }
                __fetchRelationshipWorkTagAsjavaLangString(arrayMap2);
                arrayMap2 = new ArrayMap<>(RoomDatabase.MAX_BIND_PARAMETER_CNT);
            }
            if (r52 > 0) {
                __fetchRelationshipWorkTagAsjavaLangString(arrayMap2);
                return;
            }
            return;
        }
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        int size2 = setKeySet.size();
        StringUtil.appendPlaceholders(sbNewStringBuilder, size2);
        sbNewStringBuilder.append(")");
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(sbNewStringBuilder.toString(), size2 + 0);
        int r22 = 1;
        for (String str : setKeySet) {
            if (str == null) {
                roomSQLiteQueryAcquire.bindNull(r22);
            } else {
                roomSQLiteQueryAcquire.bindString(r22, str);
            }
            r22++;
        }
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(cursorQuery, "work_spec_id");
            if (columnIndex == -1) {
                return;
            }
            while (cursorQuery.moveToNext()) {
                if (!cursorQuery.isNull(columnIndex) && (arrayList = arrayMap.get(cursorQuery.getString(columnIndex))) != null) {
                    arrayList.add(cursorQuery.getString(0));
                }
            }
        } finally {
            cursorQuery.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void delete(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfDelete.acquire();
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(1);
        } else {
            supportSQLiteStatementAcquire.bindString(1, str);
        }
        this.__db.beginTransaction();
        try {
            supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDelete.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getAllEligibleWorkSpecsForScheduling(int r35) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, r35);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "required_network_type");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_charging");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_device_idle");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_battery_not_low");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_storage_not_low");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger_content_update_delay");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger_max_content_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "content_uri_triggers");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "worker_class_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "input_merger_class_name");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "input");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "output");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "initial_delay");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "interval_duration");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "flex_duration");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_attempt_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "backoff_policy");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "backoff_delay_duration");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "period_start_time");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "minimum_retention_duration");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "schedule_requested_at");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_in_foreground");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "out_of_quota_policy");
                int r28 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(columnIndexOrThrow9);
                    int r29 = columnIndexOrThrow9;
                    String string2 = cursorQuery.getString(columnIndexOrThrow11);
                    int r30 = columnIndexOrThrow11;
                    Constraints constraints = new Constraints();
                    int r32 = columnIndexOrThrow;
                    constraints.setRequiredNetworkType(WorkTypeConverters.intToNetworkType(cursorQuery.getInt(columnIndexOrThrow)));
                    constraints.setRequiresCharging(cursorQuery.getInt(columnIndexOrThrow2) != 0);
                    constraints.setRequiresDeviceIdle(cursorQuery.getInt(columnIndexOrThrow3) != 0);
                    constraints.setRequiresBatteryNotLow(cursorQuery.getInt(columnIndexOrThrow4) != 0);
                    constraints.setRequiresStorageNotLow(cursorQuery.getInt(columnIndexOrThrow5) != 0);
                    int r02 = columnIndexOrThrow2;
                    int r31 = columnIndexOrThrow3;
                    constraints.setTriggerContentUpdateDelay(cursorQuery.getLong(columnIndexOrThrow6));
                    constraints.setTriggerMaxContentDelay(cursorQuery.getLong(columnIndexOrThrow7));
                    constraints.setContentUriTriggers(WorkTypeConverters.byteArrayToContentUriTriggers(cursorQuery.getBlob(columnIndexOrThrow8)));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow10));
                    workSpec.inputMergerClassName = cursorQuery.getString(columnIndexOrThrow12);
                    workSpec.input = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow13));
                    int r12 = r28;
                    workSpec.output = Data.fromByteArray(cursorQuery.getBlob(r12));
                    r28 = r12;
                    int r72 = columnIndexOrThrow15;
                    workSpec.initialDelay = cursorQuery.getLong(r72);
                    int r17 = columnIndexOrThrow12;
                    int r03 = columnIndexOrThrow16;
                    workSpec.intervalDuration = cursorQuery.getLong(r03);
                    int r22 = columnIndexOrThrow4;
                    int r13 = columnIndexOrThrow17;
                    workSpec.flexDuration = cursorQuery.getLong(r13);
                    int r73 = columnIndexOrThrow18;
                    workSpec.runAttemptCount = cursorQuery.getInt(r73);
                    int r82 = columnIndexOrThrow19;
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(cursorQuery.getInt(r82));
                    columnIndexOrThrow17 = r13;
                    int r04 = columnIndexOrThrow20;
                    workSpec.backoffDelayDuration = cursorQuery.getLong(r04);
                    int r14 = columnIndexOrThrow21;
                    workSpec.periodStartTime = cursorQuery.getLong(r14);
                    columnIndexOrThrow21 = r14;
                    int r74 = columnIndexOrThrow22;
                    workSpec.minimumRetentionDuration = cursorQuery.getLong(r74);
                    int r05 = columnIndexOrThrow23;
                    workSpec.scheduleRequestedAt = cursorQuery.getLong(r05);
                    int r15 = columnIndexOrThrow24;
                    workSpec.expedited = cursorQuery.getInt(r15) != 0;
                    int r23 = columnIndexOrThrow25;
                    workSpec.outOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(cursorQuery.getInt(r23));
                    workSpec.constraints = constraints;
                    arrayList.add(workSpec);
                    columnIndexOrThrow25 = r23;
                    columnIndexOrThrow2 = r02;
                    columnIndexOrThrow12 = r17;
                    columnIndexOrThrow15 = r72;
                    columnIndexOrThrow16 = r03;
                    columnIndexOrThrow18 = r73;
                    columnIndexOrThrow23 = r05;
                    columnIndexOrThrow9 = r29;
                    columnIndexOrThrow11 = r30;
                    columnIndexOrThrow = r32;
                    columnIndexOrThrow24 = r15;
                    columnIndexOrThrow22 = r74;
                    columnIndexOrThrow3 = r31;
                    columnIndexOrThrow20 = r04;
                    columnIndexOrThrow4 = r22;
                    columnIndexOrThrow19 = r82;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getAllUnfinishedWork() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(cursorQuery.getString(0));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getAllWorkSpecIds() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(cursorQuery.getString(0));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<String>> getAllWorkSpecIdsLiveData() {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec", 0);
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"workspec"}, true, new Callable<List<String>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.10
            @Override // java.util.concurrent.Callable
            public List<String> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor cursorQuery = DBUtil.query(WorkSpecDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                    try {
                        ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                        while (cursorQuery.moveToNext()) {
                            arrayList.add(cursorQuery.getString(0));
                        }
                        WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                        return arrayList;
                    } finally {
                        cursorQuery.close();
                    }
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getEligibleWorkForScheduling(int r35) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        roomSQLiteQueryAcquire.bindLong(1, r35);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "required_network_type");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_charging");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_device_idle");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_battery_not_low");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_storage_not_low");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger_content_update_delay");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger_max_content_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "content_uri_triggers");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "worker_class_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "input_merger_class_name");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "input");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "output");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "initial_delay");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "interval_duration");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "flex_duration");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_attempt_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "backoff_policy");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "backoff_delay_duration");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "period_start_time");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "minimum_retention_duration");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "schedule_requested_at");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_in_foreground");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "out_of_quota_policy");
                int r28 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(columnIndexOrThrow9);
                    int r29 = columnIndexOrThrow9;
                    String string2 = cursorQuery.getString(columnIndexOrThrow11);
                    int r30 = columnIndexOrThrow11;
                    Constraints constraints = new Constraints();
                    int r32 = columnIndexOrThrow;
                    constraints.setRequiredNetworkType(WorkTypeConverters.intToNetworkType(cursorQuery.getInt(columnIndexOrThrow)));
                    constraints.setRequiresCharging(cursorQuery.getInt(columnIndexOrThrow2) != 0);
                    constraints.setRequiresDeviceIdle(cursorQuery.getInt(columnIndexOrThrow3) != 0);
                    constraints.setRequiresBatteryNotLow(cursorQuery.getInt(columnIndexOrThrow4) != 0);
                    constraints.setRequiresStorageNotLow(cursorQuery.getInt(columnIndexOrThrow5) != 0);
                    int r02 = columnIndexOrThrow2;
                    int r31 = columnIndexOrThrow3;
                    constraints.setTriggerContentUpdateDelay(cursorQuery.getLong(columnIndexOrThrow6));
                    constraints.setTriggerMaxContentDelay(cursorQuery.getLong(columnIndexOrThrow7));
                    constraints.setContentUriTriggers(WorkTypeConverters.byteArrayToContentUriTriggers(cursorQuery.getBlob(columnIndexOrThrow8)));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow10));
                    workSpec.inputMergerClassName = cursorQuery.getString(columnIndexOrThrow12);
                    workSpec.input = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow13));
                    int r12 = r28;
                    workSpec.output = Data.fromByteArray(cursorQuery.getBlob(r12));
                    r28 = r12;
                    int r72 = columnIndexOrThrow15;
                    workSpec.initialDelay = cursorQuery.getLong(r72);
                    int r17 = columnIndexOrThrow12;
                    int r03 = columnIndexOrThrow16;
                    workSpec.intervalDuration = cursorQuery.getLong(r03);
                    int r22 = columnIndexOrThrow4;
                    int r13 = columnIndexOrThrow17;
                    workSpec.flexDuration = cursorQuery.getLong(r13);
                    int r73 = columnIndexOrThrow18;
                    workSpec.runAttemptCount = cursorQuery.getInt(r73);
                    int r82 = columnIndexOrThrow19;
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(cursorQuery.getInt(r82));
                    columnIndexOrThrow17 = r13;
                    int r04 = columnIndexOrThrow20;
                    workSpec.backoffDelayDuration = cursorQuery.getLong(r04);
                    int r14 = columnIndexOrThrow21;
                    workSpec.periodStartTime = cursorQuery.getLong(r14);
                    columnIndexOrThrow21 = r14;
                    int r74 = columnIndexOrThrow22;
                    workSpec.minimumRetentionDuration = cursorQuery.getLong(r74);
                    int r05 = columnIndexOrThrow23;
                    workSpec.scheduleRequestedAt = cursorQuery.getLong(r05);
                    int r15 = columnIndexOrThrow24;
                    workSpec.expedited = cursorQuery.getInt(r15) != 0;
                    int r23 = columnIndexOrThrow25;
                    workSpec.outOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(cursorQuery.getInt(r23));
                    workSpec.constraints = constraints;
                    arrayList.add(workSpec);
                    columnIndexOrThrow25 = r23;
                    columnIndexOrThrow2 = r02;
                    columnIndexOrThrow12 = r17;
                    columnIndexOrThrow15 = r72;
                    columnIndexOrThrow16 = r03;
                    columnIndexOrThrow18 = r73;
                    columnIndexOrThrow23 = r05;
                    columnIndexOrThrow9 = r29;
                    columnIndexOrThrow11 = r30;
                    columnIndexOrThrow = r32;
                    columnIndexOrThrow24 = r15;
                    columnIndexOrThrow22 = r74;
                    columnIndexOrThrow3 = r31;
                    columnIndexOrThrow20 = r04;
                    columnIndexOrThrow4 = r22;
                    columnIndexOrThrow19 = r82;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<Data> getInputsFromPrerequisites(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(Data.fromByteArray(cursorQuery.getBlob(0)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getRecentlyCompletedWork(long j10) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC", 1);
        roomSQLiteQueryAcquire.bindLong(1, j10);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "required_network_type");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_charging");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_device_idle");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_battery_not_low");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_storage_not_low");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger_content_update_delay");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger_max_content_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "content_uri_triggers");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "worker_class_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "input_merger_class_name");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "input");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "output");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "initial_delay");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "interval_duration");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "flex_duration");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_attempt_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "backoff_policy");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "backoff_delay_duration");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "period_start_time");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "minimum_retention_duration");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "schedule_requested_at");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_in_foreground");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "out_of_quota_policy");
                int r27 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(columnIndexOrThrow9);
                    int r28 = columnIndexOrThrow9;
                    String string2 = cursorQuery.getString(columnIndexOrThrow11);
                    int r29 = columnIndexOrThrow11;
                    Constraints constraints = new Constraints();
                    int r31 = columnIndexOrThrow;
                    constraints.setRequiredNetworkType(WorkTypeConverters.intToNetworkType(cursorQuery.getInt(columnIndexOrThrow)));
                    constraints.setRequiresCharging(cursorQuery.getInt(columnIndexOrThrow2) != 0);
                    constraints.setRequiresDeviceIdle(cursorQuery.getInt(columnIndexOrThrow3) != 0);
                    constraints.setRequiresBatteryNotLow(cursorQuery.getInt(columnIndexOrThrow4) != 0);
                    constraints.setRequiresStorageNotLow(cursorQuery.getInt(columnIndexOrThrow5) != 0);
                    int r02 = columnIndexOrThrow2;
                    int r30 = columnIndexOrThrow3;
                    constraints.setTriggerContentUpdateDelay(cursorQuery.getLong(columnIndexOrThrow6));
                    constraints.setTriggerMaxContentDelay(cursorQuery.getLong(columnIndexOrThrow7));
                    constraints.setContentUriTriggers(WorkTypeConverters.byteArrayToContentUriTriggers(cursorQuery.getBlob(columnIndexOrThrow8)));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow10));
                    workSpec.inputMergerClassName = cursorQuery.getString(columnIndexOrThrow12);
                    workSpec.input = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow13));
                    int r12 = r27;
                    workSpec.output = Data.fromByteArray(cursorQuery.getBlob(r12));
                    int r72 = columnIndexOrThrow15;
                    r27 = r12;
                    workSpec.initialDelay = cursorQuery.getLong(r72);
                    int r13 = columnIndexOrThrow12;
                    int r03 = columnIndexOrThrow16;
                    workSpec.intervalDuration = cursorQuery.getLong(r03);
                    int r22 = columnIndexOrThrow4;
                    int r14 = columnIndexOrThrow17;
                    workSpec.flexDuration = cursorQuery.getLong(r14);
                    int r73 = columnIndexOrThrow18;
                    workSpec.runAttemptCount = cursorQuery.getInt(r73);
                    int r82 = columnIndexOrThrow19;
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(cursorQuery.getInt(r82));
                    columnIndexOrThrow17 = r14;
                    int r04 = columnIndexOrThrow20;
                    workSpec.backoffDelayDuration = cursorQuery.getLong(r04);
                    int r15 = columnIndexOrThrow21;
                    workSpec.periodStartTime = cursorQuery.getLong(r15);
                    columnIndexOrThrow21 = r15;
                    int r74 = columnIndexOrThrow22;
                    workSpec.minimumRetentionDuration = cursorQuery.getLong(r74);
                    int r05 = columnIndexOrThrow23;
                    workSpec.scheduleRequestedAt = cursorQuery.getLong(r05);
                    int r16 = columnIndexOrThrow24;
                    workSpec.expedited = cursorQuery.getInt(r16) != 0;
                    int r23 = columnIndexOrThrow25;
                    workSpec.outOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(cursorQuery.getInt(r23));
                    workSpec.constraints = constraints;
                    arrayList.add(workSpec);
                    columnIndexOrThrow2 = r02;
                    columnIndexOrThrow25 = r23;
                    columnIndexOrThrow12 = r13;
                    columnIndexOrThrow15 = r72;
                    columnIndexOrThrow16 = r03;
                    columnIndexOrThrow18 = r73;
                    columnIndexOrThrow23 = r05;
                    columnIndexOrThrow9 = r28;
                    columnIndexOrThrow11 = r29;
                    columnIndexOrThrow = r31;
                    columnIndexOrThrow24 = r16;
                    columnIndexOrThrow22 = r74;
                    columnIndexOrThrow3 = r30;
                    columnIndexOrThrow20 = r04;
                    columnIndexOrThrow4 = r22;
                    columnIndexOrThrow19 = r82;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getRunningWork() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=1", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "required_network_type");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_charging");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_device_idle");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_battery_not_low");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_storage_not_low");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger_content_update_delay");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger_max_content_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "content_uri_triggers");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "worker_class_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "input_merger_class_name");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "input");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "output");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "initial_delay");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "interval_duration");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "flex_duration");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_attempt_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "backoff_policy");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "backoff_delay_duration");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "period_start_time");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "minimum_retention_duration");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "schedule_requested_at");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_in_foreground");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "out_of_quota_policy");
                int r28 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(columnIndexOrThrow9);
                    int r29 = columnIndexOrThrow9;
                    String string2 = cursorQuery.getString(columnIndexOrThrow11);
                    int r30 = columnIndexOrThrow11;
                    Constraints constraints = new Constraints();
                    int r32 = columnIndexOrThrow;
                    constraints.setRequiredNetworkType(WorkTypeConverters.intToNetworkType(cursorQuery.getInt(columnIndexOrThrow)));
                    constraints.setRequiresCharging(cursorQuery.getInt(columnIndexOrThrow2) != 0);
                    constraints.setRequiresDeviceIdle(cursorQuery.getInt(columnIndexOrThrow3) != 0);
                    constraints.setRequiresBatteryNotLow(cursorQuery.getInt(columnIndexOrThrow4) != 0);
                    constraints.setRequiresStorageNotLow(cursorQuery.getInt(columnIndexOrThrow5) != 0);
                    int r02 = columnIndexOrThrow2;
                    int r33 = columnIndexOrThrow3;
                    constraints.setTriggerContentUpdateDelay(cursorQuery.getLong(columnIndexOrThrow6));
                    constraints.setTriggerMaxContentDelay(cursorQuery.getLong(columnIndexOrThrow7));
                    constraints.setContentUriTriggers(WorkTypeConverters.byteArrayToContentUriTriggers(cursorQuery.getBlob(columnIndexOrThrow8)));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow10));
                    workSpec.inputMergerClassName = cursorQuery.getString(columnIndexOrThrow12);
                    workSpec.input = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow13));
                    int r12 = r28;
                    workSpec.output = Data.fromByteArray(cursorQuery.getBlob(r12));
                    r28 = r12;
                    int r6 = columnIndexOrThrow15;
                    workSpec.initialDelay = cursorQuery.getLong(r6);
                    int r17 = columnIndexOrThrow13;
                    int r03 = columnIndexOrThrow16;
                    workSpec.intervalDuration = cursorQuery.getLong(r03);
                    int r22 = columnIndexOrThrow4;
                    int r13 = columnIndexOrThrow17;
                    workSpec.flexDuration = cursorQuery.getLong(r13);
                    int r62 = columnIndexOrThrow18;
                    workSpec.runAttemptCount = cursorQuery.getInt(r62);
                    int r72 = columnIndexOrThrow19;
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(cursorQuery.getInt(r72));
                    columnIndexOrThrow17 = r13;
                    int r04 = columnIndexOrThrow20;
                    workSpec.backoffDelayDuration = cursorQuery.getLong(r04);
                    int r14 = columnIndexOrThrow21;
                    workSpec.periodStartTime = cursorQuery.getLong(r14);
                    columnIndexOrThrow21 = r14;
                    int r63 = columnIndexOrThrow22;
                    workSpec.minimumRetentionDuration = cursorQuery.getLong(r63);
                    int r05 = columnIndexOrThrow23;
                    workSpec.scheduleRequestedAt = cursorQuery.getLong(r05);
                    int r15 = columnIndexOrThrow24;
                    workSpec.expedited = cursorQuery.getInt(r15) != 0;
                    int r23 = columnIndexOrThrow25;
                    workSpec.outOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(cursorQuery.getInt(r23));
                    workSpec.constraints = constraints;
                    arrayList.add(workSpec);
                    columnIndexOrThrow25 = r23;
                    columnIndexOrThrow2 = r02;
                    columnIndexOrThrow13 = r17;
                    columnIndexOrThrow15 = r6;
                    columnIndexOrThrow16 = r03;
                    columnIndexOrThrow18 = r62;
                    columnIndexOrThrow23 = r05;
                    columnIndexOrThrow9 = r29;
                    columnIndexOrThrow11 = r30;
                    columnIndexOrThrow = r32;
                    columnIndexOrThrow24 = r15;
                    columnIndexOrThrow22 = r63;
                    columnIndexOrThrow3 = r33;
                    columnIndexOrThrow20 = r04;
                    columnIndexOrThrow4 = r22;
                    columnIndexOrThrow19 = r72;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<Long> getScheduleRequestedAtLiveData(String str) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT schedule_requested_at FROM workspec WHERE id=?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"workspec"}, false, new Callable<Long>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.14
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                Long lValueOf = null;
                Cursor cursorQuery = DBUtil.query(WorkSpecDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    if (cursorQuery.moveToFirst() && !cursorQuery.isNull(0)) {
                        lValueOf = Long.valueOf(cursorQuery.getLong(0));
                    }
                    return lValueOf;
                } finally {
                    cursorQuery.close();
                }
            }

            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getScheduledWork() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "required_network_type");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_charging");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_device_idle");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_battery_not_low");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_storage_not_low");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger_content_update_delay");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger_max_content_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "content_uri_triggers");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "worker_class_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "input_merger_class_name");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "input");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "output");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "initial_delay");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "interval_duration");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "flex_duration");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_attempt_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "backoff_policy");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "backoff_delay_duration");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "period_start_time");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "minimum_retention_duration");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "schedule_requested_at");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_in_foreground");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "out_of_quota_policy");
                int r28 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(columnIndexOrThrow9);
                    int r29 = columnIndexOrThrow9;
                    String string2 = cursorQuery.getString(columnIndexOrThrow11);
                    int r30 = columnIndexOrThrow11;
                    Constraints constraints = new Constraints();
                    int r32 = columnIndexOrThrow;
                    constraints.setRequiredNetworkType(WorkTypeConverters.intToNetworkType(cursorQuery.getInt(columnIndexOrThrow)));
                    constraints.setRequiresCharging(cursorQuery.getInt(columnIndexOrThrow2) != 0);
                    constraints.setRequiresDeviceIdle(cursorQuery.getInt(columnIndexOrThrow3) != 0);
                    constraints.setRequiresBatteryNotLow(cursorQuery.getInt(columnIndexOrThrow4) != 0);
                    constraints.setRequiresStorageNotLow(cursorQuery.getInt(columnIndexOrThrow5) != 0);
                    int r02 = columnIndexOrThrow2;
                    int r33 = columnIndexOrThrow3;
                    constraints.setTriggerContentUpdateDelay(cursorQuery.getLong(columnIndexOrThrow6));
                    constraints.setTriggerMaxContentDelay(cursorQuery.getLong(columnIndexOrThrow7));
                    constraints.setContentUriTriggers(WorkTypeConverters.byteArrayToContentUriTriggers(cursorQuery.getBlob(columnIndexOrThrow8)));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow10));
                    workSpec.inputMergerClassName = cursorQuery.getString(columnIndexOrThrow12);
                    workSpec.input = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow13));
                    int r12 = r28;
                    workSpec.output = Data.fromByteArray(cursorQuery.getBlob(r12));
                    r28 = r12;
                    int r6 = columnIndexOrThrow15;
                    workSpec.initialDelay = cursorQuery.getLong(r6);
                    int r17 = columnIndexOrThrow13;
                    int r03 = columnIndexOrThrow16;
                    workSpec.intervalDuration = cursorQuery.getLong(r03);
                    int r22 = columnIndexOrThrow4;
                    int r13 = columnIndexOrThrow17;
                    workSpec.flexDuration = cursorQuery.getLong(r13);
                    int r62 = columnIndexOrThrow18;
                    workSpec.runAttemptCount = cursorQuery.getInt(r62);
                    int r72 = columnIndexOrThrow19;
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(cursorQuery.getInt(r72));
                    columnIndexOrThrow17 = r13;
                    int r04 = columnIndexOrThrow20;
                    workSpec.backoffDelayDuration = cursorQuery.getLong(r04);
                    int r14 = columnIndexOrThrow21;
                    workSpec.periodStartTime = cursorQuery.getLong(r14);
                    columnIndexOrThrow21 = r14;
                    int r63 = columnIndexOrThrow22;
                    workSpec.minimumRetentionDuration = cursorQuery.getLong(r63);
                    int r05 = columnIndexOrThrow23;
                    workSpec.scheduleRequestedAt = cursorQuery.getLong(r05);
                    int r15 = columnIndexOrThrow24;
                    workSpec.expedited = cursorQuery.getInt(r15) != 0;
                    int r23 = columnIndexOrThrow25;
                    workSpec.outOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(cursorQuery.getInt(r23));
                    workSpec.constraints = constraints;
                    arrayList.add(workSpec);
                    columnIndexOrThrow25 = r23;
                    columnIndexOrThrow2 = r02;
                    columnIndexOrThrow13 = r17;
                    columnIndexOrThrow15 = r6;
                    columnIndexOrThrow16 = r03;
                    columnIndexOrThrow18 = r62;
                    columnIndexOrThrow23 = r05;
                    columnIndexOrThrow9 = r29;
                    columnIndexOrThrow11 = r30;
                    columnIndexOrThrow = r32;
                    columnIndexOrThrow24 = r15;
                    columnIndexOrThrow22 = r63;
                    columnIndexOrThrow3 = r33;
                    columnIndexOrThrow20 = r04;
                    columnIndexOrThrow4 = r22;
                    columnIndexOrThrow19 = r72;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkInfo.State getState(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            return cursorQuery.moveToFirst() ? WorkTypeConverters.intToState(cursorQuery.getInt(0)) : null;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithName(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(cursorQuery.getString(0));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithTag(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(cursorQuery.getString(0));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec getWorkSpec(String str) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        WorkSpec workSpec;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE id=?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "required_network_type");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_charging");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_device_idle");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_battery_not_low");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_storage_not_low");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger_content_update_delay");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger_max_content_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "content_uri_triggers");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "worker_class_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "input_merger_class_name");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "input");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "output");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "initial_delay");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "interval_duration");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "flex_duration");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_attempt_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "backoff_policy");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "backoff_delay_duration");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "period_start_time");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "minimum_retention_duration");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "schedule_requested_at");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_in_foreground");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "out_of_quota_policy");
                if (cursorQuery.moveToFirst()) {
                    String string = cursorQuery.getString(columnIndexOrThrow9);
                    String string2 = cursorQuery.getString(columnIndexOrThrow11);
                    Constraints constraints = new Constraints();
                    constraints.setRequiredNetworkType(WorkTypeConverters.intToNetworkType(cursorQuery.getInt(columnIndexOrThrow)));
                    constraints.setRequiresCharging(cursorQuery.getInt(columnIndexOrThrow2) != 0);
                    constraints.setRequiresDeviceIdle(cursorQuery.getInt(columnIndexOrThrow3) != 0);
                    constraints.setRequiresBatteryNotLow(cursorQuery.getInt(columnIndexOrThrow4) != 0);
                    constraints.setRequiresStorageNotLow(cursorQuery.getInt(columnIndexOrThrow5) != 0);
                    constraints.setTriggerContentUpdateDelay(cursorQuery.getLong(columnIndexOrThrow6));
                    constraints.setTriggerMaxContentDelay(cursorQuery.getLong(columnIndexOrThrow7));
                    constraints.setContentUriTriggers(WorkTypeConverters.byteArrayToContentUriTriggers(cursorQuery.getBlob(columnIndexOrThrow8)));
                    WorkSpec workSpec2 = new WorkSpec(string, string2);
                    workSpec2.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow10));
                    workSpec2.inputMergerClassName = cursorQuery.getString(columnIndexOrThrow12);
                    workSpec2.input = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow13));
                    workSpec2.output = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow14));
                    workSpec2.initialDelay = cursorQuery.getLong(columnIndexOrThrow15);
                    workSpec2.intervalDuration = cursorQuery.getLong(columnIndexOrThrow16);
                    workSpec2.flexDuration = cursorQuery.getLong(columnIndexOrThrow17);
                    workSpec2.runAttemptCount = cursorQuery.getInt(columnIndexOrThrow18);
                    workSpec2.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(cursorQuery.getInt(columnIndexOrThrow19));
                    workSpec2.backoffDelayDuration = cursorQuery.getLong(columnIndexOrThrow20);
                    workSpec2.periodStartTime = cursorQuery.getLong(columnIndexOrThrow21);
                    workSpec2.minimumRetentionDuration = cursorQuery.getLong(columnIndexOrThrow22);
                    workSpec2.scheduleRequestedAt = cursorQuery.getLong(columnIndexOrThrow23);
                    workSpec2.expedited = cursorQuery.getInt(columnIndexOrThrow24) != 0;
                    workSpec2.outOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(cursorQuery.getInt(columnIndexOrThrow25));
                    workSpec2.constraints = constraints;
                    workSpec = workSpec2;
                } else {
                    workSpec = null;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return workSpec;
            } catch (Throwable th2) {
                th = th2;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.IdAndState> getWorkSpecIdAndStatesForName(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                WorkSpec.IdAndState idAndState = new WorkSpec.IdAndState();
                idAndState.f1000id = cursorQuery.getString(columnIndexOrThrow);
                idAndState.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow2));
                arrayList.add(idAndState);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec[] getWorkSpecs(List<String> list) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        int columnIndexOrThrow14;
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("SELECT ");
        sbNewStringBuilder.append("*");
        sbNewStringBuilder.append(" FROM workspec WHERE id IN (");
        int size = list.size();
        StringUtil.appendPlaceholders(sbNewStringBuilder, size);
        sbNewStringBuilder.append(")");
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(sbNewStringBuilder.toString(), size + 0);
        int r52 = 1;
        for (String str : list) {
            if (str == null) {
                roomSQLiteQueryAcquire.bindNull(r52);
            } else {
                roomSQLiteQueryAcquire.bindString(r52, str);
            }
            r52++;
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "required_network_type");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_charging");
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_device_idle");
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_battery_not_low");
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "requires_storage_not_low");
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger_content_update_delay");
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger_max_content_delay");
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "content_uri_triggers");
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "worker_class_name");
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "input_merger_class_name");
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "input");
            columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "output");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
        try {
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "initial_delay");
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "interval_duration");
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "flex_duration");
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_attempt_count");
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "backoff_policy");
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "backoff_delay_duration");
            int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "period_start_time");
            int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "minimum_retention_duration");
            int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "schedule_requested_at");
            int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_in_foreground");
            int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "out_of_quota_policy");
            WorkSpec[] workSpecArr = new WorkSpec[cursorQuery.getCount()];
            int r28 = 0;
            while (cursorQuery.moveToNext()) {
                WorkSpec[] workSpecArr2 = workSpecArr;
                String string = cursorQuery.getString(columnIndexOrThrow9);
                int r30 = columnIndexOrThrow9;
                String string2 = cursorQuery.getString(columnIndexOrThrow11);
                int r31 = columnIndexOrThrow11;
                Constraints constraints = new Constraints();
                int r33 = columnIndexOrThrow;
                constraints.setRequiredNetworkType(WorkTypeConverters.intToNetworkType(cursorQuery.getInt(columnIndexOrThrow)));
                constraints.setRequiresCharging(cursorQuery.getInt(columnIndexOrThrow2) != 0);
                constraints.setRequiresDeviceIdle(cursorQuery.getInt(columnIndexOrThrow3) != 0);
                constraints.setRequiresBatteryNotLow(cursorQuery.getInt(columnIndexOrThrow4) != 0);
                constraints.setRequiresStorageNotLow(cursorQuery.getInt(columnIndexOrThrow5) != 0);
                int r02 = columnIndexOrThrow2;
                int r32 = columnIndexOrThrow3;
                constraints.setTriggerContentUpdateDelay(cursorQuery.getLong(columnIndexOrThrow6));
                constraints.setTriggerMaxContentDelay(cursorQuery.getLong(columnIndexOrThrow7));
                constraints.setContentUriTriggers(WorkTypeConverters.byteArrayToContentUriTriggers(cursorQuery.getBlob(columnIndexOrThrow8)));
                WorkSpec workSpec = new WorkSpec(string, string2);
                workSpec.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow10));
                workSpec.inputMergerClassName = cursorQuery.getString(columnIndexOrThrow12);
                workSpec.input = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow13));
                workSpec.output = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow14));
                int r72 = columnIndexOrThrow14;
                int r22 = columnIndexOrThrow15;
                workSpec.initialDelay = cursorQuery.getLong(r22);
                columnIndexOrThrow15 = r22;
                int r03 = columnIndexOrThrow16;
                workSpec.intervalDuration = cursorQuery.getLong(r03);
                int r18 = columnIndexOrThrow12;
                int r12 = columnIndexOrThrow17;
                workSpec.flexDuration = cursorQuery.getLong(r12);
                int r23 = columnIndexOrThrow18;
                workSpec.runAttemptCount = cursorQuery.getInt(r23);
                int r34 = columnIndexOrThrow19;
                workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(cursorQuery.getInt(r34));
                columnIndexOrThrow17 = r12;
                int r04 = columnIndexOrThrow20;
                workSpec.backoffDelayDuration = cursorQuery.getLong(r04);
                int r13 = columnIndexOrThrow21;
                workSpec.periodStartTime = cursorQuery.getLong(r13);
                columnIndexOrThrow21 = r13;
                int r24 = columnIndexOrThrow22;
                workSpec.minimumRetentionDuration = cursorQuery.getLong(r24);
                columnIndexOrThrow22 = r24;
                int r05 = columnIndexOrThrow23;
                workSpec.scheduleRequestedAt = cursorQuery.getLong(r05);
                int r14 = columnIndexOrThrow24;
                workSpec.expedited = cursorQuery.getInt(r14) != 0;
                int r25 = columnIndexOrThrow25;
                workSpec.outOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(cursorQuery.getInt(r25));
                workSpec.constraints = constraints;
                workSpecArr2[r28] = workSpec;
                r28++;
                columnIndexOrThrow25 = r25;
                columnIndexOrThrow2 = r02;
                columnIndexOrThrow23 = r05;
                workSpecArr = workSpecArr2;
                columnIndexOrThrow9 = r30;
                columnIndexOrThrow11 = r31;
                columnIndexOrThrow = r33;
                columnIndexOrThrow24 = r14;
                columnIndexOrThrow14 = r72;
                columnIndexOrThrow3 = r32;
                columnIndexOrThrow20 = r04;
                columnIndexOrThrow12 = r18;
                columnIndexOrThrow16 = r03;
                columnIndexOrThrow18 = r23;
                columnIndexOrThrow19 = r34;
            }
            WorkSpec[] workSpecArr3 = workSpecArr;
            cursorQuery.close();
            roomSQLiteQuery.release();
            return workSpecArr3;
        } catch (Throwable th3) {
            th = th3;
            cursorQuery.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec.WorkInfoPojo getWorkStatusPojoForId(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count FROM workspec WHERE id=?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            WorkSpec.WorkInfoPojo workInfoPojo = null;
            Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, true, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "output");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_attempt_count");
                ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
                ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>();
                while (cursorQuery.moveToNext()) {
                    if (!cursorQuery.isNull(columnIndexOrThrow)) {
                        String string = cursorQuery.getString(columnIndexOrThrow);
                        if (arrayMap.get(string) == null) {
                            arrayMap.put(string, new ArrayList<>());
                        }
                    }
                    if (!cursorQuery.isNull(columnIndexOrThrow)) {
                        String string2 = cursorQuery.getString(columnIndexOrThrow);
                        if (arrayMap2.get(string2) == null) {
                            arrayMap2.put(string2, new ArrayList<>());
                        }
                    }
                }
                cursorQuery.moveToPosition(-1);
                __fetchRelationshipWorkTagAsjavaLangString(arrayMap);
                __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                if (cursorQuery.moveToFirst()) {
                    ArrayList<String> arrayList = !cursorQuery.isNull(columnIndexOrThrow) ? arrayMap.get(cursorQuery.getString(columnIndexOrThrow)) : null;
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    ArrayList<Data> arrayList2 = cursorQuery.isNull(columnIndexOrThrow) ? null : arrayMap2.get(cursorQuery.getString(columnIndexOrThrow));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    WorkSpec.WorkInfoPojo workInfoPojo2 = new WorkSpec.WorkInfoPojo();
                    workInfoPojo2.f1001id = cursorQuery.getString(columnIndexOrThrow);
                    workInfoPojo2.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow2));
                    workInfoPojo2.output = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow3));
                    workInfoPojo2.runAttemptCount = cursorQuery.getInt(columnIndexOrThrow4);
                    workInfoPojo2.tags = arrayList;
                    workInfoPojo2.progress = arrayList2;
                    workInfoPojo = workInfoPojo2;
                }
                this.__db.setTransactionSuccessful();
                return workInfoPojo;
            } finally {
                cursorQuery.close();
                roomSQLiteQueryAcquire.release();
            }
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForIds(List<String> list) {
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (");
        int size = list.size();
        StringUtil.appendPlaceholders(sbNewStringBuilder, size);
        sbNewStringBuilder.append(")");
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(sbNewStringBuilder.toString(), size + 0);
        int r22 = 1;
        for (String str : list) {
            if (str == null) {
                roomSQLiteQueryAcquire.bindNull(r22);
            } else {
                roomSQLiteQueryAcquire.bindString(r22, str);
            }
            r22++;
        }
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, true, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "output");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_attempt_count");
                ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
                ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>();
                while (cursorQuery.moveToNext()) {
                    if (!cursorQuery.isNull(columnIndexOrThrow)) {
                        String string = cursorQuery.getString(columnIndexOrThrow);
                        if (arrayMap.get(string) == null) {
                            arrayMap.put(string, new ArrayList<>());
                        }
                    }
                    if (!cursorQuery.isNull(columnIndexOrThrow)) {
                        String string2 = cursorQuery.getString(columnIndexOrThrow);
                        if (arrayMap2.get(string2) == null) {
                            arrayMap2.put(string2, new ArrayList<>());
                        }
                    }
                }
                cursorQuery.moveToPosition(-1);
                __fetchRelationshipWorkTagAsjavaLangString(arrayMap);
                __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    ArrayList<String> arrayList2 = !cursorQuery.isNull(columnIndexOrThrow) ? arrayMap.get(cursorQuery.getString(columnIndexOrThrow)) : null;
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    ArrayList<Data> arrayList3 = !cursorQuery.isNull(columnIndexOrThrow) ? arrayMap2.get(cursorQuery.getString(columnIndexOrThrow)) : null;
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList<>();
                    }
                    WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                    workInfoPojo.f1001id = cursorQuery.getString(columnIndexOrThrow);
                    workInfoPojo.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow2));
                    workInfoPojo.output = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow3));
                    workInfoPojo.runAttemptCount = cursorQuery.getInt(columnIndexOrThrow4);
                    workInfoPojo.tags = arrayList2;
                    workInfoPojo.progress = arrayList3;
                    arrayList.add(workInfoPojo);
                }
                this.__db.setTransactionSuccessful();
                return arrayList;
            } finally {
                cursorQuery.close();
                roomSQLiteQueryAcquire.release();
            }
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForName(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, true, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "output");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_attempt_count");
                ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
                ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>();
                while (cursorQuery.moveToNext()) {
                    if (!cursorQuery.isNull(columnIndexOrThrow)) {
                        String string = cursorQuery.getString(columnIndexOrThrow);
                        if (arrayMap.get(string) == null) {
                            arrayMap.put(string, new ArrayList<>());
                        }
                    }
                    if (!cursorQuery.isNull(columnIndexOrThrow)) {
                        String string2 = cursorQuery.getString(columnIndexOrThrow);
                        if (arrayMap2.get(string2) == null) {
                            arrayMap2.put(string2, new ArrayList<>());
                        }
                    }
                }
                cursorQuery.moveToPosition(-1);
                __fetchRelationshipWorkTagAsjavaLangString(arrayMap);
                __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    ArrayList<String> arrayList2 = !cursorQuery.isNull(columnIndexOrThrow) ? arrayMap.get(cursorQuery.getString(columnIndexOrThrow)) : null;
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    ArrayList<Data> arrayList3 = !cursorQuery.isNull(columnIndexOrThrow) ? arrayMap2.get(cursorQuery.getString(columnIndexOrThrow)) : null;
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList<>();
                    }
                    WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                    workInfoPojo.f1001id = cursorQuery.getString(columnIndexOrThrow);
                    workInfoPojo.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow2));
                    workInfoPojo.output = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow3));
                    workInfoPojo.runAttemptCount = cursorQuery.getInt(columnIndexOrThrow4);
                    workInfoPojo.tags = arrayList2;
                    workInfoPojo.progress = arrayList3;
                    arrayList.add(workInfoPojo);
                }
                this.__db.setTransactionSuccessful();
                return arrayList;
            } finally {
                cursorQuery.close();
                roomSQLiteQueryAcquire.release();
            }
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForTag(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, true, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "output");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_attempt_count");
                ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
                ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>();
                while (cursorQuery.moveToNext()) {
                    if (!cursorQuery.isNull(columnIndexOrThrow)) {
                        String string = cursorQuery.getString(columnIndexOrThrow);
                        if (arrayMap.get(string) == null) {
                            arrayMap.put(string, new ArrayList<>());
                        }
                    }
                    if (!cursorQuery.isNull(columnIndexOrThrow)) {
                        String string2 = cursorQuery.getString(columnIndexOrThrow);
                        if (arrayMap2.get(string2) == null) {
                            arrayMap2.put(string2, new ArrayList<>());
                        }
                    }
                }
                cursorQuery.moveToPosition(-1);
                __fetchRelationshipWorkTagAsjavaLangString(arrayMap);
                __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    ArrayList<String> arrayList2 = !cursorQuery.isNull(columnIndexOrThrow) ? arrayMap.get(cursorQuery.getString(columnIndexOrThrow)) : null;
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    ArrayList<Data> arrayList3 = !cursorQuery.isNull(columnIndexOrThrow) ? arrayMap2.get(cursorQuery.getString(columnIndexOrThrow)) : null;
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList<>();
                    }
                    WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                    workInfoPojo.f1001id = cursorQuery.getString(columnIndexOrThrow);
                    workInfoPojo.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow2));
                    workInfoPojo.output = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow3));
                    workInfoPojo.runAttemptCount = cursorQuery.getInt(columnIndexOrThrow4);
                    workInfoPojo.tags = arrayList2;
                    workInfoPojo.progress = arrayList3;
                    arrayList.add(workInfoPojo);
                }
                this.__db.setTransactionSuccessful();
                return arrayList;
            } finally {
                cursorQuery.close();
                roomSQLiteQueryAcquire.release();
            }
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForIds(List<String> list) {
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (");
        int size = list.size();
        StringUtil.appendPlaceholders(sbNewStringBuilder, size);
        sbNewStringBuilder.append(")");
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(sbNewStringBuilder.toString(), size + 0);
        int r22 = 1;
        for (String str : list) {
            if (str == null) {
                roomSQLiteQueryAcquire.bindNull(r22);
            } else {
                roomSQLiteQueryAcquire.bindString(r22, str);
            }
            r22++;
        }
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec"}, true, new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.11
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor cursorQuery = DBUtil.query(WorkSpecDao_Impl.this.__db, roomSQLiteQueryAcquire, true, null);
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "output");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_attempt_count");
                        ArrayMap arrayMap = new ArrayMap();
                        ArrayMap arrayMap2 = new ArrayMap();
                        while (cursorQuery.moveToNext()) {
                            if (!cursorQuery.isNull(columnIndexOrThrow)) {
                                String string = cursorQuery.getString(columnIndexOrThrow);
                                if (((ArrayList) arrayMap.get(string)) == null) {
                                    arrayMap.put(string, new ArrayList());
                                }
                            }
                            if (!cursorQuery.isNull(columnIndexOrThrow)) {
                                String string2 = cursorQuery.getString(columnIndexOrThrow);
                                if (((ArrayList) arrayMap2.get(string2)) == null) {
                                    arrayMap2.put(string2, new ArrayList());
                                }
                            }
                        }
                        cursorQuery.moveToPosition(-1);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(arrayMap);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                        ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                        while (cursorQuery.moveToNext()) {
                            ArrayList arrayList2 = !cursorQuery.isNull(columnIndexOrThrow) ? (ArrayList) arrayMap.get(cursorQuery.getString(columnIndexOrThrow)) : null;
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            ArrayList arrayList3 = !cursorQuery.isNull(columnIndexOrThrow) ? (ArrayList) arrayMap2.get(cursorQuery.getString(columnIndexOrThrow)) : null;
                            if (arrayList3 == null) {
                                arrayList3 = new ArrayList();
                            }
                            WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                            workInfoPojo.f1001id = cursorQuery.getString(columnIndexOrThrow);
                            workInfoPojo.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow2));
                            workInfoPojo.output = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow3));
                            workInfoPojo.runAttemptCount = cursorQuery.getInt(columnIndexOrThrow4);
                            workInfoPojo.tags = arrayList2;
                            workInfoPojo.progress = arrayList3;
                            arrayList.add(workInfoPojo);
                        }
                        WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                        return arrayList;
                    } finally {
                        cursorQuery.close();
                    }
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForName(String str) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, true, new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.13
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor cursorQuery = DBUtil.query(WorkSpecDao_Impl.this.__db, roomSQLiteQueryAcquire, true, null);
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "output");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_attempt_count");
                        ArrayMap arrayMap = new ArrayMap();
                        ArrayMap arrayMap2 = new ArrayMap();
                        while (cursorQuery.moveToNext()) {
                            if (!cursorQuery.isNull(columnIndexOrThrow)) {
                                String string = cursorQuery.getString(columnIndexOrThrow);
                                if (((ArrayList) arrayMap.get(string)) == null) {
                                    arrayMap.put(string, new ArrayList());
                                }
                            }
                            if (!cursorQuery.isNull(columnIndexOrThrow)) {
                                String string2 = cursorQuery.getString(columnIndexOrThrow);
                                if (((ArrayList) arrayMap2.get(string2)) == null) {
                                    arrayMap2.put(string2, new ArrayList());
                                }
                            }
                        }
                        cursorQuery.moveToPosition(-1);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(arrayMap);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                        ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                        while (cursorQuery.moveToNext()) {
                            ArrayList arrayList2 = !cursorQuery.isNull(columnIndexOrThrow) ? (ArrayList) arrayMap.get(cursorQuery.getString(columnIndexOrThrow)) : null;
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            ArrayList arrayList3 = !cursorQuery.isNull(columnIndexOrThrow) ? (ArrayList) arrayMap2.get(cursorQuery.getString(columnIndexOrThrow)) : null;
                            if (arrayList3 == null) {
                                arrayList3 = new ArrayList();
                            }
                            WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                            workInfoPojo.f1001id = cursorQuery.getString(columnIndexOrThrow);
                            workInfoPojo.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow2));
                            workInfoPojo.output = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow3));
                            workInfoPojo.runAttemptCount = cursorQuery.getInt(columnIndexOrThrow4);
                            workInfoPojo.tags = arrayList2;
                            workInfoPojo.progress = arrayList3;
                            arrayList.add(workInfoPojo);
                        }
                        WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                        return arrayList;
                    } finally {
                        cursorQuery.close();
                    }
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForTag(String str) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec", "worktag"}, true, new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.12
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor cursorQuery = DBUtil.query(WorkSpecDao_Impl.this.__db, roomSQLiteQueryAcquire, true, null);
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "state");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "output");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "run_attempt_count");
                        ArrayMap arrayMap = new ArrayMap();
                        ArrayMap arrayMap2 = new ArrayMap();
                        while (cursorQuery.moveToNext()) {
                            if (!cursorQuery.isNull(columnIndexOrThrow)) {
                                String string = cursorQuery.getString(columnIndexOrThrow);
                                if (((ArrayList) arrayMap.get(string)) == null) {
                                    arrayMap.put(string, new ArrayList());
                                }
                            }
                            if (!cursorQuery.isNull(columnIndexOrThrow)) {
                                String string2 = cursorQuery.getString(columnIndexOrThrow);
                                if (((ArrayList) arrayMap2.get(string2)) == null) {
                                    arrayMap2.put(string2, new ArrayList());
                                }
                            }
                        }
                        cursorQuery.moveToPosition(-1);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(arrayMap);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                        ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                        while (cursorQuery.moveToNext()) {
                            ArrayList arrayList2 = !cursorQuery.isNull(columnIndexOrThrow) ? (ArrayList) arrayMap.get(cursorQuery.getString(columnIndexOrThrow)) : null;
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            ArrayList arrayList3 = !cursorQuery.isNull(columnIndexOrThrow) ? (ArrayList) arrayMap2.get(cursorQuery.getString(columnIndexOrThrow)) : null;
                            if (arrayList3 == null) {
                                arrayList3 = new ArrayList();
                            }
                            WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                            workInfoPojo.f1001id = cursorQuery.getString(columnIndexOrThrow);
                            workInfoPojo.state = WorkTypeConverters.intToState(cursorQuery.getInt(columnIndexOrThrow2));
                            workInfoPojo.output = Data.fromByteArray(cursorQuery.getBlob(columnIndexOrThrow3));
                            workInfoPojo.runAttemptCount = cursorQuery.getInt(columnIndexOrThrow4);
                            workInfoPojo.tags = arrayList2;
                            workInfoPojo.progress = arrayList3;
                            arrayList.add(workInfoPojo);
                        }
                        WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                        return arrayList;
                    } finally {
                        cursorQuery.close();
                    }
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public boolean hasUnfinishedWork() {
        boolean z10 = false;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            if (cursorQuery.moveToFirst()) {
                if (cursorQuery.getInt(0) != 0) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int incrementWorkSpecRunAttemptCount(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.acquire();
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(1);
        } else {
            supportSQLiteStatementAcquire.bindString(1, str);
        }
        this.__db.beginTransaction();
        try {
            int r32 = supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return r32;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void insertWorkSpec(WorkSpec workSpec) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfWorkSpec.insert((EntityInsertionAdapter<WorkSpec>) workSpec);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int markWorkSpecScheduled(String str, long j10) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfMarkWorkSpecScheduled.acquire();
        supportSQLiteStatementAcquire.bindLong(1, j10);
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(2);
        } else {
            supportSQLiteStatementAcquire.bindString(2, str);
        }
        this.__db.beginTransaction();
        try {
            int r32 = supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return r32;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfMarkWorkSpecScheduled.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast() {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast.acquire();
        this.__db.beginTransaction();
        try {
            supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetScheduledState() {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfResetScheduledState.acquire();
        this.__db.beginTransaction();
        try {
            int r12 = supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return r12;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfResetScheduledState.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetWorkSpecRunAttemptCount(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfResetWorkSpecRunAttemptCount.acquire();
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(1);
        } else {
            supportSQLiteStatementAcquire.bindString(1, str);
        }
        this.__db.beginTransaction();
        try {
            int r32 = supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return r32;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfResetWorkSpecRunAttemptCount.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setOutput(String str, Data data) throws Throwable {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfSetOutput.acquire();
        byte[] byteArrayInternal = Data.toByteArrayInternal(data);
        if (byteArrayInternal == null) {
            supportSQLiteStatementAcquire.bindNull(1);
        } else {
            supportSQLiteStatementAcquire.bindBlob(1, byteArrayInternal);
        }
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(2);
        } else {
            supportSQLiteStatementAcquire.bindString(2, str);
        }
        this.__db.beginTransaction();
        try {
            supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfSetOutput.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setPeriodStartTime(String str, long j10) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfSetPeriodStartTime.acquire();
        supportSQLiteStatementAcquire.bindLong(1, j10);
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(2);
        } else {
            supportSQLiteStatementAcquire.bindString(2, str);
        }
        this.__db.beginTransaction();
        try {
            supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfSetPeriodStartTime.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setState(WorkInfo.State state, String... strArr) {
        this.__db.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("UPDATE workspec SET state=");
        sbNewStringBuilder.append("?");
        sbNewStringBuilder.append(" WHERE id IN (");
        StringUtil.appendPlaceholders(sbNewStringBuilder, strArr.length);
        sbNewStringBuilder.append(")");
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = this.__db.compileStatement(sbNewStringBuilder.toString());
        supportSQLiteStatementCompileStatement.bindLong(1, WorkTypeConverters.stateToInt(state));
        int r12 = 2;
        for (String str : strArr) {
            if (str == null) {
                supportSQLiteStatementCompileStatement.bindNull(r12);
            } else {
                supportSQLiteStatementCompileStatement.bindString(r12, str);
            }
            r12++;
        }
        this.__db.beginTransaction();
        try {
            int r52 = supportSQLiteStatementCompileStatement.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return r52;
        } finally {
            this.__db.endTransaction();
        }
    }
}
