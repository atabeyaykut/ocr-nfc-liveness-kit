package androidx.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.impl.utils.futures.SettableFuture;
import c5.v;
import c5.w;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlinx.coroutines.internal.f;
import l9.m;
import nc.a0;
import nc.e1;
import nc.j;
import nc.j0;
import nc.p;
import nc.y;
import org.jmrtd.cbeff.ISO781611;
import p9.d;
import q9.a;
import r9.e;
import r9.i;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0013\u0010\u0005\u001a\u00020\u0003H¦@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u0013\u0010\b\u001a\u00020\u0007H\u0096@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\u0006J\u001b\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0086@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002J\u0006\u0010\u0012\u001a\u00020\u000bR\u001a\u0010\u0014\u001a\u00020\u00138\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R \u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00030\u00188\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR \u0010\u001e\u001a\u00020\u001d8\u0016X\u0097\u0004¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u0012\u0004\b\"\u0010#\u001a\u0004\b \u0010!\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006*"}, d2 = {"Landroidx/work/CoroutineWorker;", "Landroidx/work/ListenableWorker;", "Lm5/a;", "Landroidx/work/ListenableWorker$Result;", "startWork", "doWork", "(Lp9/d;)Ljava/lang/Object;", "Landroidx/work/ForegroundInfo;", "getForegroundInfo", "Landroidx/work/Data;", "data", "Ll9/m;", "setProgress", "(Landroidx/work/Data;Lp9/d;)Ljava/lang/Object;", "foregroundInfo", "setForeground", "(Landroidx/work/ForegroundInfo;Lp9/d;)Ljava/lang/Object;", "getForegroundInfoAsync", "onStopped", "Lnc/p;", "job", "Lnc/p;", "getJob$work_runtime_ktx_release", "()Lnc/p;", "Landroidx/work/impl/utils/futures/SettableFuture;", "future", "Landroidx/work/impl/utils/futures/SettableFuture;", "getFuture$work_runtime_ktx_release", "()Landroidx/work/impl/utils/futures/SettableFuture;", "Lnc/y;", "coroutineContext", "Lnc/y;", "getCoroutineContext", "()Lnc/y;", "getCoroutineContext$annotations", "()V", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "work-runtime-ktx_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public abstract class CoroutineWorker extends ListenableWorker {
    private final y coroutineContext;
    private final SettableFuture<ListenableWorker.Result> future;
    private final p job;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lnc/a0;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @e(c = "androidx.work.CoroutineWorker$getForegroundInfoAsync$1", f = "CoroutineWorker.kt", l = {ISO781611.CREATOR_OF_BIOMETRIC_REFERENCE_DATA}, m = "invokeSuspend")
    /* renamed from: androidx.work.CoroutineWorker$getForegroundInfoAsync$1, reason: invalid class name and case insensitive filesystem */
    public static final class C03531 extends i implements x9.p<a0, d<? super m>, Object> {
        final /* synthetic */ JobListenableFuture<ForegroundInfo> $jobFuture;
        Object L$0;
        int label;
        final /* synthetic */ CoroutineWorker this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03531(JobListenableFuture<ForegroundInfo> jobListenableFuture, CoroutineWorker coroutineWorker, d<? super C03531> dVar) {
            super(2, dVar);
            this.$jobFuture = jobListenableFuture;
            this.this$0 = coroutineWorker;
        }

        @Override // r9.a
        public final d<m> create(Object obj, d<?> dVar) {
            return new C03531(this.$jobFuture, this.this$0, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public final Object mo7invoke(a0 a0Var, d<? super m> dVar) {
            return ((C03531) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            JobListenableFuture jobListenableFuture;
            a aVar = a.COROUTINE_SUSPENDED;
            int r12 = this.label;
            if (r12 == 0) {
                w.F(obj);
                JobListenableFuture<ForegroundInfo> jobListenableFuture2 = this.$jobFuture;
                CoroutineWorker coroutineWorker = this.this$0;
                this.L$0 = jobListenableFuture2;
                this.label = 1;
                Object foregroundInfo = coroutineWorker.getForegroundInfo(this);
                if (foregroundInfo == aVar) {
                    return aVar;
                }
                jobListenableFuture = jobListenableFuture2;
                obj = foregroundInfo;
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                jobListenableFuture = (JobListenableFuture) this.L$0;
                w.F(obj);
            }
            jobListenableFuture.complete(obj);
            return m.f9594a;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lnc/a0;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @e(c = "androidx.work.CoroutineWorker$startWork$1", f = "CoroutineWorker.kt", l = {68}, m = "invokeSuspend")
    /* renamed from: androidx.work.CoroutineWorker$startWork$1, reason: invalid class name and case insensitive filesystem */
    public static final class C03541 extends i implements x9.p<a0, d<? super m>, Object> {
        int label;

        public C03541(d<? super C03541> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final d<m> create(Object obj, d<?> dVar) {
            return CoroutineWorker.this.new C03541(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public final Object mo7invoke(a0 a0Var, d<? super m> dVar) {
            return ((C03541) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            a aVar = a.COROUTINE_SUSPENDED;
            int r12 = this.label;
            try {
                if (r12 == 0) {
                    w.F(obj);
                    CoroutineWorker coroutineWorker = CoroutineWorker.this;
                    this.label = 1;
                    obj = coroutineWorker.doWork(this);
                    if (obj == aVar) {
                        return aVar;
                    }
                } else {
                    if (r12 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w.F(obj);
                }
                CoroutineWorker.this.getFuture$work_runtime_ktx_release().set((ListenableWorker.Result) obj);
            } catch (Throwable th2) {
                CoroutineWorker.this.getFuture$work_runtime_ktx_release().setException(th2);
            }
            return m.f9594a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(Context appContext, WorkerParameters params) {
        super(appContext, params);
        h.f(appContext, "appContext");
        h.f(params, "params");
        this.job = new e1(null);
        SettableFuture<ListenableWorker.Result> settableFutureCreate = SettableFuture.create();
        h.e(settableFutureCreate, "create()");
        this.future = settableFutureCreate;
        settableFutureCreate.addListener(new Runnable() { // from class: androidx.work.CoroutineWorker.1
            @Override // java.lang.Runnable
            public final void run() {
                if (CoroutineWorker.this.getFuture$work_runtime_ktx_release().isCancelled()) {
                    CoroutineWorker.this.getJob().a(null);
                }
            }
        }, getTaskExecutor().getBackgroundExecutor());
        this.coroutineContext = j0.f10808a;
    }

    public static /* synthetic */ void getCoroutineContext$annotations() {
    }

    public static /* synthetic */ Object getForegroundInfo$suspendImpl(CoroutineWorker coroutineWorker, d dVar) {
        throw new IllegalStateException("Not implemented");
    }

    public abstract Object doWork(d<? super ListenableWorker.Result> dVar);

    public y getCoroutineContext() {
        return this.coroutineContext;
    }

    public Object getForegroundInfo(d<? super ForegroundInfo> dVar) {
        return getForegroundInfo$suspendImpl(this, dVar);
    }

    @Override // androidx.work.ListenableWorker
    public final m5.a<ForegroundInfo> getForegroundInfoAsync() {
        e1 e1Var = new e1(null);
        f fVarF = b8.f.f(getCoroutineContext().plus(e1Var));
        JobListenableFuture jobListenableFuture = new JobListenableFuture(e1Var, null, 2, null);
        v.C(fVarF, null, 0, new C03531(jobListenableFuture, this, null), 3);
        return jobListenableFuture;
    }

    public final SettableFuture<ListenableWorker.Result> getFuture$work_runtime_ktx_release() {
        return this.future;
    }

    /* renamed from: getJob$work_runtime_ktx_release, reason: from getter */
    public final p getJob() {
        return this.job;
    }

    @Override // androidx.work.ListenableWorker
    public final void onStopped() {
        super.onStopped();
        this.future.cancel(false);
    }

    public final Object setForeground(ForegroundInfo foregroundInfo, d<? super m> dVar) throws Throwable {
        Object objM;
        m5.a<Void> foregroundAsync = setForegroundAsync(foregroundInfo);
        h.e(foregroundAsync, "setForegroundAsync(foregroundInfo)");
        boolean zIsDone = foregroundAsync.isDone();
        a aVar = a.COROUTINE_SUSPENDED;
        if (zIsDone) {
            try {
                objM = foregroundAsync.get();
            } catch (ExecutionException e10) {
                Throwable cause = e10.getCause();
                if (cause == null) {
                    throw e10;
                }
                throw cause;
            }
        } else {
            j jVar = new j(1, w.x(dVar));
            jVar.n();
            foregroundAsync.addListener(new ListenableFutureKt$await$2$1(jVar, foregroundAsync), DirectExecutor.INSTANCE);
            jVar.D(new ListenableFutureKt$await$2$2(foregroundAsync));
            objM = jVar.m();
        }
        return objM == aVar ? objM : m.f9594a;
    }

    public final Object setProgress(Data data, d<? super m> dVar) throws Throwable {
        Object objM;
        m5.a<Void> progressAsync = setProgressAsync(data);
        h.e(progressAsync, "setProgressAsync(data)");
        boolean zIsDone = progressAsync.isDone();
        a aVar = a.COROUTINE_SUSPENDED;
        if (zIsDone) {
            try {
                objM = progressAsync.get();
            } catch (ExecutionException e10) {
                Throwable cause = e10.getCause();
                if (cause == null) {
                    throw e10;
                }
                throw cause;
            }
        } else {
            j jVar = new j(1, w.x(dVar));
            jVar.n();
            progressAsync.addListener(new ListenableFutureKt$await$2$1(jVar, progressAsync), DirectExecutor.INSTANCE);
            jVar.D(new ListenableFutureKt$await$2$2(progressAsync));
            objM = jVar.m();
        }
        return objM == aVar ? objM : m.f9594a;
    }

    @Override // androidx.work.ListenableWorker
    public final m5.a<ListenableWorker.Result> startWork() {
        v.C(b8.f.f(getCoroutineContext().plus(this.job)), null, 0, new C03541(null), 3);
        return this.future;
    }
}
