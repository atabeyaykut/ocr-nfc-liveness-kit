package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import c5.w;
import kotlin.Metadata;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.internal.m;
import nc.j0;
import nc.k1;
import nc.y;

@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a5\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a-\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a-\u0010\n\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\n\u0010\t\u001a-\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\t\u001a5\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\r\u001a-\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\f2\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\b\u0010\u000e\u001a-\u0010\n\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\f2\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000e\u001a-\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\f2\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\u000e\u001a5\u0010\u000f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0081Hø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0007\u001aC\u0010\u0014\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0081@ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"R", "Landroidx/lifecycle/Lifecycle;", "Landroidx/lifecycle/Lifecycle$State;", "state", "Lkotlin/Function0;", "block", "withStateAtLeast", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lx9/a;Lp9/d;)Ljava/lang/Object;", "withCreated", "(Landroidx/lifecycle/Lifecycle;Lx9/a;Lp9/d;)Ljava/lang/Object;", "withStarted", "withResumed", "Landroidx/lifecycle/LifecycleOwner;", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lx9/a;Lp9/d;)Ljava/lang/Object;", "(Landroidx/lifecycle/LifecycleOwner;Lx9/a;Lp9/d;)Ljava/lang/Object;", "withStateAtLeastUnchecked", "", "dispatchNeeded", "Lnc/y;", "lifecycleDispatcher", "suspendWithStateAtLeastUnchecked", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLnc/y;Lx9/a;Lp9/d;)Ljava/lang/Object;", "lifecycle-runtime-ktx_release"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class WithLifecycleStateKt {

    /* JADX INFO: Add missing generic type declarations: [R] */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0004\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "R", "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.lifecycle.WithLifecycleStateKt$withStateAtLeastUnchecked$2, reason: invalid class name */
    public static final class AnonymousClass2<R> extends j implements x9.a<R> {
        final /* synthetic */ x9.a<R> $block;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(x9.a<? extends R> aVar) {
            super(0);
            this.$block = aVar;
        }

        @Override // x9.a
        public final R invoke() {
            return this.$block.invoke();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.lifecycle.LifecycleObserver, androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1] */
    public static final <R> Object suspendWithStateAtLeastUnchecked(final Lifecycle lifecycle, final Lifecycle.State state, boolean z10, y yVar, final x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        final nc.j jVar = new nc.j(1, w.x(dVar));
        jVar.n();
        final ?? r72 = new LifecycleEventObserver() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1
            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
                p9.d dVar2;
                LifecycleDestroyedException th2;
                Object objJ;
                kotlin.jvm.internal.h.f(source, "source");
                kotlin.jvm.internal.h.f(event, "event");
                if (event == Lifecycle.Event.upTo(state)) {
                    lifecycle.removeObserver(this);
                    dVar2 = jVar;
                    try {
                        objJ = aVar.invoke();
                    } catch (Throwable th3) {
                        th2 = th3;
                    }
                    dVar2.resumeWith(objJ);
                }
                if (event != Lifecycle.Event.ON_DESTROY) {
                    return;
                }
                lifecycle.removeObserver(this);
                dVar2 = jVar;
                th2 = new LifecycleDestroyedException();
                objJ = w.j(th2);
                dVar2.resumeWith(objJ);
            }
        };
        if (z10) {
            yVar.dispatch(p9.g.f12870a, new Runnable() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$1
                @Override // java.lang.Runnable
                public final void run() {
                    lifecycle.addObserver(r72);
                }
            });
        } else {
            lifecycle.addObserver(r72);
        }
        jVar.D(new WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2(yVar, lifecycle, r72));
        return jVar.m();
    }

    public static final <R> Object withCreated(Lifecycle lifecycle, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        Lifecycle.State state = Lifecycle.State.CREATED;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        k1 k1VarD = m.f9167a.d();
        boolean zIsDispatchNeeded = k1VarD.isDispatchNeeded(dVar.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return aVar.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, k1VarD, new AnonymousClass2(aVar), dVar);
    }

    private static final <R> Object withCreated$$forInline(Lifecycle lifecycle, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        m.f9167a.d();
        throw null;
    }

    public static final <R> Object withResumed(Lifecycle lifecycle, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        Lifecycle.State state = Lifecycle.State.RESUMED;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        k1 k1VarD = m.f9167a.d();
        boolean zIsDispatchNeeded = k1VarD.isDispatchNeeded(dVar.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return aVar.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, k1VarD, new AnonymousClass2(aVar), dVar);
    }

    private static final <R> Object withResumed$$forInline(Lifecycle lifecycle, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        m.f9167a.d();
        throw null;
    }

    public static final <R> Object withStarted(Lifecycle lifecycle, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        Lifecycle.State state = Lifecycle.State.STARTED;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        k1 k1VarD = m.f9167a.d();
        boolean zIsDispatchNeeded = k1VarD.isDispatchNeeded(dVar.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return aVar.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, k1VarD, new AnonymousClass2(aVar), dVar);
    }

    private static final <R> Object withStarted$$forInline(Lifecycle lifecycle, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        m.f9167a.d();
        throw null;
    }

    public static final <R> Object withStateAtLeast(Lifecycle lifecycle, Lifecycle.State state, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        if (!(state.compareTo(Lifecycle.State.CREATED) >= 0)) {
            throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
        }
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        k1 k1VarD = m.f9167a.d();
        boolean zIsDispatchNeeded = k1VarD.isDispatchNeeded(dVar.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return aVar.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, k1VarD, new AnonymousClass2(aVar), dVar);
    }

    private static final <R> Object withStateAtLeast$$forInline(Lifecycle lifecycle, Lifecycle.State state, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
            m.f9167a.d();
            throw null;
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
    }

    public static final <R> Object withStateAtLeastUnchecked(Lifecycle lifecycle, Lifecycle.State state, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        k1 k1VarD = m.f9167a.d();
        boolean zIsDispatchNeeded = k1VarD.isDispatchNeeded(dVar.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return aVar.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, k1VarD, new AnonymousClass2(aVar), dVar);
    }

    private static final <R> Object withStateAtLeastUnchecked$$forInline(Lifecycle lifecycle, Lifecycle.State state, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        m.f9167a.d();
        throw null;
    }

    public static final <R> Object withCreated(LifecycleOwner lifecycleOwner, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        kotlin.jvm.internal.h.e(lifecycle, "lifecycle");
        Lifecycle.State state = Lifecycle.State.CREATED;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        k1 k1VarD = m.f9167a.d();
        boolean zIsDispatchNeeded = k1VarD.isDispatchNeeded(dVar.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return aVar.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, k1VarD, new AnonymousClass2(aVar), dVar);
    }

    private static final <R> Object withCreated$$forInline(LifecycleOwner lifecycleOwner, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        kotlin.jvm.internal.h.e(lifecycle, "lifecycle");
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        m.f9167a.d();
        throw null;
    }

    public static final <R> Object withResumed(LifecycleOwner lifecycleOwner, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        kotlin.jvm.internal.h.e(lifecycle, "lifecycle");
        Lifecycle.State state = Lifecycle.State.RESUMED;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        k1 k1VarD = m.f9167a.d();
        boolean zIsDispatchNeeded = k1VarD.isDispatchNeeded(dVar.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return aVar.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, k1VarD, new AnonymousClass2(aVar), dVar);
    }

    private static final <R> Object withResumed$$forInline(LifecycleOwner lifecycleOwner, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        kotlin.jvm.internal.h.e(lifecycle, "lifecycle");
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        m.f9167a.d();
        throw null;
    }

    public static final <R> Object withStarted(LifecycleOwner lifecycleOwner, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        kotlin.jvm.internal.h.e(lifecycle, "lifecycle");
        Lifecycle.State state = Lifecycle.State.STARTED;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        k1 k1VarD = m.f9167a.d();
        boolean zIsDispatchNeeded = k1VarD.isDispatchNeeded(dVar.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return aVar.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, k1VarD, new AnonymousClass2(aVar), dVar);
    }

    private static final <R> Object withStarted$$forInline(LifecycleOwner lifecycleOwner, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        kotlin.jvm.internal.h.e(lifecycle, "lifecycle");
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        m.f9167a.d();
        throw null;
    }

    public static final <R> Object withStateAtLeast(LifecycleOwner lifecycleOwner, Lifecycle.State state, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        kotlin.jvm.internal.h.e(lifecycle, "lifecycle");
        if (!(state.compareTo(Lifecycle.State.CREATED) >= 0)) {
            throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
        }
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        k1 k1VarD = m.f9167a.d();
        boolean zIsDispatchNeeded = k1VarD.isDispatchNeeded(dVar.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return aVar.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, k1VarD, new AnonymousClass2(aVar), dVar);
    }

    private static final <R> Object withStateAtLeast$$forInline(LifecycleOwner lifecycleOwner, Lifecycle.State state, x9.a<? extends R> aVar, p9.d<? super R> dVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        kotlin.jvm.internal.h.e(lifecycle, "lifecycle");
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
            m.f9167a.d();
            throw null;
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
    }
}
