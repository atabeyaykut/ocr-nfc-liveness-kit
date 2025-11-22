package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Lifecycle;
import c5.w;
import kotlin.Metadata;
import l9.m;
import nc.a0;
import pc.r;
import r9.i;
import x9.p;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a.\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004¨\u0006\u0007"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/f;", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Landroidx/lifecycle/Lifecycle$State;", "minActiveState", "flowWithLifecycle", "lifecycle-runtime-ktx_release"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class FlowExtKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lpc/r;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @r9.e(c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1", f = "FlowExt.kt", l = {91}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.FlowExtKt$flowWithLifecycle$1, reason: invalid class name */
    public static final class AnonymousClass1<T> extends i implements p<r<? super T>, p9.d<? super m>, Object> {
        final /* synthetic */ Lifecycle $lifecycle;
        final /* synthetic */ Lifecycle.State $minActiveState;
        final /* synthetic */ kotlinx.coroutines.flow.f<T> $this_flowWithLifecycle;
        private /* synthetic */ Object L$0;
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lnc/a0;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @r9.e(c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1", f = "FlowExt.kt", l = {92}, m = "invokeSuspend")
        /* renamed from: androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1, reason: invalid class name and collision with other inner class name */
        public static final class C00311 extends i implements p<a0, p9.d<? super m>, Object> {
            final /* synthetic */ r<T> $$this$callbackFlow;
            final /* synthetic */ kotlinx.coroutines.flow.f<T> $this_flowWithLifecycle;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C00311(kotlinx.coroutines.flow.f<? extends T> fVar, r<? super T> rVar, p9.d<? super C00311> dVar) {
                super(2, dVar);
                this.$this_flowWithLifecycle = fVar;
                this.$$this$callbackFlow = rVar;
            }

            @Override // r9.a
            public final p9.d<m> create(Object obj, p9.d<?> dVar) {
                return new C00311(this.$this_flowWithLifecycle, this.$$this$callbackFlow, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
                return ((C00311) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.label;
                if (r12 == 0) {
                    w.F(obj);
                    kotlinx.coroutines.flow.f<T> fVar = this.$this_flowWithLifecycle;
                    final r<T> rVar = this.$$this$callbackFlow;
                    kotlinx.coroutines.flow.g<? super T> gVar = new kotlinx.coroutines.flow.g() { // from class: androidx.lifecycle.FlowExtKt.flowWithLifecycle.1.1.1
                        @Override // kotlinx.coroutines.flow.g
                        public final Object emit(T t10, p9.d<? super m> dVar) {
                            Object objP = rVar.p(t10, dVar);
                            return objP == q9.a.COROUTINE_SUSPENDED ? objP : m.f9594a;
                        }
                    };
                    this.label = 1;
                    if (fVar.a(gVar, this) == aVar) {
                        return aVar;
                    }
                } else {
                    if (r12 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w.F(obj);
                }
                return m.f9594a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(Lifecycle lifecycle, Lifecycle.State state, kotlinx.coroutines.flow.f<? extends T> fVar, p9.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$lifecycle = lifecycle;
            this.$minActiveState = state;
            this.$this_flowWithLifecycle = fVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$lifecycle, this.$minActiveState, this.$this_flowWithLifecycle, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // x9.p
        /* renamed from: invoke, reason: merged with bridge method [inline-methods] */
        public final Object mo7invoke(r<? super T> rVar, p9.d<? super m> dVar) {
            return ((AnonymousClass1) create(rVar, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            r rVar;
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.label;
            if (r12 == 0) {
                w.F(obj);
                r rVar2 = (r) this.L$0;
                Lifecycle lifecycle = this.$lifecycle;
                Lifecycle.State state = this.$minActiveState;
                C00311 c00311 = new C00311(this.$this_flowWithLifecycle, rVar2, null);
                this.L$0 = rVar2;
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycle, state, c00311, this) == aVar) {
                    return aVar;
                }
                rVar = rVar2;
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                rVar = (r) this.L$0;
                w.F(obj);
            }
            rVar.s(null);
            return m.f9594a;
        }
    }

    public static final <T> kotlinx.coroutines.flow.f<T> flowWithLifecycle(kotlinx.coroutines.flow.f<? extends T> fVar, Lifecycle lifecycle, Lifecycle.State minActiveState) {
        kotlin.jvm.internal.h.f(fVar, "<this>");
        kotlin.jvm.internal.h.f(lifecycle, "lifecycle");
        kotlin.jvm.internal.h.f(minActiveState, "minActiveState");
        return new kotlinx.coroutines.flow.b(new AnonymousClass1(lifecycle, minActiveState, fVar, null), p9.g.f12870a, -2, pc.f.SUSPEND);
    }

    public static /* synthetic */ kotlinx.coroutines.flow.f flowWithLifecycle$default(kotlinx.coroutines.flow.f fVar, Lifecycle lifecycle, Lifecycle.State state, int r32, Object obj) {
        if ((r32 & 2) != 0) {
            state = Lifecycle.State.STARTED;
        }
        return flowWithLifecycle(fVar, lifecycle, state);
    }
}
