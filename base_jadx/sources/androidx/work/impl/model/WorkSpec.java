package androidx.work.impl.model;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.camera.camera2.internal.c;
import androidx.room.ColumnInfo;
import androidx.room.Embedded;
import androidx.room.Entity;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import androidx.room.Relation;
import androidx.room.util.a;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

@Entity(indices = {@Index({"schedule_requested_at"}), @Index({"period_start_time"})})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class WorkSpec {
    public static final long SCHEDULE_NOT_REQUESTED_YET = -1;
    private static final String TAG = Logger.tagWithPrefix("WorkSpec");
    public static final Function<List<WorkInfoPojo>, List<WorkInfo>> WORK_INFO_MAPPER = new Function<List<WorkInfoPojo>, List<WorkInfo>>() { // from class: androidx.work.impl.model.WorkSpec.1
        @Override // androidx.arch.core.util.Function
        public List<WorkInfo> apply(List<WorkInfoPojo> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<WorkInfoPojo> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toWorkInfo());
            }
            return arrayList;
        }
    };

    @ColumnInfo(name = "backoff_delay_duration")
    public long backoffDelayDuration;

    @NonNull
    @ColumnInfo(name = "backoff_policy")
    public BackoffPolicy backoffPolicy;

    @NonNull
    @Embedded
    public Constraints constraints;

    @ColumnInfo(name = "run_in_foreground")
    public boolean expedited;

    @ColumnInfo(name = "flex_duration")
    public long flexDuration;

    /* renamed from: id, reason: collision with root package name */
    @NonNull
    @PrimaryKey
    @ColumnInfo(name = "id")
    public String f999id;

    @ColumnInfo(name = "initial_delay")
    public long initialDelay;

    @NonNull
    @ColumnInfo(name = "input")
    public Data input;

    @ColumnInfo(name = "input_merger_class_name")
    public String inputMergerClassName;

    @ColumnInfo(name = "interval_duration")
    public long intervalDuration;

    @ColumnInfo(name = "minimum_retention_duration")
    public long minimumRetentionDuration;

    @NonNull
    @ColumnInfo(name = "out_of_quota_policy")
    public OutOfQuotaPolicy outOfQuotaPolicy;

    @NonNull
    @ColumnInfo(name = "output")
    public Data output;

    @ColumnInfo(name = "period_start_time")
    public long periodStartTime;

    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    @ColumnInfo(name = "run_attempt_count")
    public int runAttemptCount;

    @ColumnInfo(name = "schedule_requested_at")
    public long scheduleRequestedAt;

    @NonNull
    @ColumnInfo(name = "state")
    public WorkInfo.State state;

    @NonNull
    @ColumnInfo(name = "worker_class_name")
    public String workerClassName;

    public static class IdAndState {

        /* renamed from: id, reason: collision with root package name */
        @ColumnInfo(name = "id")
        public String f1000id;

        @ColumnInfo(name = "state")
        public WorkInfo.State state;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) obj;
            if (this.state != idAndState.state) {
                return false;
            }
            return this.f1000id.equals(idAndState.f1000id);
        }

        public int hashCode() {
            return this.state.hashCode() + (this.f1000id.hashCode() * 31);
        }
    }

    public static class WorkInfoPojo {

        /* renamed from: id, reason: collision with root package name */
        @ColumnInfo(name = "id")
        public String f1001id;

        @ColumnInfo(name = "output")
        public Data output;

        @Relation(entity = WorkProgress.class, entityColumn = "work_spec_id", parentColumn = "id", projection = {"progress"})
        public List<Data> progress;

        @ColumnInfo(name = "run_attempt_count")
        public int runAttemptCount;

        @ColumnInfo(name = "state")
        public WorkInfo.State state;

        @Relation(entity = WorkTag.class, entityColumn = "work_spec_id", parentColumn = "id", projection = {"tag"})
        public List<String> tags;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WorkInfoPojo)) {
                return false;
            }
            WorkInfoPojo workInfoPojo = (WorkInfoPojo) obj;
            if (this.runAttemptCount != workInfoPojo.runAttemptCount) {
                return false;
            }
            String str = this.f1001id;
            if (str == null ? workInfoPojo.f1001id != null : !str.equals(workInfoPojo.f1001id)) {
                return false;
            }
            if (this.state != workInfoPojo.state) {
                return false;
            }
            Data data = this.output;
            if (data == null ? workInfoPojo.output != null : !data.equals(workInfoPojo.output)) {
                return false;
            }
            List<String> list = this.tags;
            if (list == null ? workInfoPojo.tags != null : !list.equals(workInfoPojo.tags)) {
                return false;
            }
            List<Data> list2 = this.progress;
            List<Data> list3 = workInfoPojo.progress;
            return list2 != null ? list2.equals(list3) : list3 == null;
        }

        public int hashCode() {
            String str = this.f1001id;
            int r02 = (str != null ? str.hashCode() : 0) * 31;
            WorkInfo.State state = this.state;
            int r03 = (r02 + (state != null ? state.hashCode() : 0)) * 31;
            Data data = this.output;
            int r04 = (((r03 + (data != null ? data.hashCode() : 0)) * 31) + this.runAttemptCount) * 31;
            List<String> list = this.tags;
            int r05 = (r04 + (list != null ? list.hashCode() : 0)) * 31;
            List<Data> list2 = this.progress;
            return r05 + (list2 != null ? list2.hashCode() : 0);
        }

        @NonNull
        public WorkInfo toWorkInfo() {
            List<Data> list = this.progress;
            return new WorkInfo(UUID.fromString(this.f1001id), this.state, this.output, this.tags, (list == null || list.isEmpty()) ? Data.EMPTY : this.progress.get(0), this.runAttemptCount);
        }
    }

    public WorkSpec(@NonNull WorkSpec workSpec) {
        this.state = WorkInfo.State.ENQUEUED;
        Data data = Data.EMPTY;
        this.input = data;
        this.output = data;
        this.constraints = Constraints.NONE;
        this.backoffPolicy = BackoffPolicy.EXPONENTIAL;
        this.backoffDelayDuration = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
        this.scheduleRequestedAt = -1L;
        this.outOfQuotaPolicy = OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        this.f999id = workSpec.f999id;
        this.workerClassName = workSpec.workerClassName;
        this.state = workSpec.state;
        this.inputMergerClassName = workSpec.inputMergerClassName;
        this.input = new Data(workSpec.input);
        this.output = new Data(workSpec.output);
        this.initialDelay = workSpec.initialDelay;
        this.intervalDuration = workSpec.intervalDuration;
        this.flexDuration = workSpec.flexDuration;
        this.constraints = new Constraints(workSpec.constraints);
        this.runAttemptCount = workSpec.runAttemptCount;
        this.backoffPolicy = workSpec.backoffPolicy;
        this.backoffDelayDuration = workSpec.backoffDelayDuration;
        this.periodStartTime = workSpec.periodStartTime;
        this.minimumRetentionDuration = workSpec.minimumRetentionDuration;
        this.scheduleRequestedAt = workSpec.scheduleRequestedAt;
        this.expedited = workSpec.expedited;
        this.outOfQuotaPolicy = workSpec.outOfQuotaPolicy;
    }

    public WorkSpec(@NonNull String str, @NonNull String str2) {
        this.state = WorkInfo.State.ENQUEUED;
        Data data = Data.EMPTY;
        this.input = data;
        this.output = data;
        this.constraints = Constraints.NONE;
        this.backoffPolicy = BackoffPolicy.EXPONENTIAL;
        this.backoffDelayDuration = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
        this.scheduleRequestedAt = -1L;
        this.outOfQuotaPolicy = OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        this.f999id = str;
        this.workerClassName = str2;
    }

    public long calculateNextRunTime() {
        long jCurrentTimeMillis;
        long j10;
        if (isBackedOff()) {
            long jScalb = this.backoffPolicy == BackoffPolicy.LINEAR ? this.backoffDelayDuration * this.runAttemptCount : (long) Math.scalb(this.backoffDelayDuration, this.runAttemptCount - 1);
            j10 = this.periodStartTime;
            jCurrentTimeMillis = Math.min(WorkRequest.MAX_BACKOFF_MILLIS, jScalb);
        } else {
            if (isPeriodic()) {
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                long j11 = this.periodStartTime;
                long j12 = j11 == 0 ? jCurrentTimeMillis2 + this.initialDelay : j11;
                long j13 = this.flexDuration;
                long j14 = this.intervalDuration;
                if (j13 != j14) {
                    return j12 + j14 + (j11 == 0 ? j13 * (-1) : 0L);
                }
                return j12 + (j11 != 0 ? j14 : 0L);
            }
            jCurrentTimeMillis = this.periodStartTime;
            if (jCurrentTimeMillis == 0) {
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            j10 = this.initialDelay;
        }
        return jCurrentTimeMillis + j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || WorkSpec.class != obj.getClass()) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) obj;
        if (this.initialDelay != workSpec.initialDelay || this.intervalDuration != workSpec.intervalDuration || this.flexDuration != workSpec.flexDuration || this.runAttemptCount != workSpec.runAttemptCount || this.backoffDelayDuration != workSpec.backoffDelayDuration || this.periodStartTime != workSpec.periodStartTime || this.minimumRetentionDuration != workSpec.minimumRetentionDuration || this.scheduleRequestedAt != workSpec.scheduleRequestedAt || this.expedited != workSpec.expedited || !this.f999id.equals(workSpec.f999id) || this.state != workSpec.state || !this.workerClassName.equals(workSpec.workerClassName)) {
            return false;
        }
        String str = this.inputMergerClassName;
        if (str == null ? workSpec.inputMergerClassName == null : str.equals(workSpec.inputMergerClassName)) {
            return this.input.equals(workSpec.input) && this.output.equals(workSpec.output) && this.constraints.equals(workSpec.constraints) && this.backoffPolicy == workSpec.backoffPolicy && this.outOfQuotaPolicy == workSpec.outOfQuotaPolicy;
        }
        return false;
    }

    public boolean hasConstraints() {
        return !Constraints.NONE.equals(this.constraints);
    }

    public int hashCode() {
        int r02 = a.a(this.workerClassName, (this.state.hashCode() + (this.f999id.hashCode() * 31)) * 31, 31);
        String str = this.inputMergerClassName;
        int r03 = (this.output.hashCode() + ((this.input.hashCode() + ((r02 + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31;
        long j10 = this.initialDelay;
        int r04 = (r03 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.intervalDuration;
        int r05 = (r04 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        long j12 = this.flexDuration;
        int r06 = (this.backoffPolicy.hashCode() + ((((this.constraints.hashCode() + ((r05 + ((int) (j12 ^ (j12 >>> 32)))) * 31)) * 31) + this.runAttemptCount) * 31)) * 31;
        long j13 = this.backoffDelayDuration;
        int r07 = (r06 + ((int) (j13 ^ (j13 >>> 32)))) * 31;
        long j14 = this.periodStartTime;
        int r08 = (r07 + ((int) (j14 ^ (j14 >>> 32)))) * 31;
        long j15 = this.minimumRetentionDuration;
        int r09 = (r08 + ((int) (j15 ^ (j15 >>> 32)))) * 31;
        long j16 = this.scheduleRequestedAt;
        return this.outOfQuotaPolicy.hashCode() + ((((r09 + ((int) (j16 ^ (j16 >>> 32)))) * 31) + (this.expedited ? 1 : 0)) * 31);
    }

    public boolean isBackedOff() {
        return this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0;
    }

    public boolean isPeriodic() {
        return this.intervalDuration != 0;
    }

    public void setBackoffDelayDuration(long j10) {
        if (j10 > WorkRequest.MAX_BACKOFF_MILLIS) {
            Logger.get().warning(TAG, "Backoff delay duration exceeds maximum value", new Throwable[0]);
            j10 = 18000000;
        }
        if (j10 < WorkRequest.MIN_BACKOFF_MILLIS) {
            Logger.get().warning(TAG, "Backoff delay duration less than minimum value", new Throwable[0]);
            j10 = 10000;
        }
        this.backoffDelayDuration = j10;
    }

    public void setPeriodic(long j10) {
        if (j10 < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, String.format("Interval duration lesser than minimum allowed value; Changed to %s", Long.valueOf(PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS)), new Throwable[0]);
            j10 = 900000;
        }
        setPeriodic(j10, j10);
    }

    public void setPeriodic(long j10, long j11) {
        if (j10 < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, String.format("Interval duration lesser than minimum allowed value; Changed to %s", Long.valueOf(PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS)), new Throwable[0]);
            j10 = 900000;
        }
        if (j11 < PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
            Logger.get().warning(TAG, String.format("Flex duration lesser than minimum allowed value; Changed to %s", Long.valueOf(PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS)), new Throwable[0]);
            j11 = 300000;
        }
        if (j11 > j10) {
            Logger.get().warning(TAG, String.format("Flex duration greater than interval duration; Changed to %s", Long.valueOf(j10)), new Throwable[0]);
            j11 = j10;
        }
        this.intervalDuration = j10;
        this.flexDuration = j11;
    }

    @NonNull
    public String toString() {
        return c.h(new StringBuilder("{WorkSpec: "), this.f999id, "}");
    }
}
