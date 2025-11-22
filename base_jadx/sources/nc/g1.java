package nc;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import nc.b1;
import p9.f;
import qc.h;

/* loaded from: classes2.dex */
public class g1 implements b1, o, o1 {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f10793a = AtomicReferenceFieldUpdater.newUpdater(g1.class, Object.class, "_state");
    private volatile /* synthetic */ Object _parentHandle;
    private volatile /* synthetic */ Object _state;

    public static final class a<T> extends j<T> {

        /* renamed from: j, reason: collision with root package name */
        public final g1 f10794j;

        public a(p9.d<? super T> dVar, g1 g1Var) {
            super(1, dVar);
            this.f10794j = g1Var;
        }

        @Override // nc.j
        public final Throwable l(g1 g1Var) {
            Throwable thC;
            Object objS = this.f10794j.S();
            return (!(objS instanceof c) || (thC = ((c) objS).c()) == null) ? objS instanceof r ? ((r) objS).f10837a : g1Var.n() : thC;
        }

        @Override // nc.j
        public final String s() {
            return "AwaitContinuation";
        }
    }

    public static final class b extends f1 {

        /* renamed from: e, reason: collision with root package name */
        public final g1 f10795e;
        public final c f;

        /* renamed from: g, reason: collision with root package name */
        public final n f10796g;

        /* renamed from: h, reason: collision with root package name */
        public final Object f10797h;

        public b(g1 g1Var, c cVar, n nVar, Object obj) {
            this.f10795e = g1Var;
            this.f = cVar;
            this.f10796g = nVar;
            this.f10797h = obj;
        }

        @Override // nc.t
        public final void J(Throwable th2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g1.f10793a;
            g1 g1Var = this.f10795e;
            g1Var.getClass();
            n nVarZ = g1.Z(this.f10796g);
            c cVar = this.f;
            Object obj = this.f10797h;
            if (nVarZ == null || !g1Var.h0(cVar, nVarZ, obj)) {
                g1Var.F(g1Var.N(cVar, obj));
            }
        }

        @Override // x9.l
        public final /* bridge */ /* synthetic */ l9.m invoke(Throwable th2) {
            J(th2);
            return l9.m.f9594a;
        }
    }

    public static final class c implements v0 {
        private volatile /* synthetic */ Object _rootCause;

        /* renamed from: a, reason: collision with root package name */
        public final l1 f10798a;
        private volatile /* synthetic */ int _isCompleting = 0;
        private volatile /* synthetic */ Object _exceptionsHolder = null;

        public c(l1 l1Var, Throwable th2) {
            this.f10798a = l1Var;
            this._rootCause = th2;
        }

        public final void a(Throwable th2) {
            Throwable th3 = (Throwable) this._rootCause;
            if (th3 == null) {
                this._rootCause = th2;
                return;
            }
            if (th2 == th3) {
                return;
            }
            Object obj = this._exceptionsHolder;
            if (obj == null) {
                this._exceptionsHolder = th2;
                return;
            }
            if (!(obj instanceof Throwable)) {
                if (!(obj instanceof ArrayList)) {
                    throw new IllegalStateException(kotlin.jvm.internal.h.k(obj, "State is ").toString());
                }
                ((ArrayList) obj).add(th2);
            } else {
                if (th2 == obj) {
                    return;
                }
                ArrayList arrayList = new ArrayList(4);
                arrayList.add(obj);
                arrayList.add(th2);
                this._exceptionsHolder = arrayList;
            }
        }

        @Override // nc.v0
        public final boolean b() {
            return ((Throwable) this._rootCause) == null;
        }

        public final Throwable c() {
            return (Throwable) this._rootCause;
        }

        public final boolean d() {
            return ((Throwable) this._rootCause) != null;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
        public final boolean e() {
            return this._isCompleting;
        }

        public final boolean f() {
            return this._exceptionsHolder == c5.e0.f1494j;
        }

        public final ArrayList g(Throwable th2) {
            ArrayList arrayList;
            Object obj = this._exceptionsHolder;
            if (obj == null) {
                arrayList = new ArrayList(4);
            } else if (obj instanceof Throwable) {
                ArrayList arrayList2 = new ArrayList(4);
                arrayList2.add(obj);
                arrayList = arrayList2;
            } else {
                if (!(obj instanceof ArrayList)) {
                    throw new IllegalStateException(kotlin.jvm.internal.h.k(obj, "State is ").toString());
                }
                arrayList = (ArrayList) obj;
            }
            Throwable th3 = (Throwable) this._rootCause;
            if (th3 != null) {
                arrayList.add(0, th3);
            }
            if (th2 != null && !kotlin.jvm.internal.h.a(th2, th3)) {
                arrayList.add(th2);
            }
            this._exceptionsHolder = c5.e0.f1494j;
            return arrayList;
        }

        public final void h() {
            this._isCompleting = 1;
        }

        @Override // nc.v0
        public final l1 p() {
            return this.f10798a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v3, types: [boolean, int] */
        public final String toString() {
            return "Finishing[cancelling=" + d() + ", completing=" + ((boolean) this._isCompleting) + ", rootCause=" + ((Throwable) this._rootCause) + ", exceptions=" + this._exceptionsHolder + ", list=" + this.f10798a + ']';
        }
    }

    public g1(boolean z10) {
        this._state = z10 ? c5.e0.f1496l : c5.e0.f1495k;
        this._parentHandle = null;
    }

    public static n Z(kotlinx.coroutines.internal.j jVar) {
        while (jVar.E()) {
            jVar = jVar.B();
        }
        while (true) {
            jVar = jVar.A();
            if (!jVar.E()) {
                if (jVar instanceof n) {
                    return (n) jVar;
                }
                if (jVar instanceof l1) {
                    return null;
                }
            }
        }
    }

    public static String f0(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (cVar.d()) {
                return "Cancelling";
            }
            if (cVar.e()) {
                return "Completing";
            }
        } else {
            if (!(obj instanceof v0)) {
                return obj instanceof r ? "Cancelled" : "Completed";
            }
            if (!((v0) obj).b()) {
                return "New";
            }
        }
        return "Active";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Throwable] */
    @Override // nc.o1
    public final CancellationException B() {
        CancellationException cancellationExceptionC;
        Object objS = S();
        if (objS instanceof c) {
            cancellationExceptionC = ((c) objS).c();
        } else if (objS instanceof r) {
            cancellationExceptionC = ((r) objS).f10837a;
        } else {
            if (objS instanceof v0) {
                throw new IllegalStateException(kotlin.jvm.internal.h.k(objS, "Cannot be cancelling child in this state: ").toString());
            }
            cancellationExceptionC = null;
        }
        CancellationException cancellationException = cancellationExceptionC instanceof CancellationException ? cancellationExceptionC : null;
        return cancellationException == null ? new c1(kotlin.jvm.internal.h.k(f0(objS), "Parent job is "), cancellationExceptionC, this) : cancellationException;
    }

    public void F(Object obj) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c2, code lost:
    
        r10 = c5.e0.f1491e;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x003f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00c2 A[EDGE_INSN: B:94:0x00c2->B:66:0x00c2 BREAK  A[LOOP:1: B:21:0x003f->B:101:0x003f], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean G(java.lang.Object r10) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: nc.g1.G(java.lang.Object):boolean");
    }

    public void H(CancellationException cancellationException) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        G(cancellationException);
    }

    public final boolean I(Throwable th2) {
        if (W()) {
            return true;
        }
        boolean z10 = th2 instanceof CancellationException;
        m mVar = (m) this._parentHandle;
        return (mVar == null || mVar == m1.f10815a) ? z10 : mVar.o(th2) || z10;
    }

    public String J() {
        return "Job was cancelled";
    }

    public boolean K(Throwable th2) {
        if (th2 instanceof CancellationException) {
            return true;
        }
        return G(th2) && O();
    }

    public final void L(v0 v0Var, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        u uVar;
        m mVar = (m) this._parentHandle;
        if (mVar != null) {
            mVar.dispose();
            this._parentHandle = m1.f10815a;
        }
        r rVar = obj instanceof r ? (r) obj : null;
        Throwable th2 = rVar == null ? null : rVar.f10837a;
        if (v0Var instanceof f1) {
            try {
                ((f1) v0Var).J(th2);
                return;
            } catch (Throwable th3) {
                U(new u("Exception in completion handler " + v0Var + " for " + this, th3));
                return;
            }
        }
        l1 l1VarP = v0Var.p();
        if (l1VarP == null) {
            return;
        }
        u uVar2 = null;
        for (kotlinx.coroutines.internal.j jVarA = (kotlinx.coroutines.internal.j) l1VarP.z(); !kotlin.jvm.internal.h.a(jVarA, l1VarP); jVarA = jVarA.A()) {
            if (jVarA instanceof f1) {
                f1 f1Var = (f1) jVarA;
                try {
                    f1Var.J(th2);
                } catch (Throwable th4) {
                    if (uVar2 == null) {
                        uVar = null;
                    } else {
                        b8.f.k(uVar2, th4);
                        uVar = uVar2;
                    }
                    if (uVar == null) {
                        uVar2 = new u("Exception in completion handler " + f1Var + " for " + this, th4);
                    }
                }
            }
        }
        if (uVar2 == null) {
            return;
        }
        U(uVar2);
    }

    public final Throwable M(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th2 = (Throwable) obj;
            return th2 == null ? new c1(J(), null, this) : th2;
        }
        if (obj != null) {
            return ((o1) obj).B();
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object N(c cVar, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Throwable c1Var = null;
        r rVar = obj instanceof r ? (r) obj : null;
        Throwable th2 = rVar == null ? null : rVar.f10837a;
        synchronized (cVar) {
            cVar.d();
            ArrayList<Throwable> arrayListG = cVar.g(th2);
            if (!arrayListG.isEmpty()) {
                Iterator it = arrayListG.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (!(((Throwable) next) instanceof CancellationException)) {
                        c1Var = next;
                        break;
                    }
                }
                c1Var = c1Var;
                if (c1Var == null) {
                    c1Var = (Throwable) arrayListG.get(0);
                }
            } else if (cVar.d()) {
                c1Var = new c1(J(), null, this);
            }
            if (c1Var != null && arrayListG.size() > 1) {
                Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(arrayListG.size()));
                for (Throwable th3 : arrayListG) {
                    if (th3 != c1Var && th3 != c1Var && !(th3 instanceof CancellationException) && setNewSetFromMap.add(th3)) {
                        b8.f.k(c1Var, th3);
                    }
                }
            }
        }
        if (c1Var != null && c1Var != th2) {
            obj = new r(false, c1Var);
        }
        if (c1Var != null) {
            if (I(c1Var) || T(c1Var)) {
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                }
                r.f10836b.compareAndSet((r) obj, 0, 1);
            }
        }
        b0(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10793a;
        Object w0Var = obj instanceof v0 ? new w0((v0) obj) : obj;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, cVar, w0Var) && atomicReferenceFieldUpdater.get(this) == cVar) {
        }
        L(cVar, obj);
        return obj;
    }

    public boolean O() {
        return true;
    }

    public boolean P() {
        return false;
    }

    public final l1 Q(v0 v0Var) {
        l1 l1VarP = v0Var.p();
        if (l1VarP != null) {
            return l1VarP;
        }
        if (v0Var instanceof m0) {
            return new l1();
        }
        if (!(v0Var instanceof f1)) {
            throw new IllegalStateException(kotlin.jvm.internal.h.k(v0Var, "State should have list: ").toString());
        }
        d0((f1) v0Var);
        return null;
    }

    public final m R() {
        return (m) this._parentHandle;
    }

    public final Object S() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof kotlinx.coroutines.internal.o)) {
                return obj;
            }
            ((kotlinx.coroutines.internal.o) obj).c(this);
        }
    }

    public boolean T(Throwable th2) {
        return false;
    }

    public void U(u uVar) {
        throw uVar;
    }

    public final void V(b1 b1Var) {
        m1 m1Var = m1.f10815a;
        if (b1Var == null) {
            this._parentHandle = m1Var;
            return;
        }
        b1Var.start();
        m mVarI = b1Var.i(this);
        this._parentHandle = mVarI;
        if (!(S() instanceof v0)) {
            mVarI.dispose();
            this._parentHandle = m1Var;
        }
    }

    public boolean W() {
        return this instanceof d;
    }

    public final Object X(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objG0;
        do {
            objG0 = g0(S(), obj);
            if (objG0 == c5.e0.f1491e) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                r rVar = obj instanceof r ? (r) obj : null;
                throw new IllegalStateException(str, rVar != null ? rVar.f10837a : null);
            }
        } while (objG0 == c5.e0.f1492g);
        return objG0;
    }

    public String Y() {
        return getClass().getSimpleName();
    }

    @Override // nc.b1
    public void a(CancellationException cancellationException) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (cancellationException == null) {
            cancellationException = new c1(J(), null, this);
        }
        H(cancellationException);
    }

    public final void a0(l1 l1Var, Throwable th2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        u uVar;
        u uVar2 = null;
        for (kotlinx.coroutines.internal.j jVarA = (kotlinx.coroutines.internal.j) l1Var.z(); !kotlin.jvm.internal.h.a(jVarA, l1Var); jVarA = jVarA.A()) {
            if (jVarA instanceof d1) {
                f1 f1Var = (f1) jVarA;
                try {
                    f1Var.J(th2);
                } catch (Throwable th3) {
                    if (uVar2 == null) {
                        uVar = null;
                    } else {
                        b8.f.k(uVar2, th3);
                        uVar = uVar2;
                    }
                    if (uVar == null) {
                        uVar2 = new u("Exception in completion handler " + f1Var + " for " + this, th3);
                    }
                }
            }
        }
        if (uVar2 != null) {
            U(uVar2);
        }
        I(th2);
    }

    @Override // nc.b1
    public boolean b() {
        Object objS = S();
        return (objS instanceof v0) && ((v0) objS).b();
    }

    public void b0(Object obj) {
    }

    public void c0() {
    }

    public final void d0(f1 f1Var) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        boolean z10;
        l1 l1Var = new l1();
        f1Var.getClass();
        kotlinx.coroutines.internal.j.f9149b.lazySet(l1Var, f1Var);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = kotlinx.coroutines.internal.j.f9148a;
        atomicReferenceFieldUpdater2.lazySet(l1Var, f1Var);
        while (true) {
            if (f1Var.z() != f1Var) {
                break;
            }
            while (true) {
                if (atomicReferenceFieldUpdater2.compareAndSet(f1Var, f1Var, l1Var)) {
                    z10 = true;
                    break;
                } else if (atomicReferenceFieldUpdater2.get(f1Var) != f1Var) {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                l1Var.y(f1Var);
                break;
            }
        }
        kotlinx.coroutines.internal.j jVarA = f1Var.A();
        do {
            atomicReferenceFieldUpdater = f10793a;
            if (atomicReferenceFieldUpdater.compareAndSet(this, f1Var, jVarA)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == f1Var);
    }

    @Override // nc.o
    public final void e(g1 g1Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        G(g1Var);
    }

    public final int e0(Object obj) {
        boolean z10 = obj instanceof m0;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10793a;
        boolean z11 = false;
        if (z10) {
            if (((m0) obj).f10814a) {
                return 0;
            }
            m0 m0Var = c5.e0.f1496l;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, m0Var)) {
                    z11 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            if (!z11) {
                return -1;
            }
            c0();
            return 1;
        }
        if (!(obj instanceof u0)) {
            return 0;
        }
        l1 l1Var = ((u0) obj).f10844a;
        while (true) {
            if (atomicReferenceFieldUpdater.compareAndSet(this, obj, l1Var)) {
                z11 = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != obj) {
                break;
            }
        }
        if (!z11) {
            return -1;
        }
        c0();
        return 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00d9  */
    /* JADX WARN: Type inference failed for: r4v6, types: [nc.u0] */
    @Override // nc.b1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final nc.k0 f(boolean r11, boolean r12, x9.l<? super java.lang.Throwable, l9.m> r13) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: nc.g1.f(boolean, boolean, x9.l):nc.k0");
    }

    @Override // p9.f
    public final <R> R fold(R r6, x9.p<? super R, ? super f.b, ? extends R> operation) {
        kotlin.jvm.internal.h.f(operation, "operation");
        return operation.mo7invoke(r6, this);
    }

    public final Object g0(Object obj, Object obj2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z10;
        kotlinx.coroutines.internal.u uVar;
        if (!(obj instanceof v0)) {
            return c5.e0.f1491e;
        }
        boolean z11 = false;
        if (((obj instanceof m0) || (obj instanceof f1)) && !(obj instanceof n) && !(obj2 instanceof r)) {
            v0 v0Var = (v0) obj;
            Object w0Var = obj2 instanceof v0 ? new w0((v0) obj2) : obj2;
            while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10793a;
                if (atomicReferenceFieldUpdater.compareAndSet(this, v0Var, w0Var)) {
                    z10 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != v0Var) {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                b0(obj2);
                L(v0Var, obj2);
                z11 = true;
            }
            return z11 ? obj2 : c5.e0.f1492g;
        }
        v0 v0Var2 = (v0) obj;
        l1 l1VarQ = Q(v0Var2);
        if (l1VarQ == null) {
            return c5.e0.f1492g;
        }
        n nVarZ = null;
        c cVar = v0Var2 instanceof c ? (c) v0Var2 : null;
        if (cVar == null) {
            cVar = new c(l1VarQ, null);
        }
        synchronized (cVar) {
            if (!cVar.e()) {
                cVar.h();
                if (cVar != v0Var2) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f10793a;
                    while (true) {
                        if (atomicReferenceFieldUpdater2.compareAndSet(this, v0Var2, cVar)) {
                            z11 = true;
                            break;
                        }
                        if (atomicReferenceFieldUpdater2.get(this) != v0Var2) {
                            break;
                        }
                    }
                    if (!z11) {
                        uVar = c5.e0.f1492g;
                    }
                }
                boolean zD = cVar.d();
                r rVar = obj2 instanceof r ? (r) obj2 : null;
                if (rVar != null) {
                    cVar.a(rVar.f10837a);
                }
                Throwable thC = cVar.c();
                if (!(!zD)) {
                    thC = null;
                }
                l9.m mVar = l9.m.f9594a;
                if (thC != null) {
                    a0(l1VarQ, thC);
                }
                n nVar = v0Var2 instanceof n ? (n) v0Var2 : null;
                if (nVar == null) {
                    l1 l1VarP = v0Var2.p();
                    if (l1VarP != null) {
                        nVarZ = Z(l1VarP);
                    }
                } else {
                    nVarZ = nVar;
                }
                return (nVarZ == null || !h0(cVar, nVarZ, obj2)) ? N(cVar, obj2) : c5.e0.f;
            }
            uVar = c5.e0.f1491e;
            return uVar;
        }
    }

    @Override // p9.f.b, p9.f
    public final <E extends f.b> E get(f.c<E> cVar) {
        return (E) f.b.a.a(this, cVar);
    }

    @Override // p9.f.b
    public final f.c<?> getKey() {
        return b1.b.f10784a;
    }

    public final boolean h0(c cVar, n nVar, Object obj) {
        while (b1.a.a(nVar.f10816e, false, new b(this, cVar, nVar, obj), 1) == m1.f10815a) {
            nVar = Z(nVar);
            if (nVar == null) {
                return false;
            }
        }
        return true;
    }

    @Override // nc.b1
    public final m i(g1 g1Var) {
        return (m) b1.a.a(this, true, new n(g1Var), 2);
    }

    @Override // nc.b1
    public final boolean isCancelled() {
        Object objS = S();
        return (objS instanceof r) || ((objS instanceof c) && ((c) objS).d());
    }

    @Override // p9.f
    public final p9.f minusKey(f.c<?> cVar) {
        return f.b.a.b(this, cVar);
    }

    @Override // nc.b1
    public final CancellationException n() {
        Object objS = S();
        if (!(objS instanceof c)) {
            if (objS instanceof v0) {
                throw new IllegalStateException(kotlin.jvm.internal.h.k(this, "Job is still new or active: ").toString());
            }
            if (!(objS instanceof r)) {
                return new c1(kotlin.jvm.internal.h.k(" has completed normally", getClass().getSimpleName()), null, this);
            }
            Throwable th2 = ((r) objS).f10837a;
            c1Var = th2 instanceof CancellationException ? (CancellationException) th2 : null;
            return c1Var == null ? new c1(J(), th2, this) : c1Var;
        }
        Throwable thC = ((c) objS).c();
        if (thC != null) {
            String strK = kotlin.jvm.internal.h.k(" is cancelling", getClass().getSimpleName());
            c1Var = thC instanceof CancellationException ? (CancellationException) thC : null;
            if (c1Var == null) {
                if (strK == null) {
                    strK = J();
                }
                c1Var = new c1(strK, thC, this);
            }
        }
        if (c1Var != null) {
            return c1Var;
        }
        throw new IllegalStateException(kotlin.jvm.internal.h.k(this, "Job is still new or active: ").toString());
    }

    @Override // nc.b1
    public final k0 o(x9.l<? super Throwable, l9.m> lVar) {
        return f(false, true, lVar);
    }

    @Override // p9.f
    public final p9.f plus(p9.f context) {
        kotlin.jvm.internal.h.f(context, "context");
        return f.a.a(this, context);
    }

    @Override // nc.b1
    public final Object r(h.a.C0226a.b bVar) {
        boolean z10;
        while (true) {
            Object objS = S();
            if (!(objS instanceof v0)) {
                z10 = false;
                break;
            }
            if (e0(objS) >= 0) {
                z10 = true;
                break;
            }
        }
        if (!z10) {
            x5.a.h(bVar.getContext());
            return l9.m.f9594a;
        }
        j jVar = new j(1, c5.w.x(bVar));
        jVar.n();
        jVar.D(new l0(o(new r1(jVar))));
        Object objM = jVar.m();
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        if (objM != aVar) {
            objM = l9.m.f9594a;
        }
        return objM == aVar ? objM : l9.m.f9594a;
    }

    @Override // nc.b1
    public final boolean start() {
        int r02;
        do {
            r02 = e0(S());
            if (r02 == 0) {
                return false;
            }
        } while (r02 != 1);
        return true;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Y() + '{' + f0(S()) + '}');
        sb2.append('@');
        sb2.append(c0.c(this));
        return sb2.toString();
    }
}
