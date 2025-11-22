package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Lifecycle;
import c5.v;
import c5.w;
import kotlin.Metadata;
import l9.m;
import nc.a0;
import nc.b1;
import nc.j0;
import r9.i;
import x9.p;

@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aA\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001aA\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\t2\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\n\u001aA\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\b\u001aA\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\t2\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\n\u001aA\u0010\f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\b\u001aA\u0010\f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\t2\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\n\u001aI\u0010\u000f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/LifecycleOwner;", "Lkotlin/Function2;", "Lnc/a0;", "Lp9/d;", "", "block", "whenCreated", "(Landroidx/lifecycle/LifecycleOwner;Lx9/p;Lp9/d;)Ljava/lang/Object;", "Landroidx/lifecycle/Lifecycle;", "(Landroidx/lifecycle/Lifecycle;Lx9/p;Lp9/d;)Ljava/lang/Object;", "whenStarted", "whenResumed", "Landroidx/lifecycle/Lifecycle$State;", "minState", "whenStateAtLeast", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lx9/p;Lp9/d;)Ljava/lang/Object;", "lifecycle-runtime-ktx_release"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class PausingDispatcherKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lnc/a0;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @r9.e(c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2", f = "PausingDispatcher.kt", l = {162}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2, reason: invalid class name */
    public static final class AnonymousClass2<T> extends i implements p<a0, p9.d<? super T>, Object> {
        final /* synthetic */ p<a0, p9.d<? super T>, Object> $block;
        final /* synthetic */ Lifecycle.State $minState;
        final /* synthetic */ Lifecycle $this_whenStateAtLeast;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Lifecycle lifecycle, Lifecycle.State state, p<? super a0, ? super p9.d<? super T>, ? extends Object> pVar, p9.d<? super AnonymousClass2> dVar) {
            super(2, dVar);
            this.$this_whenStateAtLeast = lifecycle;
            this.$minState = state;
            this.$block = pVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_whenStateAtLeast, this.$minState, this.$block, dVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // x9.p
        /* renamed from: invoke, reason: merged with bridge method [inline-methods] */
        public final Object mo7invoke(a0 a0Var, p9.d<? super T> dVar) {
            return ((AnonymousClass2) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            LifecycleController lifecycleController;
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.label;
            if (r12 != 0) {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                lifecycleController = (LifecycleController) this.L$0;
                try {
                    w.F(obj);
                    lifecycleController.finish();
                    return obj;
                } catch (Throwable th2) {
                    th = th2;
                    lifecycleController.finish();
                    throw th;
                }
            }
            w.F(obj);
            p9.f coroutineContext = ((a0) this.L$0).getCoroutineContext();
            int r13 = b1.f10783d0;
            b1 b1Var = (b1) coroutineContext.get(b1.b.f10784a);
            if (b1Var == null) {
                throw new IllegalStateException("when[State] methods should have a parent job".toString());
            }
            PausingDispatcher pausingDispatcher = new PausingDispatcher();
            LifecycleController lifecycleController2 = new LifecycleController(this.$this_whenStateAtLeast, this.$minState, pausingDispatcher.dispatchQueue, b1Var);
            try {
                p<a0, p9.d<? super T>, Object> pVar = this.$block;
                this.L$0 = lifecycleController2;
                this.label = 1;
                obj = v.N(pausingDispatcher, pVar, this);
                if (obj == aVar) {
                    return aVar;
                }
                lifecycleController = lifecycleController2;
                lifecycleController.finish();
                return obj;
            } catch (Throwable th3) {
                th = th3;
                lifecycleController = lifecycleController2;
                lifecycleController.finish();
                throw th;
            }
        }
    }

    public static final <T> Object whenCreated(Lifecycle lifecycle, p<? super a0, ? super p9.d<? super T>, ? extends Object> pVar, p9.d<? super T> dVar) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.CREATED, pVar, dVar);
    }

    public static final <T> Object whenCreated(LifecycleOwner lifecycleOwner, p<? super a0, ? super p9.d<? super T>, ? extends Object> pVar, p9.d<? super T> dVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        kotlin.jvm.internal.h.e(lifecycle, "lifecycle");
        return whenCreated(lifecycle, pVar, dVar);
    }

    public static final <T> Object whenResumed(Lifecycle lifecycle, p<? super a0, ? super p9.d<? super T>, ? extends Object> pVar, p9.d<? super T> dVar) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.RESUMED, pVar, dVar);
    }

    public static final <T> Object whenResumed(LifecycleOwner lifecycleOwner, p<? super a0, ? super p9.d<? super T>, ? extends Object> pVar, p9.d<? super T> dVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        kotlin.jvm.internal.h.e(lifecycle, "lifecycle");
        return whenResumed(lifecycle, pVar, dVar);
    }

    public static final <T> Object whenStarted(Lifecycle lifecycle, p<? super a0, ? super p9.d<? super T>, ? extends Object> pVar, p9.d<? super T> dVar) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.STARTED, pVar, dVar);
    }

    public static final <T> Object whenStarted(LifecycleOwner lifecycleOwner, p<? super a0, ? super p9.d<? super T>, ? extends Object> pVar, p9.d<? super T> dVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        kotlin.jvm.internal.h.e(lifecycle, "lifecycle");
        return whenStarted(lifecycle, pVar, dVar);
    }

    public static final <T> Object whenStateAtLeast(Lifecycle lifecycle, Lifecycle.State state, p<? super a0, ? super p9.d<? super T>, ? extends Object> pVar, p9.d<? super T> dVar) {
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        return v.N(kotlinx.coroutines.internal.m.f9167a.d(), new AnonymousClass2(lifecycle, state, pVar, null), dVar);
    }
}
