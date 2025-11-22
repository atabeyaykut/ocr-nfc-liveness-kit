package kotlinx.coroutines.selects;

import c5.v;
import c5.w;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.h;
import kotlinx.coroutines.internal.i;
import kotlinx.coroutines.internal.j;
import kotlinx.coroutines.internal.o;
import kotlinx.coroutines.internal.u;
import l9.h;
import l9.m;
import nc.b1;
import nc.d1;
import nc.k0;
import nc.r;
import p9.f;
import pc.a;

/* loaded from: classes2.dex */
public final class a<R> extends i implements kotlinx.coroutines.selects.c<R>, p9.d<R>, r9.d {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9227e = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_state");
    public static final /* synthetic */ AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_result");

    /* renamed from: d, reason: collision with root package name */
    public final p9.d<R> f9228d;
    volatile /* synthetic */ Object _state = d.f9234a;
    private volatile /* synthetic */ Object _result = d.f9236c;
    private volatile /* synthetic */ Object _parentHandle = null;

    /* renamed from: kotlinx.coroutines.selects.a$a, reason: collision with other inner class name */
    public static final class C0174a extends kotlinx.coroutines.internal.c<Object> {

        /* renamed from: b, reason: collision with root package name */
        public final a<?> f9229b;

        /* renamed from: c, reason: collision with root package name */
        public final kotlinx.coroutines.internal.b f9230c;

        /* renamed from: d, reason: collision with root package name */
        public final long f9231d;

        public C0174a(a aVar, a.g gVar) {
            this.f9229b = aVar;
            this.f9230c = gVar;
            e eVar = d.f9238e;
            eVar.getClass();
            this.f9231d = e.f9239a.incrementAndGet(eVar);
            gVar.f9133a = this;
        }

        @Override // kotlinx.coroutines.internal.c
        public final void d(Object obj, Object obj2) {
            a<?> aVar;
            boolean z10 = true;
            boolean z11 = obj2 == null;
            u uVar = z11 ? null : d.f9234a;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a.f9227e;
            while (true) {
                aVar = this.f9229b;
                if (atomicReferenceFieldUpdater.compareAndSet(aVar, this, uVar)) {
                    break;
                } else if (atomicReferenceFieldUpdater.get(aVar) != this) {
                    z10 = false;
                    break;
                }
            }
            if (z10 && z11) {
                aVar.J();
            }
            this.f9230c.a(this, obj2);
        }

        @Override // kotlinx.coroutines.internal.c
        public final long g() {
            return this.f9231d;
        }

        @Override // kotlinx.coroutines.internal.c
        public final Object i(Object obj) {
            a<?> aVar;
            u uVar;
            boolean z10;
            if (obj == null) {
                a<?> aVar2 = this.f9229b;
                while (true) {
                    Object obj2 = aVar2._state;
                    if (obj2 == this) {
                        break;
                    }
                    if (!(obj2 instanceof o)) {
                        u uVar2 = d.f9234a;
                        if (obj2 != uVar2) {
                            uVar = d.f9235b;
                            break;
                        }
                        a<?> aVar3 = this.f9229b;
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a.f9227e;
                        while (true) {
                            if (atomicReferenceFieldUpdater.compareAndSet(aVar3, uVar2, this)) {
                                z10 = true;
                                break;
                            }
                            if (atomicReferenceFieldUpdater.get(aVar3) != uVar2) {
                                z10 = false;
                                break;
                            }
                        }
                        if (z10) {
                            break;
                        }
                    } else {
                        ((o) obj2).c(this.f9229b);
                    }
                }
                uVar = null;
                if (uVar != null) {
                    return uVar;
                }
            }
            try {
                return this.f9230c.b(this);
            } catch (Throwable th2) {
                if (obj == null) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = a.f9227e;
                    u uVar3 = d.f9234a;
                    do {
                        aVar = this.f9229b;
                        if (atomicReferenceFieldUpdater2.compareAndSet(aVar, this, uVar3)) {
                            break;
                        }
                    } while (atomicReferenceFieldUpdater2.get(aVar) == this);
                }
                throw th2;
            }
        }

        @Override // kotlinx.coroutines.internal.o
        public final String toString() {
            return "AtomicSelectOp(sequence=" + this.f9231d + ')';
        }
    }

    public static final class b extends j {

        /* renamed from: d, reason: collision with root package name */
        public final k0 f9232d;

        public b(k0 k0Var) {
            this.f9232d = k0Var;
        }
    }

    public final class c extends d1 {
        public c() {
        }

        @Override // nc.t
        public final void J(Throwable th2) {
            a<R> aVar = a.this;
            if (aVar.n()) {
                aVar.t(K().n());
            }
        }

        @Override // x9.l
        public final /* bridge */ /* synthetic */ m invoke(Throwable th2) {
            J(th2);
            return m.f9594a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(p9.d<? super R> dVar) {
        this.f9228d = dVar;
    }

    public final void J() {
        k0 k0Var = (k0) this._parentHandle;
        if (k0Var != null) {
            k0Var.dispose();
        }
        for (j jVarA = (j) z(); !h.a(jVarA, this); jVarA = jVarA.A()) {
            if (jVarA instanceof b) {
                ((b) jVarA).f9232d.dispose();
            }
        }
    }

    public final Object K() throws Throwable {
        b1 b1Var;
        boolean z10 = true;
        if (!a() && (b1Var = (b1) getContext().get(b1.b.f10784a)) != null) {
            k0 k0VarA = b1.a.a(b1Var, true, new c(), 2);
            this._parentHandle = k0VarA;
            if (a()) {
                k0VarA.dispose();
            }
        }
        Object obj = this._result;
        u uVar = d.f9236c;
        if (obj == uVar) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, aVar)) {
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != uVar) {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                return aVar;
            }
            obj = this._result;
        }
        if (obj == d.f9237d) {
            throw new IllegalStateException("Already resumed");
        }
        if (obj instanceof r) {
            throw ((r) obj).f10837a;
        }
        return obj;
    }

    public final void L(Throwable th2) throws Throwable {
        if (n()) {
            resumeWith(w.j(th2));
            return;
        }
        if (th2 instanceof CancellationException) {
            return;
        }
        Object objK = K();
        if ((objK instanceof r) && ((r) objK).f10837a == th2) {
            return;
        }
        v.u(getContext(), th2);
    }

    @Override // kotlinx.coroutines.selects.c
    public final boolean a() {
        while (true) {
            Object obj = this._state;
            if (obj == d.f9234a) {
                return false;
            }
            if (!(obj instanceof o)) {
                return true;
            }
            ((o) obj).c(this);
        }
    }

    @Override // kotlinx.coroutines.selects.c
    public final Object e(a.g gVar) {
        return new C0174a(this, gVar).c(null);
    }

    @Override // r9.d
    public final r9.d getCallerFrame() {
        p9.d<R> dVar = this.f9228d;
        if (dVar instanceof r9.d) {
            return (r9.d) dVar;
        }
        return null;
    }

    @Override // p9.d
    public final f getContext() {
        return this.f9228d.getContext();
    }

    @Override // kotlinx.coroutines.selects.c
    public final Object h() {
        boolean z10;
        while (true) {
            Object obj = this._state;
            u uVar = d.f9234a;
            u uVar2 = w.f2087g;
            if (obj == uVar) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9227e;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, null)) {
                        z10 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != uVar) {
                        z10 = false;
                        break;
                    }
                }
                if (z10) {
                    J();
                    return uVar2;
                }
            } else {
                if (!(obj instanceof o)) {
                    return null;
                }
                ((o) obj).c(this);
            }
        }
    }

    @Override // kotlinx.coroutines.selects.c
    public final void m(k0 k0Var) {
        b bVar = new b(k0Var);
        if (!a()) {
            while (!B().u(bVar, this)) {
            }
            if (!a()) {
                return;
            }
        }
        k0Var.dispose();
    }

    @Override // kotlinx.coroutines.selects.c
    public final boolean n() {
        Object objH = h();
        if (objH == w.f2087g) {
            return true;
        }
        if (objH == null) {
            return false;
        }
        throw new IllegalStateException(h.k(objH, "Unexpected trySelectIdempotent result ").toString());
    }

    @Override // kotlinx.coroutines.selects.c
    public final p9.d<R> r() {
        return this;
    }

    @Override // p9.d
    public final void resumeWith(Object obj) {
        p9.d<R> dVar;
        while (true) {
            Object obj2 = this._result;
            u uVar = d.f9236c;
            boolean z10 = true;
            if (obj2 == uVar) {
                Throwable thA = l9.h.a(obj);
                Object rVar = thA == null ? obj : new r(false, thA);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, rVar)) {
                        break;
                    } else if (atomicReferenceFieldUpdater.get(this) != uVar) {
                        z10 = false;
                        break;
                    }
                }
                if (z10) {
                    return;
                }
            } else {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                if (obj2 != aVar) {
                    throw new IllegalStateException("Already resumed");
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f;
                u uVar2 = d.f9237d;
                while (true) {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, aVar, uVar2)) {
                        break;
                    } else if (atomicReferenceFieldUpdater2.get(this) != aVar) {
                        z10 = false;
                        break;
                    }
                }
                if (z10) {
                    if (obj instanceof h.a) {
                        dVar = this.f9228d;
                        Throwable thA2 = l9.h.a(obj);
                        kotlin.jvm.internal.h.c(thA2);
                        obj = w.j(thA2);
                    } else {
                        dVar = this.f9228d;
                    }
                    dVar.resumeWith(obj);
                    return;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.selects.c
    public final void t(Throwable th2) {
        while (true) {
            Object obj = this._result;
            u uVar = d.f9236c;
            boolean z10 = false;
            if (obj == uVar) {
                r rVar = new r(false, th2);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, rVar)) {
                        z10 = true;
                        break;
                    } else if (atomicReferenceFieldUpdater.get(this) != uVar) {
                        break;
                    }
                }
                if (z10) {
                    return;
                }
            } else {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                if (obj != aVar) {
                    throw new IllegalStateException("Already resumed");
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f;
                u uVar2 = d.f9237d;
                while (true) {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, aVar, uVar2)) {
                        z10 = true;
                        break;
                    } else if (atomicReferenceFieldUpdater2.get(this) != aVar) {
                        break;
                    }
                }
                if (z10) {
                    w.x(this.f9228d).resumeWith(w.j(th2));
                    return;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.internal.j
    public final String toString() {
        return "SelectInstance(state=" + this._state + ", result=" + this._result + ')';
    }
}
