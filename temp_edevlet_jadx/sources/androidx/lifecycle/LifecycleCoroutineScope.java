package androidx.lifecycle;

import c5.v;
import c5.w;
import kotlin.Metadata;
import l9.m;
import nc.a0;
import nc.b1;
import r9.i;
import x9.p;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\t\b\u0000¢\u0006\u0004\b\u0010\u0010\u0011J4\u0010\b\u001a\u00020\u00072\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ4\u0010\n\u001a\u00020\u00072\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002ø\u0001\u0000¢\u0006\u0004\b\n\u0010\tJ4\u0010\u000b\u001a\u00020\u00072\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\tR\u0014\u0010\u000f\u001a\u00020\f8 X \u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/lifecycle/LifecycleCoroutineScope;", "Lnc/a0;", "Lkotlin/Function2;", "Lp9/d;", "Ll9/m;", "", "block", "Lnc/b1;", "launchWhenCreated", "(Lx9/p;)Lnc/b1;", "launchWhenStarted", "launchWhenResumed", "Landroidx/lifecycle/Lifecycle;", "getLifecycle$lifecycle_runtime_ktx_release", "()Landroidx/lifecycle/Lifecycle;", "lifecycle", "<init>", "()V", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public abstract class LifecycleCoroutineScope implements a0 {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lnc/a0;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @r9.e(c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenCreated$1", f = "Lifecycle.kt", l = {79}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.LifecycleCoroutineScope$launchWhenCreated$1, reason: invalid class name */
    public static final class AnonymousClass1 extends i implements p<a0, p9.d<? super m>, Object> {
        final /* synthetic */ p<a0, p9.d<? super m>, Object> $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(p<? super a0, ? super p9.d<? super m>, ? extends Object> pVar, p9.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$block = pVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return LifecycleCoroutineScope.this.new AnonymousClass1(this.$block, dVar);
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
                Lifecycle lifecycle$lifecycle_runtime_ktx_release = LifecycleCoroutineScope.this.getLifecycle();
                p<a0, p9.d<? super m>, Object> pVar = this.$block;
                this.label = 1;
                if (PausingDispatcherKt.whenCreated(lifecycle$lifecycle_runtime_ktx_release, pVar, this) == aVar) {
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

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lnc/a0;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @r9.e(c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenResumed$1", f = "Lifecycle.kt", l = {114}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.LifecycleCoroutineScope$launchWhenResumed$1, reason: invalid class name and case insensitive filesystem */
    public static final class C03451 extends i implements p<a0, p9.d<? super m>, Object> {
        final /* synthetic */ p<a0, p9.d<? super m>, Object> $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C03451(p<? super a0, ? super p9.d<? super m>, ? extends Object> pVar, p9.d<? super C03451> dVar) {
            super(2, dVar);
            this.$block = pVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return LifecycleCoroutineScope.this.new C03451(this.$block, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((C03451) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.label;
            if (r12 == 0) {
                w.F(obj);
                Lifecycle lifecycle$lifecycle_runtime_ktx_release = LifecycleCoroutineScope.this.getLifecycle();
                p<a0, p9.d<? super m>, Object> pVar = this.$block;
                this.label = 1;
                if (PausingDispatcherKt.whenResumed(lifecycle$lifecycle_runtime_ktx_release, pVar, this) == aVar) {
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

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lnc/a0;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @r9.e(c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenStarted$1", f = "Lifecycle.kt", l = {97}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.LifecycleCoroutineScope$launchWhenStarted$1, reason: invalid class name and case insensitive filesystem */
    public static final class C03461 extends i implements p<a0, p9.d<? super m>, Object> {
        final /* synthetic */ p<a0, p9.d<? super m>, Object> $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C03461(p<? super a0, ? super p9.d<? super m>, ? extends Object> pVar, p9.d<? super C03461> dVar) {
            super(2, dVar);
            this.$block = pVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return LifecycleCoroutineScope.this.new C03461(this.$block, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((C03461) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.label;
            if (r12 == 0) {
                w.F(obj);
                Lifecycle lifecycle$lifecycle_runtime_ktx_release = LifecycleCoroutineScope.this.getLifecycle();
                p<a0, p9.d<? super m>, Object> pVar = this.$block;
                this.label = 1;
                if (PausingDispatcherKt.whenStarted(lifecycle$lifecycle_runtime_ktx_release, pVar, this) == aVar) {
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

    @Override // nc.a0
    public abstract /* synthetic */ p9.f getCoroutineContext();

    /* renamed from: getLifecycle$lifecycle_runtime_ktx_release */
    public abstract Lifecycle getLifecycle();

    public final b1 launchWhenCreated(p<? super a0, ? super p9.d<? super m>, ? extends Object> block) {
        kotlin.jvm.internal.h.f(block, "block");
        return v.C(this, null, 0, new AnonymousClass1(block, null), 3);
    }

    public final b1 launchWhenResumed(p<? super a0, ? super p9.d<? super m>, ? extends Object> block) {
        kotlin.jvm.internal.h.f(block, "block");
        return v.C(this, null, 0, new C03451(block, null), 3);
    }

    public final b1 launchWhenStarted(p<? super a0, ? super p9.d<? super m>, ? extends Object> block) {
        kotlin.jvm.internal.h.f(block, "block");
        return v.C(this, null, 0, new C03461(block, null), 3);
    }
}
