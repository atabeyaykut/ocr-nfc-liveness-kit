package androidx.lifecycle;

import androidx.annotation.MainThread;
import c5.v;
import c5.w;
import kotlin.Metadata;
import l9.m;
import nc.a0;
import nc.j0;
import nc.k0;
import r9.i;
import x9.p;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007\u0012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\n¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0003J\u0013\u0010\u0004\u001a\u00020\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0002H\u0016R\u0018\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0018\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/lifecycle/EmittedSource;", "Lnc/k0;", "Ll9/m;", "removeSource", "disposeNow", "(Lp9/d;)Ljava/lang/Object;", "dispose", "Landroidx/lifecycle/LiveData;", "source", "Landroidx/lifecycle/LiveData;", "Landroidx/lifecycle/MediatorLiveData;", "mediator", "Landroidx/lifecycle/MediatorLiveData;", "", "disposed", "Z", "<init>", "(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/MediatorLiveData;)V", "lifecycle-livedata-ktx_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class EmittedSource implements k0 {
    private boolean disposed;
    private final MediatorLiveData<?> mediator;
    private final LiveData<?> source;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lnc/a0;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @r9.e(c = "androidx.lifecycle.EmittedSource$dispose$1", f = "CoroutineLiveData.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.EmittedSource$dispose$1, reason: invalid class name */
    public static final class AnonymousClass1 extends i implements p<a0, p9.d<? super m>, Object> {
        int label;

        public AnonymousClass1(p9.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return EmittedSource.this.new AnonymousClass1(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((AnonymousClass1) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
            EmittedSource.this.removeSource();
            return m.f9594a;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lnc/a0;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @r9.e(c = "androidx.lifecycle.EmittedSource$disposeNow$2", f = "CoroutineLiveData.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.EmittedSource$disposeNow$2, reason: invalid class name */
    public static final class AnonymousClass2 extends i implements p<a0, p9.d<? super m>, Object> {
        int label;

        public AnonymousClass2(p9.d<? super AnonymousClass2> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return EmittedSource.this.new AnonymousClass2(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((AnonymousClass2) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
            EmittedSource.this.removeSource();
            return m.f9594a;
        }
    }

    public EmittedSource(LiveData<?> source, MediatorLiveData<?> mediator) {
        kotlin.jvm.internal.h.f(source, "source");
        kotlin.jvm.internal.h.f(mediator, "mediator");
        this.source = source;
        this.mediator = mediator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public final void removeSource() {
        if (this.disposed) {
            return;
        }
        this.mediator.removeSource(this.source);
        this.disposed = true;
    }

    @Override // nc.k0
    public void dispose() {
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        v.C(b8.f.f(kotlinx.coroutines.internal.m.f9167a.d()), null, 0, new AnonymousClass1(null), 3);
    }

    public final Object disposeNow(p9.d<? super m> dVar) {
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        Object objN = v.N(kotlinx.coroutines.internal.m.f9167a.d(), new AnonymousClass2(null), dVar);
        return objN == q9.a.COROUTINE_SUSPENDED ? objN : m.f9594a;
    }
}
