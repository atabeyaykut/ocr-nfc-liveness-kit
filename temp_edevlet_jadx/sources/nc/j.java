package nc;

import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.internal.j;
import nc.b1;

/* loaded from: classes2.dex */
public class j<T> extends i0<T> implements i<T>, r9.d {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f10804g = AtomicIntegerFieldUpdater.newUpdater(j.class, "_decision");

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f10805h = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "_state");
    private volatile /* synthetic */ int _decision;
    private volatile /* synthetic */ Object _state;

    /* renamed from: d, reason: collision with root package name */
    public final p9.d<T> f10806d;

    /* renamed from: e, reason: collision with root package name */
    public final p9.f f10807e;
    public k0 f;

    public j(int r12, p9.d dVar) {
        super(r12);
        this.f10806d = dVar;
        this.f10807e = dVar.getContext();
        this._decision = 0;
        this._state = b.f10782a;
    }

    public static void r(x9.l lVar, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + lVar + ", already has " + obj).toString());
    }

    public static Object v(n1 n1Var, Object obj, int r92, x9.l lVar, Object obj2) {
        if (obj instanceof r) {
            return obj;
        }
        boolean z10 = true;
        if (r92 != 1 && r92 != 2) {
            z10 = false;
        }
        if (!z10 && obj2 == null) {
            return obj;
        }
        if (lVar != null || (((n1Var instanceof g) && !(n1Var instanceof c)) || obj2 != null)) {
            return new q(obj, n1Var instanceof g ? (g) n1Var : null, lVar, obj2, null, 16);
        }
        return obj;
    }

    @Override // nc.i
    public final void D(x9.l<? super Throwable, l9.m> lVar) {
        g y0Var = lVar instanceof g ? (g) lVar : new y0(lVar);
        while (true) {
            Object obj = this._state;
            boolean z10 = false;
            if (obj instanceof b) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10805h;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, y0Var)) {
                        z10 = true;
                        break;
                    } else if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                if (z10) {
                    return;
                }
            } else {
                if (obj instanceof g) {
                    r(lVar, obj);
                    throw null;
                }
                boolean z11 = obj instanceof r;
                if (z11) {
                    r rVar = (r) obj;
                    rVar.getClass();
                    if (!r.f10836b.compareAndSet(rVar, 0, 1)) {
                        r(lVar, obj);
                        throw null;
                    }
                    if (obj instanceof k) {
                        if (!z11) {
                            rVar = null;
                        }
                        try {
                            lVar.invoke(rVar != null ? rVar.f10837a : null);
                            return;
                        } catch (Throwable th2) {
                            c5.v.u(this.f10807e, new u(kotlin.jvm.internal.h.k(this, "Exception in invokeOnCancellation handler for "), th2));
                            return;
                        }
                    }
                    return;
                }
                if (obj instanceof q) {
                    q qVar = (q) obj;
                    if (qVar.f10830b != null) {
                        r(lVar, obj);
                        throw null;
                    }
                    if (y0Var instanceof c) {
                        return;
                    }
                    Throwable th3 = qVar.f10833e;
                    if (th3 != null) {
                        try {
                            lVar.invoke(th3);
                            return;
                        } catch (Throwable th4) {
                            c5.v.u(this.f10807e, new u(kotlin.jvm.internal.h.k(this, "Exception in invokeOnCancellation handler for "), th4));
                            return;
                        }
                    }
                    q qVarA = q.a(qVar, y0Var, null, 29);
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f10805h;
                    while (true) {
                        if (atomicReferenceFieldUpdater2.compareAndSet(this, obj, qVarA)) {
                            z10 = true;
                            break;
                        } else if (atomicReferenceFieldUpdater2.get(this) != obj) {
                            break;
                        }
                    }
                    if (z10) {
                        return;
                    }
                } else {
                    if (y0Var instanceof c) {
                        return;
                    }
                    q qVar2 = new q(obj, y0Var, null, null, null, 28);
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = f10805h;
                    while (true) {
                        if (atomicReferenceFieldUpdater3.compareAndSet(this, obj, qVar2)) {
                            z10 = true;
                            break;
                        } else if (atomicReferenceFieldUpdater3.get(this) != obj) {
                            break;
                        }
                    }
                    if (z10) {
                        return;
                    }
                }
            }
        }
    }

    @Override // nc.i0
    public final void a(Object obj, CancellationException cancellationException) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof n1) {
                throw new IllegalStateException("Not completed".toString());
            }
            if (obj2 instanceof r) {
                return;
            }
            boolean z10 = false;
            if (obj2 instanceof q) {
                q qVar = (q) obj2;
                if (!(!(qVar.f10833e != null))) {
                    throw new IllegalStateException("Must be called at most once".toString());
                }
                q qVarA = q.a(qVar, null, cancellationException, 15);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10805h;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, qVarA)) {
                        z10 = true;
                        break;
                    } else if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                if (z10) {
                    g gVar = qVar.f10830b;
                    if (gVar != null) {
                        try {
                            gVar.a(cancellationException);
                        } catch (Throwable th2) {
                            c5.v.u(this.f10807e, new u(kotlin.jvm.internal.h.k(this, "Exception in invokeOnCancellation handler for "), th2));
                        }
                    }
                    x9.l<Throwable, l9.m> lVar = qVar.f10831c;
                    if (lVar == null) {
                        return;
                    }
                    try {
                        lVar.invoke(cancellationException);
                        return;
                    } catch (Throwable th3) {
                        c5.v.u(this.f10807e, new u(kotlin.jvm.internal.h.k(this, "Exception in resume onCancellation handler for "), th3));
                        return;
                    }
                }
            } else {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f10805h;
                q qVar2 = new q(obj2, null, null, null, cancellationException, 14);
                while (true) {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, obj2, qVar2)) {
                        z10 = true;
                        break;
                    } else if (atomicReferenceFieldUpdater2.get(this) != obj2) {
                        break;
                    }
                }
                if (z10) {
                    return;
                }
            }
        }
    }

    @Override // nc.i0
    public final p9.d<T> b() {
        return this.f10806d;
    }

    @Override // nc.i0
    public final Throwable c(Object obj) {
        Throwable thC = super.c(obj);
        if (thC == null) {
            return null;
        }
        return thC;
    }

    @Override // nc.i
    public final kotlinx.coroutines.internal.u d(Object obj, Object obj2) {
        return y(obj, obj2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // nc.i0
    public final <T> T e(Object obj) {
        return obj instanceof q ? (T) ((q) obj).f10829a : obj;
    }

    @Override // nc.i
    public final void g() {
        k(this.f10802c);
    }

    @Override // r9.d
    public final r9.d getCallerFrame() {
        p9.d<T> dVar = this.f10806d;
        if (dVar instanceof r9.d) {
            return (r9.d) dVar;
        }
        return null;
    }

    @Override // p9.d
    public final p9.f getContext() {
        return this.f10807e;
    }

    @Override // nc.i0
    public final Object h() {
        return this._state;
    }

    public final void i() {
        k0 k0Var = this.f;
        if (k0Var == null) {
            return;
        }
        k0Var.dispose();
        this.f = m1.f10815a;
    }

    @Override // nc.i
    public final void j(y yVar, l9.m mVar) {
        p9.d<T> dVar = this.f10806d;
        kotlinx.coroutines.internal.g gVar = dVar instanceof kotlinx.coroutines.internal.g ? (kotlinx.coroutines.internal.g) dVar : null;
        u(mVar, (gVar == null ? null : gVar.f9140d) == yVar ? 4 : this.f10802c, null);
    }

    /* JADX WARN: Finally extract failed */
    public final void k(int r72) {
        boolean z10;
        while (true) {
            int r02 = this._decision;
            if (r02 != 0) {
                if (r02 != 1) {
                    throw new IllegalStateException("Already resumed".toString());
                }
                z10 = false;
            } else if (f10804g.compareAndSet(this, 0, 2)) {
                z10 = true;
                break;
            }
        }
        if (z10) {
            return;
        }
        p9.d<T> dVar = this.f10806d;
        boolean z11 = r72 == 4;
        if (!z11 && (dVar instanceof kotlinx.coroutines.internal.g)) {
            boolean z12 = r72 == 1 || r72 == 2;
            int r52 = this.f10802c;
            if (z12 == (r52 == 1 || r52 == 2)) {
                y yVar = ((kotlinx.coroutines.internal.g) dVar).f9140d;
                p9.f context = dVar.getContext();
                if (yVar.isDispatchNeeded(context)) {
                    yVar.dispatch(context, this);
                    return;
                }
                n0 n0VarA = w1.a();
                if (n0VarA.k()) {
                    n0VarA.g(this);
                    return;
                }
                n0VarA.j(true);
                try {
                    x5.a.q(this, this.f10806d, true);
                    do {
                    } while (n0VarA.m());
                } catch (Throwable th2) {
                    try {
                        f(th2, null);
                    } finally {
                        n0VarA.d(true);
                    }
                }
                return;
            }
        }
        x5.a.q(this, dVar, z11);
    }

    public Throwable l(g1 g1Var) {
        return g1Var.n();
    }

    public final Object m() {
        boolean z10;
        b1 b1Var;
        Throwable thN;
        boolean zP = p();
        while (true) {
            int r12 = this._decision;
            if (r12 != 0) {
                if (r12 != 2) {
                    throw new IllegalStateException("Already suspended".toString());
                }
                z10 = false;
            } else if (f10804g.compareAndSet(this, 0, 1)) {
                z10 = true;
                break;
            }
        }
        if (z10) {
            if (this.f == null) {
                o();
            }
            if (zP) {
                p9.d<T> dVar = this.f10806d;
                kotlinx.coroutines.internal.g gVar = dVar instanceof kotlinx.coroutines.internal.g ? (kotlinx.coroutines.internal.g) dVar : null;
                thN = gVar != null ? gVar.n(this) : null;
                if (thN != null) {
                    i();
                    x(thN);
                }
            }
            return q9.a.COROUTINE_SUSPENDED;
        }
        if (zP) {
            p9.d<T> dVar2 = this.f10806d;
            kotlinx.coroutines.internal.g gVar2 = dVar2 instanceof kotlinx.coroutines.internal.g ? (kotlinx.coroutines.internal.g) dVar2 : null;
            thN = gVar2 != null ? gVar2.n(this) : null;
            if (thN != null) {
                i();
                x(thN);
            }
        }
        Object obj = this._state;
        if (obj instanceof r) {
            throw ((r) obj).f10837a;
        }
        int r13 = this.f10802c;
        if (!(r13 == 1 || r13 == 2) || (b1Var = (b1) this.f10807e.get(b1.b.f10784a)) == null || b1Var.b()) {
            return e(obj);
        }
        CancellationException cancellationExceptionN = b1Var.n();
        a(obj, cancellationExceptionN);
        throw cancellationExceptionN;
    }

    public final void n() {
        k0 k0VarO = o();
        if (k0VarO != null && (!(this._state instanceof n1))) {
            k0VarO.dispose();
            this.f = m1.f10815a;
        }
    }

    public final k0 o() {
        b1 b1Var = (b1) this.f10807e.get(b1.b.f10784a);
        if (b1Var == null) {
            return null;
        }
        k0 k0VarA = b1.a.a(b1Var, true, new l(this), 2);
        this.f = k0VarA;
        return k0VarA;
    }

    public final boolean p() {
        return (this.f10802c == 2) && ((kotlinx.coroutines.internal.g) this.f10806d).k();
    }

    @Override // nc.i
    public final kotlinx.coroutines.internal.u q(Throwable th2) {
        return y(new r(false, th2), null, null);
    }

    @Override // p9.d
    public final void resumeWith(Object obj) {
        Throwable thA = l9.h.a(obj);
        if (thA != null) {
            obj = new r(false, thA);
        }
        u(obj, this.f10802c, null);
    }

    public String s() {
        return "CancellableContinuation";
    }

    public final boolean t() {
        Object obj = this._state;
        if ((obj instanceof q) && ((q) obj).f10832d != null) {
            i();
            return false;
        }
        this._decision = 0;
        this._state = b.f10782a;
        return true;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(s());
        sb2.append('(');
        sb2.append(c0.d(this.f10806d));
        sb2.append("){");
        Object obj = this._state;
        sb2.append(obj instanceof n1 ? "Active" : obj instanceof k ? "Cancelled" : "Completed");
        sb2.append("}@");
        sb2.append(c0.c(this));
        return sb2.toString();
    }

    public final void u(Object obj, int r82, x9.l<? super Throwable, l9.m> lVar) {
        boolean z10;
        do {
            Object obj2 = this._state;
            z10 = true;
            if (!(obj2 instanceof n1)) {
                if (obj2 instanceof k) {
                    k kVar = (k) obj2;
                    kVar.getClass();
                    if (k.f10811c.compareAndSet(kVar, 0, 1)) {
                        if (lVar == null) {
                            return;
                        }
                        try {
                            lVar.invoke(kVar.f10837a);
                            return;
                        } catch (Throwable th2) {
                            c5.v.u(this.f10807e, new u(kotlin.jvm.internal.h.k(this, "Exception in resume onCancellation handler for "), th2));
                            return;
                        }
                    }
                }
                throw new IllegalStateException(kotlin.jvm.internal.h.k(obj, "Already resumed, but proposed with update ").toString());
            }
            Object objV = v((n1) obj2, obj, r82, lVar, null);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10805h;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, objV)) {
                    break;
                } else if (atomicReferenceFieldUpdater.get(this) != obj2) {
                    z10 = false;
                    break;
                }
            }
        } while (!z10);
        if (!p()) {
            i();
        }
        k(r82);
    }

    @Override // nc.i
    public final kotlinx.coroutines.internal.u w(Object obj, j.a aVar, x9.l lVar) {
        return y(obj, aVar, lVar);
    }

    @Override // nc.i
    public final boolean x(Throwable th2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object obj;
        boolean z10;
        boolean z11;
        do {
            obj = this._state;
            z10 = false;
            if (!(obj instanceof n1)) {
                return false;
            }
            z11 = obj instanceof g;
            k kVar = new k(this, th2, z11);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10805h;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, kVar)) {
                    z10 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
        } while (!z10);
        g gVar = z11 ? (g) obj : null;
        if (gVar != null) {
            try {
                gVar.a(th2);
            } catch (Throwable th3) {
                c5.v.u(this.f10807e, new u(kotlin.jvm.internal.h.k(this, "Exception in invokeOnCancellation handler for "), th3));
            }
        }
        if (!p()) {
            i();
        }
        k(this.f10802c);
        return true;
    }

    public final kotlinx.coroutines.internal.u y(Object obj, Object obj2, x9.l<? super Throwable, l9.m> lVar) {
        kotlinx.coroutines.internal.u uVar;
        boolean z10;
        do {
            Object obj3 = this._state;
            boolean z11 = obj3 instanceof n1;
            uVar = c5.w.f2087g;
            if (!z11) {
                if (!(obj3 instanceof q)) {
                    return null;
                }
                if (obj2 == null || ((q) obj3).f10832d != obj2) {
                    return null;
                }
                return uVar;
            }
            Object objV = v((n1) obj3, obj, this.f10802c, lVar, obj2);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10805h;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj3, objV)) {
                    z10 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != obj3) {
                    z10 = false;
                    break;
                }
            }
        } while (!z10);
        if (!p()) {
            i();
        }
        return uVar;
    }
}
