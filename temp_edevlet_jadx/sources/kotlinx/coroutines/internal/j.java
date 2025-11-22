package kotlinx.coroutines.internal;

import com.google.android.gms.internal.clearcut.d0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import nc.c0;

/* loaded from: classes2.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9148a = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "_next");

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9149b = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "_prev");

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9150c = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "_removedRef");
    volatile /* synthetic */ Object _next = this;
    volatile /* synthetic */ Object _prev = this;
    private volatile /* synthetic */ Object _removedRef = null;

    public static abstract class a extends kotlinx.coroutines.internal.b {
        @Override // kotlinx.coroutines.internal.b
        public final void a(kotlinx.coroutines.internal.c<?> cVar, Object obj) {
            j jVarG;
            boolean z10 = false;
            boolean z11 = obj == null;
            j jVarF = f();
            if (jVarF == null || (jVarG = g()) == null) {
                return;
            }
            p pVarL = z11 ? l(jVarG) : jVarG;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j.f9148a;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(jVarF, cVar, pVarL)) {
                    z10 = true;
                    break;
                } else if (atomicReferenceFieldUpdater.get(jVarF) != cVar) {
                    break;
                }
            }
            if (z10 && z11) {
                d(jVarG);
            }
        }

        @Override // kotlinx.coroutines.internal.b
        public final Object b(kotlinx.coroutines.internal.c<?> cVar) {
            boolean z10;
            while (true) {
                j jVarK = k(cVar);
                u uVar = b8.f.f1182e;
                if (jVarK == null) {
                    return uVar;
                }
                Object obj = jVarK._next;
                if (obj == cVar || cVar.h()) {
                    return null;
                }
                if (obj instanceof o) {
                    o oVar = (o) obj;
                    if (cVar.b(oVar)) {
                        return uVar;
                    }
                    oVar.c(jVarK);
                } else {
                    Object objC = c(jVarK);
                    if (objC != null) {
                        return objC;
                    }
                    if (j(obj)) {
                        continue;
                    } else {
                        c cVar2 = new c(jVarK, (j) obj, this);
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j.f9148a;
                        while (true) {
                            if (atomicReferenceFieldUpdater.compareAndSet(jVarK, obj, cVar2)) {
                                z10 = true;
                                break;
                            }
                            if (atomicReferenceFieldUpdater.get(jVarK) != obj) {
                                z10 = false;
                                break;
                            }
                        }
                        if (z10) {
                            try {
                                if (cVar2.c(jVarK) != d0.f3067b) {
                                    return null;
                                }
                            } catch (Throwable th2) {
                                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = j.f9148a;
                                while (!atomicReferenceFieldUpdater2.compareAndSet(jVarK, cVar2, obj) && atomicReferenceFieldUpdater2.get(jVarK) == cVar2) {
                                }
                                throw th2;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        }

        public abstract Object c(j jVar);

        public abstract void d(j jVar);

        public abstract void e(c cVar);

        public abstract j f();

        public abstract j g();

        public Object h(c cVar) {
            e(cVar);
            return null;
        }

        public void i(j jVar) {
        }

        public abstract boolean j(Object obj);

        public abstract j k(o oVar);

        public abstract p l(j jVar);
    }

    public static abstract class b extends kotlinx.coroutines.internal.c<j> {

        /* renamed from: b, reason: collision with root package name */
        public final j f9151b;

        /* renamed from: c, reason: collision with root package name */
        public j f9152c;

        public b(j jVar) {
            this.f9151b = jVar;
        }

        @Override // kotlinx.coroutines.internal.c
        public final void d(j jVar, Object obj) {
            j jVar2 = jVar;
            boolean z10 = false;
            boolean z11 = obj == null;
            j jVar3 = this.f9151b;
            j jVar4 = z11 ? jVar3 : this.f9152c;
            if (jVar4 != null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j.f9148a;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(jVar2, this, jVar4)) {
                        z10 = true;
                        break;
                    } else if (atomicReferenceFieldUpdater.get(jVar2) != this) {
                        break;
                    }
                }
                if (z10 && z11) {
                    j jVar5 = this.f9152c;
                    kotlin.jvm.internal.h.c(jVar5);
                    jVar3.y(jVar5);
                }
            }
        }
    }

    public static final class c extends o {

        /* renamed from: a, reason: collision with root package name */
        public final j f9153a;

        /* renamed from: b, reason: collision with root package name */
        public final j f9154b;

        /* renamed from: c, reason: collision with root package name */
        public final a f9155c;

        public c(j jVar, j jVar2, a aVar) {
            this.f9153a = jVar;
            this.f9154b = jVar2;
            this.f9155c = aVar;
        }

        @Override // kotlinx.coroutines.internal.o
        public final kotlinx.coroutines.internal.c<?> a() {
            kotlinx.coroutines.internal.c<?> cVar = this.f9155c.f9133a;
            if (cVar != null) {
                return cVar;
            }
            kotlin.jvm.internal.h.n("atomicOp");
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.coroutines.internal.j$a] */
        /* JADX WARN: Type inference failed for: r3v0, types: [kotlinx.coroutines.internal.j] */
        /* JADX WARN: Type inference failed for: r3v1, types: [kotlinx.coroutines.internal.p] */
        @Override // kotlinx.coroutines.internal.o
        public final Object c(Object obj) {
            boolean z10;
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            }
            j jVar = (j) obj;
            ?? r02 = this.f9155c;
            Object objH = r02.h(this);
            u uVar = d0.f3067b;
            ?? r32 = this.f9154b;
            if (objH != uVar) {
                Object objE = objH != null ? a().e(objH) : a().f();
                kotlinx.coroutines.internal.c<?> cVarL = r32;
                if (objE == b8.f.f1181d) {
                    cVarL = a();
                } else if (objE == null) {
                    cVarL = r02.l(r32);
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j.f9148a;
                while (!atomicReferenceFieldUpdater.compareAndSet(jVar, this, cVarL) && atomicReferenceFieldUpdater.get(jVar) == this) {
                }
                return null;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = j.f9148a;
            p pVarH = r32.H();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = j.f9148a;
            while (true) {
                if (atomicReferenceFieldUpdater3.compareAndSet(jVar, this, pVarH)) {
                    z10 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater3.get(jVar) != this) {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                r02.i(jVar);
                r32.v();
            }
            return uVar;
        }

        public final void d() {
            this.f9155c.e(this);
        }

        @Override // kotlinx.coroutines.internal.o
        public final String toString() {
            return "PrepareOp(op=" + a() + ')';
        }
    }

    public static class d<T> extends a {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ AtomicReferenceFieldUpdater f9156c = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_affectedNode");

        /* renamed from: d, reason: collision with root package name */
        public static final /* synthetic */ AtomicReferenceFieldUpdater f9157d = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_originalNext");
        private volatile /* synthetic */ Object _affectedNode = null;
        private volatile /* synthetic */ Object _originalNext = null;

        /* renamed from: b, reason: collision with root package name */
        public final j f9158b;

        public d(i iVar) {
            this.f9158b = iVar;
        }

        @Override // kotlinx.coroutines.internal.j.a
        public Object c(j jVar) {
            if (jVar == this.f9158b) {
                return b0.a.f1004c;
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.j.a
        public final void d(j jVar) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j.f9148a;
            jVar.v();
        }

        @Override // kotlinx.coroutines.internal.j.a
        public final void e(c cVar) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2;
            j jVar = cVar.f9153a;
            do {
                atomicReferenceFieldUpdater = f9156c;
                if (atomicReferenceFieldUpdater.compareAndSet(this, null, jVar)) {
                    break;
                }
            } while (atomicReferenceFieldUpdater.get(this) == null);
            do {
                atomicReferenceFieldUpdater2 = f9157d;
                if (atomicReferenceFieldUpdater2.compareAndSet(this, null, cVar.f9154b)) {
                    return;
                }
            } while (atomicReferenceFieldUpdater2.get(this) == null);
        }

        @Override // kotlinx.coroutines.internal.j.a
        public final j f() {
            return (j) this._affectedNode;
        }

        @Override // kotlinx.coroutines.internal.j.a
        public final j g() {
            return (j) this._originalNext;
        }

        @Override // kotlinx.coroutines.internal.j.a
        public final boolean j(Object obj) {
            if (!(obj instanceof p)) {
                return false;
            }
            ((p) obj).f9171a.C();
            return true;
        }

        @Override // kotlinx.coroutines.internal.j.a
        public final j k(o oVar) {
            j jVar = this.f9158b;
            while (true) {
                Object obj = jVar._next;
                if (!(obj instanceof o)) {
                    return (j) obj;
                }
                o oVar2 = (o) obj;
                if (oVar.b(oVar2)) {
                    return null;
                }
                oVar2.c(this.f9158b);
            }
        }

        @Override // kotlinx.coroutines.internal.j.a
        public final p l(j jVar) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j.f9148a;
            return jVar.H();
        }

        public final j m() {
            j jVar = (j) this._affectedNode;
            kotlin.jvm.internal.h.c(jVar);
            return jVar;
        }
    }

    public /* synthetic */ class e extends kotlin.jvm.internal.p {
        public e(Object obj) {
            super(obj);
        }

        public final Object k() {
            return this.receiver.getClass().getSimpleName();
        }
    }

    public final j A() {
        Object objZ = z();
        p pVar = objZ instanceof p ? (p) objZ : null;
        j jVar = pVar != null ? pVar.f9171a : null;
        return jVar == null ? (j) objZ : jVar;
    }

    public final j B() {
        j jVarV = v();
        if (jVarV == null) {
            Object obj = this._prev;
            while (true) {
                jVarV = (j) obj;
                if (!jVarV.E()) {
                    break;
                }
                obj = jVarV._prev;
            }
        }
        return jVarV;
    }

    public final void C() {
        j jVar = this;
        while (true) {
            Object objZ = jVar.z();
            if (!(objZ instanceof p)) {
                jVar.v();
                return;
            }
            jVar = ((p) objZ).f9171a;
        }
    }

    public boolean E() {
        return z() instanceof p;
    }

    public boolean F() {
        return G() == null;
    }

    public final j G() {
        j jVar;
        boolean z10;
        do {
            Object objZ = z();
            if (objZ instanceof p) {
                return ((p) objZ).f9171a;
            }
            if (objZ == this) {
                return (j) objZ;
            }
            jVar = (j) objZ;
            p pVarH = jVar.H();
            while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9148a;
                if (atomicReferenceFieldUpdater.compareAndSet(this, objZ, pVarH)) {
                    z10 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != objZ) {
                    z10 = false;
                    break;
                }
            }
        } while (!z10);
        jVar.v();
        return null;
    }

    public final p H() {
        p pVar = (p) this._removedRef;
        if (pVar != null) {
            return pVar;
        }
        p pVar2 = new p(this);
        f9150c.lazySet(this, pVar2);
        return pVar2;
    }

    public final int I(j jVar, j jVar2, b bVar) {
        boolean z10;
        f9149b.lazySet(jVar, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9148a;
        atomicReferenceFieldUpdater.lazySet(jVar, jVar2);
        bVar.f9152c = jVar2;
        while (true) {
            if (atomicReferenceFieldUpdater.compareAndSet(this, jVar2, bVar)) {
                z10 = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != jVar2) {
                z10 = false;
                break;
            }
        }
        if (z10) {
            return bVar.c(this) == null ? 1 : 2;
        }
        return 0;
    }

    public String toString() {
        return new e(this) + '@' + c0.c(this);
    }

    public final boolean u(j jVar, i iVar) {
        boolean z10;
        f9149b.lazySet(jVar, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9148a;
        atomicReferenceFieldUpdater.lazySet(jVar, iVar);
        while (true) {
            if (atomicReferenceFieldUpdater.compareAndSet(this, iVar, jVar)) {
                z10 = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != iVar) {
                z10 = false;
                break;
            }
        }
        if (!z10) {
            return false;
        }
        jVar.y(iVar);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x003e, code lost:
    
        r7 = kotlinx.coroutines.internal.j.f9148a;
        r4 = ((kotlinx.coroutines.internal.p) r4).f9171a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0048, code lost:
    
        if (r7.compareAndSet(r3, r1, r4) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x004f, code lost:
    
        if (r7.get(r3) == r1) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0051, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0052, code lost:
    
        if (r5 != false) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.internal.j v() {
        /*
            r9 = this;
        L0:
            java.lang.Object r0 = r9._prev
            kotlinx.coroutines.internal.j r0 = (kotlinx.coroutines.internal.j) r0
            r1 = r0
        L5:
            r2 = 0
            r3 = r2
        L7:
            java.lang.Object r4 = r1._next
            r5 = 1
            r6 = 0
            if (r4 != r9) goto L24
            if (r0 != r1) goto L10
            return r1
        L10:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r7 = kotlinx.coroutines.internal.j.f9149b
        L12:
            boolean r2 = r7.compareAndSet(r9, r0, r1)
            if (r2 == 0) goto L19
            goto L20
        L19:
            java.lang.Object r2 = r7.get(r9)
            if (r2 == r0) goto L12
            r5 = 0
        L20:
            if (r5 != 0) goto L23
            goto L0
        L23:
            return r1
        L24:
            boolean r7 = r9.E()
            if (r7 == 0) goto L2b
            return r2
        L2b:
            if (r4 != 0) goto L2e
            return r1
        L2e:
            boolean r7 = r4 instanceof kotlinx.coroutines.internal.o
            if (r7 == 0) goto L38
            kotlinx.coroutines.internal.o r4 = (kotlinx.coroutines.internal.o) r4
            r4.c(r1)
            goto L0
        L38:
            boolean r7 = r4 instanceof kotlinx.coroutines.internal.p
            if (r7 == 0) goto L5c
            if (r3 == 0) goto L57
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r7 = kotlinx.coroutines.internal.j.f9148a
            kotlinx.coroutines.internal.p r4 = (kotlinx.coroutines.internal.p) r4
            kotlinx.coroutines.internal.j r4 = r4.f9171a
        L44:
            boolean r2 = r7.compareAndSet(r3, r1, r4)
            if (r2 == 0) goto L4b
            goto L52
        L4b:
            java.lang.Object r2 = r7.get(r3)
            if (r2 == r1) goto L44
            r5 = 0
        L52:
            if (r5 != 0) goto L55
            goto L0
        L55:
            r1 = r3
            goto L5
        L57:
            java.lang.Object r1 = r1._prev
            kotlinx.coroutines.internal.j r1 = (kotlinx.coroutines.internal.j) r1
            goto L7
        L5c:
            r3 = r4
            kotlinx.coroutines.internal.j r3 = (kotlinx.coroutines.internal.j) r3
            r8 = r3
            r3 = r1
            r1 = r8
            goto L7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.j.v():kotlinx.coroutines.internal.j");
    }

    public final void y(j jVar) {
        boolean z10;
        do {
            j jVar2 = (j) jVar._prev;
            if (z() != jVar) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9149b;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(jVar, jVar2, this)) {
                    z10 = true;
                    break;
                } else if (atomicReferenceFieldUpdater.get(jVar) != jVar2) {
                    z10 = false;
                    break;
                }
            }
        } while (!z10);
        if (E()) {
            jVar.v();
        }
    }

    public final Object z() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof o)) {
                return obj;
            }
            ((o) obj).c(this);
        }
    }
}
