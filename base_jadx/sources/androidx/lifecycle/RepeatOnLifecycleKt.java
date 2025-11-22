package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import c5.v;
import c5.w;
import kotlin.Metadata;
import l9.m;
import nc.a0;
import nc.j0;
import nc.k1;
import r9.i;
import x9.p;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aC\u0010\t\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\"\u0010\b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003H\u0086@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001aC\u0010\t\u001a\u00020\u0006*\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00012\"\u0010\b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003H\u0086@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Landroidx/lifecycle/Lifecycle;", "Landroidx/lifecycle/Lifecycle$State;", "state", "Lkotlin/Function2;", "Lnc/a0;", "Lp9/d;", "Ll9/m;", "", "block", "repeatOnLifecycle", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lx9/p;Lp9/d;)Ljava/lang/Object;", "Landroidx/lifecycle/LifecycleOwner;", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lx9/p;Lp9/d;)Ljava/lang/Object;", "lifecycle-runtime-ktx_release"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class RepeatOnLifecycleKt {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lnc/a0;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @r9.e(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3", f = "RepeatOnLifecycle.kt", l = {84}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3, reason: invalid class name */
    public static final class AnonymousClass3 extends i implements p<a0, p9.d<? super m>, Object> {
        final /* synthetic */ p<a0, p9.d<? super m>, Object> $block;
        final /* synthetic */ Lifecycle.State $state;
        final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
        private /* synthetic */ Object L$0;
        int label;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lnc/a0;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @r9.e(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1", f = "RepeatOnLifecycle.kt", l = {166}, m = "invokeSuspend")
        /* renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1, reason: invalid class name */
        public static final class AnonymousClass1 extends i implements p<a0, p9.d<? super m>, Object> {
            final /* synthetic */ a0 $$this$coroutineScope;
            final /* synthetic */ p<a0, p9.d<? super m>, Object> $block;
            final /* synthetic */ Lifecycle.State $state;
            final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
            Object L$0;
            Object L$1;
            Object L$2;
            Object L$3;
            Object L$4;
            Object L$5;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(Lifecycle lifecycle, Lifecycle.State state, a0 a0Var, p<? super a0, ? super p9.d<? super m>, ? extends Object> pVar, p9.d<? super AnonymousClass1> dVar) {
                super(2, dVar);
                this.$this_repeatOnLifecycle = lifecycle;
                this.$state = state;
                this.$$this$coroutineScope = a0Var;
                this.$block = pVar;
            }

            @Override // r9.a
            public final p9.d<m> create(Object obj, p9.d<?> dVar) {
                return new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, this.$$this$coroutineScope, this.$block, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
                return ((AnonymousClass1) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:23:0x009c  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x00a5  */
            /* JADX WARN: Removed duplicated region for block: B:33:0x00b6  */
            /* JADX WARN: Removed duplicated region for block: B:36:0x00bf  */
            /* JADX WARN: Type inference failed for: r15v0, types: [T, androidx.lifecycle.LifecycleObserver, androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1] */
            @Override // r9.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r17) throws java.lang.Throwable {
                /*
                    r16 = this;
                    r1 = r16
                    q9.a r0 = q9.a.COROUTINE_SUSPENDED
                    int r2 = r1.label
                    r3 = 0
                    r4 = 1
                    if (r2 == 0) goto L35
                    if (r2 != r4) goto L2d
                    java.lang.Object r0 = r1.L$5
                    x9.p r0 = (x9.p) r0
                    java.lang.Object r0 = r1.L$4
                    nc.a0 r0 = (nc.a0) r0
                    java.lang.Object r0 = r1.L$3
                    androidx.lifecycle.Lifecycle r0 = (androidx.lifecycle.Lifecycle) r0
                    java.lang.Object r0 = r1.L$2
                    androidx.lifecycle.Lifecycle$State r0 = (androidx.lifecycle.Lifecycle.State) r0
                    java.lang.Object r0 = r1.L$1
                    r2 = r0
                    kotlin.jvm.internal.v r2 = (kotlin.jvm.internal.v) r2
                    java.lang.Object r0 = r1.L$0
                    r4 = r0
                    kotlin.jvm.internal.v r4 = (kotlin.jvm.internal.v) r4
                    c5.w.F(r17)     // Catch: java.lang.Throwable -> L2a
                    goto L96
                L2a:
                    r0 = move-exception
                    goto Lb0
                L2d:
                    java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                    java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                    r0.<init>(r2)
                    throw r0
                L35:
                    c5.w.F(r17)
                    androidx.lifecycle.Lifecycle r2 = r1.$this_repeatOnLifecycle
                    androidx.lifecycle.Lifecycle$State r2 = r2.getCurrentState()
                    androidx.lifecycle.Lifecycle$State r5 = androidx.lifecycle.Lifecycle.State.DESTROYED
                    if (r2 != r5) goto L45
                    l9.m r0 = l9.m.f9594a
                    return r0
                L45:
                    kotlin.jvm.internal.v r2 = new kotlin.jvm.internal.v
                    r2.<init>()
                    kotlin.jvm.internal.v r12 = new kotlin.jvm.internal.v
                    r12.<init>()
                    androidx.lifecycle.Lifecycle$State r5 = r1.$state     // Catch: java.lang.Throwable -> Lad
                    androidx.lifecycle.Lifecycle r13 = r1.$this_repeatOnLifecycle     // Catch: java.lang.Throwable -> Lad
                    nc.a0 r7 = r1.$$this$coroutineScope     // Catch: java.lang.Throwable -> Lad
                    x9.p<nc.a0, p9.d<? super l9.m>, java.lang.Object> r11 = r1.$block     // Catch: java.lang.Throwable -> Lad
                    r1.L$0 = r2     // Catch: java.lang.Throwable -> Lad
                    r1.L$1 = r12     // Catch: java.lang.Throwable -> Lad
                    r1.L$2 = r5     // Catch: java.lang.Throwable -> Lad
                    r1.L$3 = r13     // Catch: java.lang.Throwable -> Lad
                    r1.L$4 = r7     // Catch: java.lang.Throwable -> Lad
                    r1.L$5 = r11     // Catch: java.lang.Throwable -> Lad
                    r1.label = r4     // Catch: java.lang.Throwable -> Lad
                    nc.j r14 = new nc.j     // Catch: java.lang.Throwable -> Lad
                    p9.d r6 = c5.w.x(r16)     // Catch: java.lang.Throwable -> Lad
                    r14.<init>(r4, r6)     // Catch: java.lang.Throwable -> Lad
                    r14.n()     // Catch: java.lang.Throwable -> Lad
                    androidx.lifecycle.Lifecycle$Event r6 = androidx.lifecycle.Lifecycle.Event.upTo(r5)     // Catch: java.lang.Throwable -> Lad
                    androidx.lifecycle.Lifecycle$Event r8 = androidx.lifecycle.Lifecycle.Event.downFrom(r5)     // Catch: java.lang.Throwable -> Lad
                    kotlinx.coroutines.sync.d r10 = new kotlinx.coroutines.sync.d     // Catch: java.lang.Throwable -> Lad
                    r4 = 0
                    r10.<init>(r4)     // Catch: java.lang.Throwable -> Lad
                    androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1 r15 = new androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1     // Catch: java.lang.Throwable -> Lad
                    r4 = r15
                    r5 = r6
                    r6 = r2
                    r9 = r14
                    r4.<init>()     // Catch: java.lang.Throwable -> Lad
                    r12.f8975a = r15     // Catch: java.lang.Throwable -> Lad
                    r13.addObserver(r15)     // Catch: java.lang.Throwable -> Lad
                    java.lang.Object r4 = r14.m()     // Catch: java.lang.Throwable -> Lad
                    if (r4 != r0) goto L94
                    return r0
                L94:
                    r4 = r2
                    r2 = r12
                L96:
                    T r0 = r4.f8975a
                    nc.b1 r0 = (nc.b1) r0
                    if (r0 == 0) goto L9f
                    r0.a(r3)
                L9f:
                    T r0 = r2.f8975a
                    androidx.lifecycle.LifecycleEventObserver r0 = (androidx.lifecycle.LifecycleEventObserver) r0
                    if (r0 == 0) goto Laa
                    androidx.lifecycle.Lifecycle r2 = r1.$this_repeatOnLifecycle
                    r2.removeObserver(r0)
                Laa:
                    l9.m r0 = l9.m.f9594a
                    return r0
                Lad:
                    r0 = move-exception
                    r4 = r2
                    r2 = r12
                Lb0:
                    T r4 = r4.f8975a
                    nc.b1 r4 = (nc.b1) r4
                    if (r4 == 0) goto Lb9
                    r4.a(r3)
                Lb9:
                    T r2 = r2.f8975a
                    androidx.lifecycle.LifecycleEventObserver r2 = (androidx.lifecycle.LifecycleEventObserver) r2
                    if (r2 == 0) goto Lc4
                    androidx.lifecycle.Lifecycle r3 = r1.$this_repeatOnLifecycle
                    r3.removeObserver(r2)
                Lc4:
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.RepeatOnLifecycleKt.AnonymousClass3.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(Lifecycle lifecycle, Lifecycle.State state, p<? super a0, ? super p9.d<? super m>, ? extends Object> pVar, p9.d<? super AnonymousClass3> dVar) {
            super(2, dVar);
            this.$this_repeatOnLifecycle = lifecycle;
            this.$state = state;
            this.$block = pVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$this_repeatOnLifecycle, this.$state, this.$block, dVar);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // x9.p
        /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((AnonymousClass3) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.label;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.L$0;
                kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
                k1 k1VarD = kotlinx.coroutines.internal.m.f9167a.d();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, a0Var, this.$block, null);
                this.label = 1;
                if (v.N(k1VarD, anonymousClass1, this) == aVar) {
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

    public static final Object repeatOnLifecycle(Lifecycle lifecycle, Lifecycle.State state, p<? super a0, ? super p9.d<? super m>, ? extends Object> pVar, p9.d<? super m> dVar) {
        Object objT;
        if (state != Lifecycle.State.INITIALIZED) {
            return (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED && (objT = b8.f.t(new AnonymousClass3(lifecycle, state, pVar, null), dVar)) == q9.a.COROUTINE_SUSPENDED) ? objT : m.f9594a;
        }
        throw new IllegalArgumentException("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.".toString());
    }

    public static final Object repeatOnLifecycle(LifecycleOwner lifecycleOwner, Lifecycle.State state, p<? super a0, ? super p9.d<? super m>, ? extends Object> pVar, p9.d<? super m> dVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        kotlin.jvm.internal.h.e(lifecycle, "lifecycle");
        Object objRepeatOnLifecycle = repeatOnLifecycle(lifecycle, state, pVar, dVar);
        return objRepeatOnLifecycle == q9.a.COROUTINE_SUSPENDED ? objRepeatOnLifecycle : m.f9594a;
    }
}
