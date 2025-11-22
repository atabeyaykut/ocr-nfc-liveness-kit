package kotlinx.coroutines.internal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import nc.c0;
import nc.i0;
import nc.n0;
import nc.w1;

/* loaded from: classes2.dex */
public final class g<T> extends i0<T> implements r9.d, p9.d<T> {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9139h = AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "_reusableCancellableContinuation");
    private volatile /* synthetic */ Object _reusableCancellableContinuation;

    /* renamed from: d, reason: collision with root package name */
    public final nc.y f9140d;

    /* renamed from: e, reason: collision with root package name */
    public final p9.d<T> f9141e;
    public Object f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f9142g;

    /* JADX WARN: Multi-variable type inference failed */
    public g(nc.y yVar, p9.d<? super T> dVar) {
        super(-1);
        this.f9140d = yVar;
        this.f9141e = dVar;
        this.f = a2.b.f39c;
        this.f9142g = w.b(getContext());
        this._reusableCancellableContinuation = null;
    }

    @Override // nc.i0
    public final void a(Object obj, CancellationException cancellationException) {
        if (obj instanceof nc.s) {
            ((nc.s) obj).f10840b.invoke(cancellationException);
        }
    }

    @Override // nc.i0
    public final p9.d<T> b() {
        return this;
    }

    @Override // r9.d
    public final r9.d getCallerFrame() {
        p9.d<T> dVar = this.f9141e;
        if (dVar instanceof r9.d) {
            return (r9.d) dVar;
        }
        return null;
    }

    @Override // p9.d
    public final p9.f getContext() {
        return this.f9141e.getContext();
    }

    @Override // nc.i0
    public final Object h() {
        Object obj = this.f;
        this.f = a2.b.f39c;
        return obj;
    }

    public final nc.j<T> i() {
        boolean z10;
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            u uVar = a2.b.f40d;
            if (obj == null) {
                this._reusableCancellableContinuation = uVar;
                return null;
            }
            if (obj instanceof nc.j) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9139h;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, uVar)) {
                        z10 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        z10 = false;
                        break;
                    }
                }
                if (z10) {
                    return (nc.j) obj;
                }
            } else if (obj != uVar && !(obj instanceof Throwable)) {
                throw new IllegalStateException(kotlin.jvm.internal.h.k(obj, "Inconsistent state ").toString());
            }
        }
    }

    public final boolean k() {
        return this._reusableCancellableContinuation != null;
    }

    public final boolean l(Throwable th2) {
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            u uVar = a2.b.f40d;
            boolean z10 = false;
            boolean z11 = true;
            if (kotlin.jvm.internal.h.a(obj, uVar)) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9139h;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, th2)) {
                        z10 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != uVar) {
                        break;
                    }
                }
                if (z10) {
                    return true;
                }
            } else {
                if (obj instanceof Throwable) {
                    return true;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f9139h;
                while (true) {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, obj, null)) {
                        break;
                    }
                    if (atomicReferenceFieldUpdater2.get(this) != obj) {
                        z11 = false;
                        break;
                    }
                }
                if (z11) {
                    return false;
                }
            }
        }
    }

    public final void m() {
        Object obj = this._reusableCancellableContinuation;
        nc.j jVar = obj instanceof nc.j ? (nc.j) obj : null;
        if (jVar == null) {
            return;
        }
        jVar.i();
    }

    public final Throwable n(nc.i<?> iVar) {
        boolean z10;
        do {
            Object obj = this._reusableCancellableContinuation;
            u uVar = a2.b.f40d;
            z10 = false;
            if (obj != uVar) {
                if (!(obj instanceof Throwable)) {
                    throw new IllegalStateException(kotlin.jvm.internal.h.k(obj, "Inconsistent state ").toString());
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9139h;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                        z10 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                if (z10) {
                    return (Throwable) obj;
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f9139h;
            while (true) {
                if (atomicReferenceFieldUpdater2.compareAndSet(this, uVar, iVar)) {
                    z10 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater2.get(this) != uVar) {
                    break;
                }
            }
        } while (!z10);
        return null;
    }

    @Override // p9.d
    public final void resumeWith(Object obj) {
        p9.d<T> dVar = this.f9141e;
        p9.f context = dVar.getContext();
        Throwable thA = l9.h.a(obj);
        Object rVar = thA == null ? obj : new nc.r(false, thA);
        nc.y yVar = this.f9140d;
        if (yVar.isDispatchNeeded(context)) {
            this.f = rVar;
            this.f10802c = 0;
            yVar.dispatch(context, this);
            return;
        }
        n0 n0VarA = w1.a();
        if (n0VarA.k()) {
            this.f = rVar;
            this.f10802c = 0;
            n0VarA.g(this);
            return;
        }
        n0VarA.j(true);
        try {
            p9.f context2 = getContext();
            Object objC = w.c(context2, this.f9142g);
            try {
                dVar.resumeWith(obj);
                l9.m mVar = l9.m.f9594a;
                while (n0VarA.m()) {
                }
            } finally {
                w.a(context2, objC);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.f9140d + ", " + c0.d(this.f9141e) + ']';
    }
}
