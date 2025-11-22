package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.exifinterface.media.ExifInterface;
import c5.v;
import c5.w;
import kotlin.Metadata;
import l9.m;
import nc.a0;
import nc.b1;
import nc.j0;
import r9.i;
import x9.p;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B`\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012(\u0010\f\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u0014ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0004\u001a\u00020\u0003H\u0007J\b\u0010\u0005\u001a\u00020\u0003H\u0007R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR9\u0010\f\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t8\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Landroidx/lifecycle/BlockRunner;", ExifInterface.GPS_DIRECTION_TRUE, "", "Ll9/m;", "maybeRun", "cancel", "Landroidx/lifecycle/CoroutineLiveData;", "liveData", "Landroidx/lifecycle/CoroutineLiveData;", "Lkotlin/Function2;", "Landroidx/lifecycle/LiveDataScope;", "Lp9/d;", "block", "Lx9/p;", "", "timeoutInMs", "J", "Lnc/a0;", "scope", "Lnc/a0;", "Lkotlin/Function0;", "onDone", "Lx9/a;", "Lnc/b1;", "runningJob", "Lnc/b1;", "cancellationJob", "<init>", "(Landroidx/lifecycle/CoroutineLiveData;Lx9/p;JLnc/a0;Lx9/a;)V", "lifecycle-livedata-ktx_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class BlockRunner<T> {
    private final p<LiveDataScope<T>, p9.d<? super m>, Object> block;
    private b1 cancellationJob;
    private final CoroutineLiveData<T> liveData;
    private final x9.a<m> onDone;
    private b1 runningJob;
    private final a0 scope;
    private final long timeoutInMs;

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lnc/a0;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @r9.e(c = "androidx.lifecycle.BlockRunner$cancel$1", f = "CoroutineLiveData.kt", l = {189}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.BlockRunner$cancel$1, reason: invalid class name */
    public static final class AnonymousClass1 extends i implements p<a0, p9.d<? super m>, Object> {
        int label;
        final /* synthetic */ BlockRunner<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(BlockRunner<T> blockRunner, p9.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.this$0 = blockRunner;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new AnonymousClass1(this.this$0, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((AnonymousClass1) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.label;
            if (r12 == 0) {
                w.F(obj);
                long j10 = ((BlockRunner) this.this$0).timeoutInMs;
                this.label = 1;
                if (a6.a.k(j10, this) == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            if (!((BlockRunner) this.this$0).liveData.hasActiveObservers()) {
                b1 b1Var = ((BlockRunner) this.this$0).runningJob;
                if (b1Var != null) {
                    b1Var.a(null);
                }
                ((BlockRunner) this.this$0).runningJob = null;
            }
            return m.f9594a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lnc/a0;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @r9.e(c = "androidx.lifecycle.BlockRunner$maybeRun$1", f = "CoroutineLiveData.kt", l = {178}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.BlockRunner$maybeRun$1, reason: invalid class name and case insensitive filesystem */
    public static final class C03431 extends i implements p<a0, p9.d<? super m>, Object> {
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ BlockRunner<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03431(BlockRunner<T> blockRunner, p9.d<? super C03431> dVar) {
            super(2, dVar);
            this.this$0 = blockRunner;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            C03431 c03431 = new C03431(this.this$0, dVar);
            c03431.L$0 = obj;
            return c03431;
        }

        @Override // x9.p
        /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((C03431) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.label;
            if (r12 == 0) {
                w.F(obj);
                LiveDataScopeImpl liveDataScopeImpl = new LiveDataScopeImpl(((BlockRunner) this.this$0).liveData, ((a0) this.L$0).getCoroutineContext());
                p pVar = ((BlockRunner) this.this$0).block;
                this.label = 1;
                if (pVar.mo7invoke(liveDataScopeImpl, this) == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            ((BlockRunner) this.this$0).onDone.invoke();
            return m.f9594a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BlockRunner(CoroutineLiveData<T> liveData, p<? super LiveDataScope<T>, ? super p9.d<? super m>, ? extends Object> block, long j10, a0 scope, x9.a<m> onDone) {
        kotlin.jvm.internal.h.f(liveData, "liveData");
        kotlin.jvm.internal.h.f(block, "block");
        kotlin.jvm.internal.h.f(scope, "scope");
        kotlin.jvm.internal.h.f(onDone, "onDone");
        this.liveData = liveData;
        this.block = block;
        this.timeoutInMs = j10;
        this.scope = scope;
        this.onDone = onDone;
    }

    @MainThread
    public final void cancel() {
        if (this.cancellationJob != null) {
            throw new IllegalStateException("Cancel call cannot happen without a maybeRun".toString());
        }
        a0 a0Var = this.scope;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        this.cancellationJob = v.C(a0Var, kotlinx.coroutines.internal.m.f9167a.d(), 0, new AnonymousClass1(this, null), 2);
    }

    @MainThread
    public final void maybeRun() {
        b1 b1Var = this.cancellationJob;
        if (b1Var != null) {
            b1Var.a(null);
        }
        this.cancellationJob = null;
        if (this.runningJob != null) {
            return;
        }
        this.runningJob = v.C(this.scope, null, 0, new C03431(this, null), 3);
    }
}
