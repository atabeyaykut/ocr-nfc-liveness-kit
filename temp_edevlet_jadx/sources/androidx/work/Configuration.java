package androidx.work;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.a;
import androidx.work.impl.DefaultRunnableScheduler;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class Configuration {

    @SuppressLint({"MinMaxConstant"})
    public static final int MIN_SCHEDULER_LIMIT = 20;

    @Nullable
    final String mDefaultProcessName;

    @Nullable
    final InitializationExceptionHandler mExceptionHandler;

    @NonNull
    final Executor mExecutor;

    @NonNull
    final InputMergerFactory mInputMergerFactory;
    private final boolean mIsUsingDefaultTaskExecutor;
    final int mLoggingLevel;
    final int mMaxJobSchedulerId;
    final int mMaxSchedulerLimit;
    final int mMinJobSchedulerId;

    @NonNull
    final RunnableScheduler mRunnableScheduler;

    @NonNull
    final Executor mTaskExecutor;

    @NonNull
    final WorkerFactory mWorkerFactory;

    public static final class Builder {

        @Nullable
        String mDefaultProcessName;

        @Nullable
        InitializationExceptionHandler mExceptionHandler;
        Executor mExecutor;
        InputMergerFactory mInputMergerFactory;
        int mLoggingLevel;
        int mMaxJobSchedulerId;
        int mMaxSchedulerLimit;
        int mMinJobSchedulerId;
        RunnableScheduler mRunnableScheduler;
        Executor mTaskExecutor;
        WorkerFactory mWorkerFactory;

        public Builder() {
            this.mLoggingLevel = 4;
            this.mMinJobSchedulerId = 0;
            this.mMaxJobSchedulerId = Integer.MAX_VALUE;
            this.mMaxSchedulerLimit = 20;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder(@NonNull Configuration configuration) {
            this.mExecutor = configuration.mExecutor;
            this.mWorkerFactory = configuration.mWorkerFactory;
            this.mInputMergerFactory = configuration.mInputMergerFactory;
            this.mTaskExecutor = configuration.mTaskExecutor;
            this.mLoggingLevel = configuration.mLoggingLevel;
            this.mMinJobSchedulerId = configuration.mMinJobSchedulerId;
            this.mMaxJobSchedulerId = configuration.mMaxJobSchedulerId;
            this.mMaxSchedulerLimit = configuration.mMaxSchedulerLimit;
            this.mRunnableScheduler = configuration.mRunnableScheduler;
            this.mExceptionHandler = configuration.mExceptionHandler;
            this.mDefaultProcessName = configuration.mDefaultProcessName;
        }

        @NonNull
        public Configuration build() {
            return new Configuration(this);
        }

        @NonNull
        public Builder setDefaultProcessName(@NonNull String str) {
            this.mDefaultProcessName = str;
            return this;
        }

        @NonNull
        public Builder setExecutor(@NonNull Executor executor) {
            this.mExecutor = executor;
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setInitializationExceptionHandler(@NonNull InitializationExceptionHandler initializationExceptionHandler) {
            this.mExceptionHandler = initializationExceptionHandler;
            return this;
        }

        @NonNull
        public Builder setInputMergerFactory(@NonNull InputMergerFactory inputMergerFactory) {
            this.mInputMergerFactory = inputMergerFactory;
            return this;
        }

        @NonNull
        public Builder setJobSchedulerJobIdRange(int r32, int r42) {
            if (r42 - r32 < 1000) {
                throw new IllegalArgumentException("WorkManager needs a range of at least 1000 job ids.");
            }
            this.mMinJobSchedulerId = r32;
            this.mMaxJobSchedulerId = r42;
            return this;
        }

        @NonNull
        public Builder setMaxSchedulerLimit(int r22) {
            if (r22 < 20) {
                throw new IllegalArgumentException("WorkManager needs to be able to schedule at least 20 jobs in JobScheduler.");
            }
            this.mMaxSchedulerLimit = Math.min(r22, 50);
            return this;
        }

        @NonNull
        public Builder setMinimumLoggingLevel(int r12) {
            this.mLoggingLevel = r12;
            return this;
        }

        @NonNull
        public Builder setRunnableScheduler(@NonNull RunnableScheduler runnableScheduler) {
            this.mRunnableScheduler = runnableScheduler;
            return this;
        }

        @NonNull
        public Builder setTaskExecutor(@NonNull Executor executor) {
            this.mTaskExecutor = executor;
            return this;
        }

        @NonNull
        public Builder setWorkerFactory(@NonNull WorkerFactory workerFactory) {
            this.mWorkerFactory = workerFactory;
            return this;
        }
    }

    public interface Provider {
        @NonNull
        Configuration getWorkManagerConfiguration();
    }

    public Configuration(@NonNull Builder builder) {
        Executor executor = builder.mExecutor;
        this.mExecutor = executor == null ? createDefaultExecutor(false) : executor;
        Executor executorCreateDefaultExecutor = builder.mTaskExecutor;
        if (executorCreateDefaultExecutor == null) {
            this.mIsUsingDefaultTaskExecutor = true;
            executorCreateDefaultExecutor = createDefaultExecutor(true);
        } else {
            this.mIsUsingDefaultTaskExecutor = false;
        }
        this.mTaskExecutor = executorCreateDefaultExecutor;
        WorkerFactory workerFactory = builder.mWorkerFactory;
        this.mWorkerFactory = workerFactory == null ? WorkerFactory.getDefaultWorkerFactory() : workerFactory;
        InputMergerFactory inputMergerFactory = builder.mInputMergerFactory;
        this.mInputMergerFactory = inputMergerFactory == null ? InputMergerFactory.getDefaultInputMergerFactory() : inputMergerFactory;
        RunnableScheduler runnableScheduler = builder.mRunnableScheduler;
        this.mRunnableScheduler = runnableScheduler == null ? new DefaultRunnableScheduler() : runnableScheduler;
        this.mLoggingLevel = builder.mLoggingLevel;
        this.mMinJobSchedulerId = builder.mMinJobSchedulerId;
        this.mMaxJobSchedulerId = builder.mMaxJobSchedulerId;
        this.mMaxSchedulerLimit = builder.mMaxSchedulerLimit;
        this.mExceptionHandler = builder.mExceptionHandler;
        this.mDefaultProcessName = builder.mDefaultProcessName;
    }

    @NonNull
    private Executor createDefaultExecutor(boolean z10) {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), createDefaultThreadFactory(z10));
    }

    @NonNull
    private ThreadFactory createDefaultThreadFactory(final boolean z10) {
        return new ThreadFactory() { // from class: androidx.work.Configuration.1
            private final AtomicInteger mThreadCount = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                StringBuilder sbE = a.e(z10 ? "WM.task-" : "androidx.work-");
                sbE.append(this.mThreadCount.incrementAndGet());
                return new Thread(runnable, sbE.toString());
            }
        };
    }

    @Nullable
    public String getDefaultProcessName() {
        return this.mDefaultProcessName;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public InitializationExceptionHandler getExceptionHandler() {
        return this.mExceptionHandler;
    }

    @NonNull
    public Executor getExecutor() {
        return this.mExecutor;
    }

    @NonNull
    public InputMergerFactory getInputMergerFactory() {
        return this.mInputMergerFactory;
    }

    public int getMaxJobSchedulerId() {
        return this.mMaxJobSchedulerId;
    }

    @IntRange(from = 20, to = 50)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getMaxSchedulerLimit() {
        return Build.VERSION.SDK_INT == 23 ? this.mMaxSchedulerLimit / 2 : this.mMaxSchedulerLimit;
    }

    public int getMinJobSchedulerId() {
        return this.mMinJobSchedulerId;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getMinimumLoggingLevel() {
        return this.mLoggingLevel;
    }

    @NonNull
    public RunnableScheduler getRunnableScheduler() {
        return this.mRunnableScheduler;
    }

    @NonNull
    public Executor getTaskExecutor() {
        return this.mTaskExecutor;
    }

    @NonNull
    public WorkerFactory getWorkerFactory() {
        return this.mWorkerFactory;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isUsingDefaultTaskExecutor() {
        return this.mIsUsingDefaultTaskExecutor;
    }
}
