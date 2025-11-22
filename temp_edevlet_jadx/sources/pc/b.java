package pc;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.internal.j;
import l9.h;
import nc.c0;
import pc.j;

/* loaded from: classes2.dex */
public abstract class b<E> implements y<E> {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f13084c = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "onCloseHandler");

    /* renamed from: a, reason: collision with root package name */
    public final x9.l<E, l9.m> f13085a;

    /* renamed from: b, reason: collision with root package name */
    public final kotlinx.coroutines.internal.i f13086b = new kotlinx.coroutines.internal.i();
    private volatile /* synthetic */ Object onCloseHandler = null;

    public static final class a<E> extends x {

        /* renamed from: d, reason: collision with root package name */
        public final E f13087d;

        public a(E e10) {
            this.f13087d = e10;
        }

        @Override // pc.x
        public final void J() {
        }

        @Override // pc.x
        public final Object K() {
            return this.f13087d;
        }

        @Override // pc.x
        public final void L(k<?> kVar) {
        }

        @Override // pc.x
        public final kotlinx.coroutines.internal.u M(j.c cVar) {
            kotlinx.coroutines.internal.u uVar = c5.w.f2087g;
            if (cVar != null) {
                cVar.d();
            }
            return uVar;
        }

        @Override // kotlinx.coroutines.internal.j
        public final String toString() {
            return "SendBuffered@" + c0.c(this) + '(' + this.f13087d + ')';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(x9.l<? super E, l9.m> lVar) {
        this.f13085a = lVar;
    }

    public static final void b(b bVar, nc.j jVar, Object obj, k kVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        h.a aVarJ;
        kotlinx.coroutines.internal.a0 a0VarE;
        bVar.getClass();
        g(kVar);
        Throwable thP = kVar.P();
        x9.l<E, l9.m> lVar = bVar.f13085a;
        if (lVar == null || (a0VarE = c5.y.e(lVar, obj, null)) == null) {
            aVarJ = c5.w.j(thP);
        } else {
            b8.f.k(a0VarE, thP);
            aVarJ = c5.w.j(a0VarE);
        }
        jVar.resumeWith(aVarJ);
    }

    public static void g(k kVar) {
        Object objG = null;
        while (true) {
            kotlinx.coroutines.internal.j jVarB = kVar.B();
            s sVar = jVarB instanceof s ? (s) jVarB : null;
            if (sVar == null) {
                break;
            } else if (sVar.F()) {
                objG = c5.v.G(objG, sVar);
            } else {
                ((kotlinx.coroutines.internal.p) sVar.z()).f9171a.C();
            }
        }
        if (objG == null) {
            return;
        }
        if (!(objG instanceof ArrayList)) {
            ((s) objG).K(kVar);
            return;
        }
        ArrayList arrayList = (ArrayList) objG;
        int size = arrayList.size() - 1;
        if (size < 0) {
            return;
        }
        while (true) {
            int r22 = size - 1;
            ((s) arrayList.get(size)).K(kVar);
            if (r22 < 0) {
                return;
            } else {
                size = r22;
            }
        }
    }

    @Override // pc.y
    public final Object A(E e10) {
        j.a aVar;
        Object objN = n(e10);
        if (objN == c5.y.f2132k) {
            return l9.m.f9594a;
        }
        if (objN == c5.y.f2133l) {
            k<?> kVarF = f();
            if (kVarF == null) {
                return j.f13100b;
            }
            g(kVarF);
            aVar = new j.a(kVarF.P());
        } else {
            if (!(objN instanceof k)) {
                throw new IllegalStateException(kotlin.jvm.internal.h.k(objN, "trySend returned ").toString());
            }
            k kVar = (k) objN;
            g(kVar);
            aVar = new j.a(kVar.P());
        }
        return aVar;
    }

    @Override // pc.y
    public final boolean C() {
        return f() != null;
    }

    @Override // pc.y
    public final void c(x9.l<? super Throwable, l9.m> lVar) {
        boolean z10;
        boolean z11;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13084c;
        while (true) {
            z10 = true;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, lVar)) {
                z11 = true;
                break;
            } else if (atomicReferenceFieldUpdater.get(this) != null) {
                z11 = false;
                break;
            }
        }
        kotlinx.coroutines.internal.u uVar = c5.y.f2136p;
        if (!z11) {
            Object obj = this.onCloseHandler;
            if (obj != uVar) {
                throw new IllegalStateException(kotlin.jvm.internal.h.k(obj, "Another handler was already registered: "));
            }
            throw new IllegalStateException("Another handler was already registered and successfully invoked");
        }
        k<?> kVarF = f();
        if (kVarF != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f13084c;
            while (true) {
                if (atomicReferenceFieldUpdater2.compareAndSet(this, lVar, uVar)) {
                    break;
                } else if (atomicReferenceFieldUpdater2.get(this) != lVar) {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                lVar.invoke(kVarF.f13103d);
            }
        }
    }

    public Object d(z zVar) {
        boolean z10;
        kotlinx.coroutines.internal.j jVarB;
        boolean zI = i();
        kotlinx.coroutines.internal.i iVar = this.f13086b;
        if (zI) {
            do {
                jVarB = iVar.B();
                if (jVarB instanceof v) {
                    return jVarB;
                }
            } while (!jVarB.u(zVar, iVar));
            return null;
        }
        c cVar = new c(zVar, this);
        while (true) {
            kotlinx.coroutines.internal.j jVarB2 = iVar.B();
            if (!(jVarB2 instanceof v)) {
                int I = jVarB2.I(zVar, iVar, cVar);
                z10 = true;
                if (I != 1) {
                    if (I == 2) {
                        z10 = false;
                        break;
                    }
                } else {
                    break;
                }
            } else {
                return jVarB2;
            }
        }
        if (z10) {
            return null;
        }
        return c5.y.f2135n;
    }

    public String e() {
        return "";
    }

    public final k<?> f() {
        kotlinx.coroutines.internal.j jVarB = this.f13086b.B();
        k<?> kVar = jVarB instanceof k ? (k) jVarB : null;
        if (kVar == null) {
            return null;
        }
        g(kVar);
        return kVar;
    }

    public abstract boolean i();

    public abstract boolean j();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // pc.y
    public final boolean m(Serializable serializable) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kotlinx.coroutines.internal.a0 a0VarE;
        try {
            Object objA = A(serializable);
            if (!(objA instanceof j.b)) {
                return true;
            }
            j.a aVar = objA instanceof j.a ? (j.a) objA : null;
            Throwable th2 = aVar == null ? null : aVar.f13102a;
            if (th2 == null) {
                return false;
            }
            int r22 = kotlinx.coroutines.internal.t.f9175a;
            throw th2;
        } catch (Throwable th3) {
            x9.l<E, l9.m> lVar = this.f13085a;
            if (lVar == null || (a0VarE = c5.y.e(lVar, serializable, null)) == null) {
                throw th3;
            }
            b8.f.k(a0VarE, th3);
            throw a0VarE;
        }
    }

    public Object n(E e10) {
        v<E> vVarO;
        do {
            vVarO = o();
            if (vVarO == null) {
                return c5.y.f2133l;
            }
        } while (vVarO.c(e10) == null);
        vVarO.s(e10);
        return vVarO.k();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.coroutines.internal.j] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public pc.v<E> o() {
        /*
            r4 = this;
            kotlinx.coroutines.internal.i r0 = r4.f13086b
        L2:
            java.lang.Object r1 = r0.z()
            kotlinx.coroutines.internal.j r1 = (kotlinx.coroutines.internal.j) r1
            r2 = 0
            if (r1 != r0) goto Ld
        Lb:
            r1 = r2
            goto L26
        Ld:
            boolean r3 = r1 instanceof pc.v
            if (r3 != 0) goto L12
            goto Lb
        L12:
            r2 = r1
            pc.v r2 = (pc.v) r2
            boolean r2 = r2 instanceof pc.k
            if (r2 == 0) goto L20
            boolean r2 = r1.E()
            if (r2 != 0) goto L20
            goto L26
        L20:
            kotlinx.coroutines.internal.j r2 = r1.G()
            if (r2 != 0) goto L29
        L26:
            pc.v r1 = (pc.v) r1
            return r1
        L29:
            r2.C()
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: pc.b.o():pc.v");
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0085, code lost:
    
        r4 = r5.m();
        r5 = q9.a.COROUTINE_SUSPENDED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008b, code lost:
    
        if (r4 != r5) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008e, code lost:
    
        r4 = l9.m.f9594a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0090, code lost:
    
        if (r4 != r5) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0092, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0095, code lost:
    
        return l9.m.f9594a;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0071 A[SYNTHETIC] */
    @Override // pc.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object p(E r4, p9.d<? super l9.m> r5) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r3 = this;
            java.lang.Object r0 = r3.n(r4)
            kotlinx.coroutines.internal.u r1 = c5.y.f2132k
            if (r0 != r1) goto Lb
            l9.m r4 = l9.m.f9594a
            return r4
        Lb:
            p9.d r5 = c5.w.x(r5)
            nc.j r5 = com.google.android.gms.internal.clearcut.d0.u(r5)
        L13:
            kotlinx.coroutines.internal.i r0 = r3.f13086b
            kotlinx.coroutines.internal.j r0 = r0.A()
            boolean r0 = r0 instanceof pc.v
            if (r0 != 0) goto L25
            boolean r0 = r3.j()
            if (r0 == 0) goto L25
            r0 = 1
            goto L26
        L25:
            r0 = 0
        L26:
            if (r0 == 0) goto L6b
            x9.l<E, l9.m> r0 = r3.f13085a
            if (r0 != 0) goto L32
            pc.z r0 = new pc.z
            r0.<init>(r4, r5)
            goto L38
        L32:
            pc.a0 r2 = new pc.a0
            r2.<init>(r4, r5, r0)
            r0 = r2
        L38:
            java.lang.Object r2 = r3.d(r0)
            if (r2 != 0) goto L47
            nc.p1 r4 = new nc.p1
            r4.<init>(r0)
            r5.D(r4)
            goto L85
        L47:
            boolean r0 = r2 instanceof pc.k
            if (r0 == 0) goto L51
            pc.k r2 = (pc.k) r2
            b(r3, r5, r4, r2)
            goto L85
        L51:
            kotlinx.coroutines.internal.u r0 = c5.y.f2135n
            if (r2 != r0) goto L56
            goto L6b
        L56:
            boolean r0 = r2 instanceof pc.s
            if (r0 == 0) goto L5b
            goto L6b
        L5b:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "enqueueSend returned "
            java.lang.String r5 = kotlin.jvm.internal.h.k(r2, r5)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L6b:
            java.lang.Object r0 = r3.n(r4)
            if (r0 != r1) goto L77
            l9.m r4 = l9.m.f9594a
            r5.resumeWith(r4)
            goto L85
        L77:
            kotlinx.coroutines.internal.u r2 = c5.y.f2133l
            if (r0 != r2) goto L7c
            goto L13
        L7c:
            boolean r1 = r0 instanceof pc.k
            if (r1 == 0) goto L96
            pc.k r0 = (pc.k) r0
            b(r3, r5, r4, r0)
        L85:
            java.lang.Object r4 = r5.m()
            q9.a r5 = q9.a.COROUTINE_SUSPENDED
            if (r4 != r5) goto L8e
            goto L90
        L8e:
            l9.m r4 = l9.m.f9594a
        L90:
            if (r4 != r5) goto L93
            return r4
        L93:
            l9.m r4 = l9.m.f9594a
            return r4
        L96:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "offerInternal returned "
            java.lang.String r5 = kotlin.jvm.internal.h.k(r0, r5)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: pc.b.p(java.lang.Object, p9.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
    
        r1 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final pc.x q() {
        /*
            r4 = this;
            kotlinx.coroutines.internal.i r0 = r4.f13086b
        L2:
            java.lang.Object r1 = r0.z()
            kotlinx.coroutines.internal.j r1 = (kotlinx.coroutines.internal.j) r1
            r2 = 0
            if (r1 != r0) goto Ld
        Lb:
            r1 = r2
            goto L26
        Ld:
            boolean r3 = r1 instanceof pc.x
            if (r3 != 0) goto L12
            goto Lb
        L12:
            r2 = r1
            pc.x r2 = (pc.x) r2
            boolean r2 = r2 instanceof pc.k
            if (r2 == 0) goto L20
            boolean r2 = r1.E()
            if (r2 != 0) goto L20
            goto L26
        L20:
            kotlinx.coroutines.internal.j r2 = r1.G()
            if (r2 != 0) goto L29
        L26:
            pc.x r1 = (pc.x) r1
            return r1
        L29:
            r2.C()
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: pc.b.q():pc.x");
    }

    @Override // pc.y
    public final boolean s(Throwable th2) {
        boolean z10;
        boolean z11;
        Object obj;
        kotlinx.coroutines.internal.u uVar;
        k kVar = new k(th2);
        kotlinx.coroutines.internal.i iVar = this.f13086b;
        while (true) {
            kotlinx.coroutines.internal.j jVarB = iVar.B();
            z10 = false;
            if (!(!(jVarB instanceof k))) {
                z11 = false;
                break;
            }
            if (jVarB.u(kVar, iVar)) {
                z11 = true;
                break;
            }
        }
        if (!z11) {
            kVar = (k) this.f13086b.B();
        }
        g(kVar);
        if (z11 && (obj = this.onCloseHandler) != null && obj != (uVar = c5.y.f2136p)) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13084c;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, uVar)) {
                    z10 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            if (z10) {
                kotlin.jvm.internal.z.c(1, obj);
                ((x9.l) obj).invoke(th2);
            }
        }
        return z11;
    }

    public final String toString() {
        String string;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append('@');
        sb2.append(c0.c(this));
        sb2.append('{');
        kotlinx.coroutines.internal.j jVar = this.f13086b;
        kotlinx.coroutines.internal.j jVarA = jVar.A();
        if (jVarA == jVar) {
            string = "EmptyQueue";
        } else {
            String string2 = jVarA instanceof k ? jVarA.toString() : jVarA instanceof s ? "ReceiveQueued" : jVarA instanceof x ? "SendQueued" : kotlin.jvm.internal.h.k(jVarA, "UNEXPECTED:");
            kotlinx.coroutines.internal.j jVarB = jVar.B();
            if (jVarB != jVarA) {
                StringBuilder sbI = androidx.browser.browseractions.b.i(string2, ",queueSize=");
                int r52 = 0;
                for (kotlinx.coroutines.internal.j jVarA2 = (kotlinx.coroutines.internal.j) jVar.z(); !kotlin.jvm.internal.h.a(jVarA2, jVar); jVarA2 = jVarA2.A()) {
                    if (jVarA2 instanceof kotlinx.coroutines.internal.j) {
                        r52++;
                    }
                }
                sbI.append(r52);
                string = sbI.toString();
                if (jVarB instanceof k) {
                    string = string + ",closedForSend=" + jVarB;
                }
            } else {
                string = string2;
            }
        }
        sb2.append(string);
        sb2.append('}');
        sb2.append(e());
        return sb2.toString();
    }
}
