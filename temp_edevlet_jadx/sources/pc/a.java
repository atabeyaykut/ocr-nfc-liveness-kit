package pc;

import com.google.android.gms.internal.clearcut.d0;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.internal.j;
import nc.c0;
import nc.k0;
import pc.j;

/* loaded from: classes2.dex */
public abstract class a<E> extends pc.b<E> implements pc.g<E> {

    /* renamed from: pc.a$a, reason: collision with other inner class name */
    public static final class C0219a<E> implements pc.i<E> {

        /* renamed from: a, reason: collision with root package name */
        public final a<E> f13068a;

        /* renamed from: b, reason: collision with root package name */
        public Object f13069b = c5.y.f2134m;

        public C0219a(a<E> aVar) {
            this.f13068a = aVar;
        }

        @Override // pc.i
        public final Object a(p9.d<? super Boolean> dVar) throws Throwable {
            Object obj = this.f13069b;
            kotlinx.coroutines.internal.u uVar = c5.y.f2134m;
            boolean z10 = false;
            if (obj != uVar) {
                if (obj instanceof k) {
                    k kVar = (k) obj;
                    if (kVar.f13103d != null) {
                        Throwable thO = kVar.O();
                        int r02 = kotlinx.coroutines.internal.t.f9175a;
                        throw thO;
                    }
                } else {
                    z10 = true;
                }
                return Boolean.valueOf(z10);
            }
            a<E> aVar = this.f13068a;
            Object objB = aVar.B();
            this.f13069b = objB;
            if (objB != uVar) {
                if (objB instanceof k) {
                    k kVar2 = (k) objB;
                    if (kVar2.f13103d != null) {
                        Throwable thO2 = kVar2.O();
                        int r03 = kotlinx.coroutines.internal.t.f9175a;
                        throw thO2;
                    }
                } else {
                    z10 = true;
                }
                return Boolean.valueOf(z10);
            }
            nc.j jVarU = d0.u(c5.w.x(dVar));
            d dVar2 = new d(this, jVarU);
            while (true) {
                if (aVar.t(dVar2)) {
                    jVarU.D(aVar.new f(dVar2));
                    break;
                }
                Object objB2 = aVar.B();
                this.f13069b = objB2;
                if (objB2 instanceof k) {
                    k kVar3 = (k) objB2;
                    jVarU.resumeWith(kVar3.f13103d == null ? Boolean.FALSE : c5.w.j(kVar3.O()));
                } else if (objB2 != uVar) {
                    Boolean bool = Boolean.TRUE;
                    x9.l<E, l9.m> lVar = aVar.f13085a;
                    jVarU.u(bool, jVarU.f10802c, lVar == null ? null : new kotlinx.coroutines.internal.n(lVar, objB2, jVarU.f10807e));
                }
            }
            return jVarU.m();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // pc.i
        public final E next() throws Throwable {
            E e10 = (E) this.f13069b;
            if (e10 instanceof k) {
                Throwable thO = ((k) e10).O();
                int r12 = kotlinx.coroutines.internal.t.f9175a;
                throw thO;
            }
            kotlinx.coroutines.internal.u uVar = c5.y.f2134m;
            if (e10 == uVar) {
                throw new IllegalStateException("'hasNext' should be called prior to 'next' invocation");
            }
            this.f13069b = uVar;
            return e10;
        }
    }

    public static class b<E> extends s<E> {

        /* renamed from: d, reason: collision with root package name */
        public final nc.i<Object> f13070d;

        /* renamed from: e, reason: collision with root package name */
        public final int f13071e = 1;

        public b(nc.j jVar) {
            this.f13070d = jVar;
        }

        @Override // pc.s
        public final void K(k<?> kVar) {
            this.f13070d.resumeWith(this.f13071e == 1 ? new pc.j(new j.a(kVar.f13103d)) : c5.w.j(kVar.O()));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // pc.v
        public final kotlinx.coroutines.internal.u c(Object obj) {
            if (this.f13070d.w(this.f13071e == 1 ? new pc.j(obj) : obj, null, J(obj)) == null) {
                return null;
            }
            return c5.w.f2087g;
        }

        @Override // pc.v
        public final void s(E e10) {
            this.f13070d.g();
        }

        @Override // kotlinx.coroutines.internal.j
        public final String toString() {
            StringBuilder sb2 = new StringBuilder("ReceiveElement@");
            sb2.append(c0.c(this));
            sb2.append("[receiveMode=");
            return androidx.constraintlayout.core.a.d(sb2, this.f13071e, ']');
        }
    }

    public static final class c<E> extends b<E> {
        public final x9.l<E, l9.m> f;

        public c(nc.j jVar, x9.l lVar) {
            super(jVar);
            this.f = lVar;
        }

        @Override // pc.s
        public final x9.l<Throwable, l9.m> J(E e10) {
            return new kotlinx.coroutines.internal.n(this.f, e10, this.f13070d.getContext());
        }
    }

    public static class d<E> extends s<E> {

        /* renamed from: d, reason: collision with root package name */
        public final C0219a<E> f13072d;

        /* renamed from: e, reason: collision with root package name */
        public final nc.i<Boolean> f13073e;

        public d(C0219a c0219a, nc.j jVar) {
            this.f13072d = c0219a;
            this.f13073e = jVar;
        }

        @Override // pc.s
        public final x9.l<Throwable, l9.m> J(E e10) {
            x9.l<E, l9.m> lVar = this.f13072d.f13068a.f13085a;
            if (lVar == null) {
                return null;
            }
            return new kotlinx.coroutines.internal.n(lVar, e10, this.f13073e.getContext());
        }

        @Override // pc.s
        public final void K(k<?> kVar) {
            Throwable th2 = kVar.f13103d;
            nc.i<Boolean> iVar = this.f13073e;
            if ((th2 == null ? iVar.d(Boolean.FALSE, null) : iVar.q(kVar.O())) != null) {
                this.f13072d.f13069b = kVar;
                iVar.g();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // pc.v
        public final kotlinx.coroutines.internal.u c(Object obj) {
            if (this.f13073e.w(Boolean.TRUE, null, J(obj)) == null) {
                return null;
            }
            return c5.w.f2087g;
        }

        @Override // pc.v
        public final void s(E e10) {
            this.f13072d.f13069b = e10;
            this.f13073e.g();
        }

        @Override // kotlinx.coroutines.internal.j
        public final String toString() {
            return kotlin.jvm.internal.h.k(c0.c(this), "ReceiveHasNext@");
        }
    }

    public static final class e<R, E> extends s<E> implements k0 {

        /* renamed from: d, reason: collision with root package name */
        public final a<E> f13074d;

        /* renamed from: e, reason: collision with root package name */
        public final kotlinx.coroutines.selects.c<R> f13075e;
        public final x9.p<Object, p9.d<? super R>, Object> f;

        /* renamed from: g, reason: collision with root package name */
        public final int f13076g;

        public e(int r12, x9.p pVar, a aVar, kotlinx.coroutines.selects.c cVar) {
            this.f13074d = aVar;
            this.f13075e = cVar;
            this.f = pVar;
            this.f13076g = r12;
        }

        @Override // pc.s
        public final x9.l<Throwable, l9.m> J(E e10) {
            x9.l<E, l9.m> lVar = this.f13074d.f13085a;
            if (lVar == null) {
                return null;
            }
            return new kotlinx.coroutines.internal.n(lVar, e10, this.f13075e.r().getContext());
        }

        @Override // pc.s
        public final void K(k<?> kVar) {
            kotlinx.coroutines.selects.c<R> cVar = this.f13075e;
            if (cVar.n()) {
                int r12 = this.f13076g;
                if (r12 == 0) {
                    cVar.t(kVar.O());
                    return;
                }
                if (r12 != 1) {
                    return;
                }
                x9.p<Object, p9.d<? super R>, Object> pVar = this.f;
                pc.j jVar = new pc.j(new j.a(kVar.f13103d));
                p9.d<R> dVarR = cVar.r();
                try {
                    a2.b.m(c5.w.x(c5.w.g(jVar, dVarR, pVar)), l9.m.f9594a, null);
                } catch (Throwable th2) {
                    dVarR.resumeWith(c5.w.j(th2));
                    throw th2;
                }
            }
        }

        @Override // pc.v
        public final kotlinx.coroutines.internal.u c(Object obj) {
            return (kotlinx.coroutines.internal.u) this.f13075e.h();
        }

        @Override // nc.k0
        public final void dispose() {
            if (F()) {
                this.f13074d.getClass();
            }
        }

        @Override // pc.v
        public final void s(E e10) {
            Object jVar = this.f13076g == 1 ? new pc.j(e10) : e10;
            p9.d<R> dVarR = this.f13075e.r();
            try {
                a2.b.m(c5.w.x(c5.w.g(jVar, dVarR, this.f)), l9.m.f9594a, J(e10));
            } catch (Throwable th2) {
                dVarR.resumeWith(c5.w.j(th2));
                throw th2;
            }
        }

        @Override // kotlinx.coroutines.internal.j
        public final String toString() {
            StringBuilder sb2 = new StringBuilder("ReceiveSelect@");
            sb2.append(c0.c(this));
            sb2.append('[');
            sb2.append(this.f13075e);
            sb2.append(",receiveMode=");
            return androidx.constraintlayout.core.a.d(sb2, this.f13076g, ']');
        }
    }

    public final class f extends nc.c {

        /* renamed from: a, reason: collision with root package name */
        public final s<?> f13077a;

        public f(s<?> sVar) {
            this.f13077a = sVar;
        }

        @Override // nc.h
        public final void a(Throwable th2) {
            if (this.f13077a.F()) {
                a.this.getClass();
            }
        }

        @Override // x9.l
        public final /* bridge */ /* synthetic */ l9.m invoke(Throwable th2) {
            a(th2);
            return l9.m.f9594a;
        }

        public final String toString() {
            return "RemoveReceiveOnCancel[" + this.f13077a + ']';
        }
    }

    public static final class g<E> extends j.d<x> {
        public g(kotlinx.coroutines.internal.i iVar) {
            super(iVar);
        }

        @Override // kotlinx.coroutines.internal.j.d, kotlinx.coroutines.internal.j.a
        public final Object c(kotlinx.coroutines.internal.j jVar) {
            if (jVar instanceof k) {
                return jVar;
            }
            if (jVar instanceof x) {
                return null;
            }
            return c5.y.f2134m;
        }

        @Override // kotlinx.coroutines.internal.j.a
        public final Object h(j.c cVar) {
            kotlinx.coroutines.internal.u uVarM = ((x) cVar.f9153a).M(cVar);
            if (uVarM == null) {
                return d0.f3067b;
            }
            kotlinx.coroutines.internal.u uVar = b8.f.f1182e;
            if (uVarM == uVar) {
                return uVar;
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.j.a
        public final void i(kotlinx.coroutines.internal.j jVar) {
            ((x) jVar).N();
        }
    }

    public static final class h extends j.b {

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ a f13079d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(kotlinx.coroutines.internal.j jVar, a aVar) {
            super(jVar);
            this.f13079d = aVar;
        }

        @Override // kotlinx.coroutines.internal.c
        public final Object i(kotlinx.coroutines.internal.j jVar) {
            if (this.f13079d.w()) {
                return null;
            }
            return b0.a.f1003b;
        }
    }

    public static final class i implements kotlinx.coroutines.selects.b<pc.j<? extends E>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ a<E> f13080a;

        public i(a<E> aVar) {
            this.f13080a = aVar;
        }

        @Override // kotlinx.coroutines.selects.b
        public final <R> void z(kotlinx.coroutines.selects.c<? super R> cVar, x9.p<? super pc.j<? extends E>, ? super p9.d<? super R>, ? extends Object> pVar) throws Throwable {
            a.r(1, pVar, this.f13080a, cVar);
        }
    }

    @r9.e(c = "kotlinx.coroutines.channels.AbstractChannel", f = "AbstractChannel.kt", l = {633}, m = "receiveCatching-JP2dKIU")
    public static final class j extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f13081a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ a<E> f13082b;

        /* renamed from: c, reason: collision with root package name */
        public int f13083c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(a<E> aVar, p9.d<? super j> dVar) {
            super(dVar);
            this.f13082b = aVar;
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            this.f13081a = obj;
            this.f13083c |= Integer.MIN_VALUE;
            Object objH = this.f13082b.h(this);
            return objH == q9.a.COROUTINE_SUSPENDED ? objH : new pc.j(objH);
        }
    }

    public a(x9.l<? super E, l9.m> lVar) {
        super(lVar);
    }

    public static final void r(int r32, x9.p pVar, a aVar, kotlinx.coroutines.selects.c cVar) throws Throwable {
        aVar.getClass();
        while (!cVar.a()) {
            if (!(aVar.f13086b.A() instanceof x) && aVar.w()) {
                e eVar = new e(r32, pVar, aVar, cVar);
                boolean zT = aVar.t(eVar);
                if (zT) {
                    cVar.m(eVar);
                }
                if (zT) {
                    return;
                }
            } else {
                Object objD = aVar.D(cVar);
                if (objD == kotlinx.coroutines.selects.d.f9235b) {
                    return;
                }
                if (objD != c5.y.f2134m && objD != b8.f.f1182e) {
                    boolean z10 = objD instanceof k;
                    if (z10) {
                        if (r32 == 0) {
                            Throwable thO = ((k) objD).O();
                            int r42 = kotlinx.coroutines.internal.t.f9175a;
                            throw thO;
                        }
                        if (r32 == 1 && cVar.n()) {
                            objD = new pc.j(new j.a(((k) objD).f13103d));
                        }
                    } else if (r32 == 1) {
                        if (z10) {
                            objD = new j.a(((k) objD).f13103d);
                        }
                        objD = new pc.j(objD);
                    }
                    d0.A(objD, cVar.r(), pVar);
                }
            }
        }
    }

    public Object B() {
        while (true) {
            x xVarQ = q();
            if (xVarQ == null) {
                return c5.y.f2134m;
            }
            if (xVarQ.M(null) != null) {
                xVarQ.J();
                return xVarQ.K();
            }
            xVarQ.N();
        }
    }

    public Object D(kotlinx.coroutines.selects.c<?> cVar) {
        g gVar = new g(this.f13086b);
        Object objE = cVar.e(gVar);
        if (objE != null) {
            return objE;
        }
        ((x) gVar.m()).J();
        return ((x) gVar.m()).K();
    }

    @Override // pc.u
    public final void a(CancellationException cancellationException) {
        if (x()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new CancellationException(kotlin.jvm.internal.h.k(" was cancelled", getClass().getSimpleName()));
        }
        y(s(cancellationException));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // pc.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(p9.d<? super pc.j<? extends E>> r7) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r7 instanceof pc.a.j
            if (r0 == 0) goto L13
            r0 = r7
            pc.a$j r0 = (pc.a.j) r0
            int r1 = r0.f13083c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f13083c = r1
            goto L18
        L13:
            pc.a$j r0 = new pc.a$j
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f13081a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f13083c
            r3 = 1
            if (r2 == 0) goto L30
            if (r2 != r3) goto L28
            c5.w.F(r7)
            goto L9e
        L28:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L30:
            c5.w.F(r7)
            java.lang.Object r7 = r6.B()
            kotlinx.coroutines.internal.u r2 = c5.y.f2134m
            if (r7 == r2) goto L4a
            boolean r0 = r7 instanceof pc.k
            if (r0 == 0) goto L49
            pc.k r7 = (pc.k) r7
            java.lang.Throwable r7 = r7.f13103d
            pc.j$a r0 = new pc.j$a
            r0.<init>(r7)
            r7 = r0
        L49:
            return r7
        L4a:
            r0.f13083c = r3
            p9.d r7 = c5.w.x(r0)
            nc.j r7 = com.google.android.gms.internal.clearcut.d0.u(r7)
            x9.l<E, l9.m> r0 = r6.f13085a
            if (r0 != 0) goto L5e
            pc.a$b r0 = new pc.a$b
            r0.<init>(r7)
            goto L64
        L5e:
            pc.a$c r4 = new pc.a$c
            r4.<init>(r7, r0)
            r0 = r4
        L64:
            boolean r4 = r6.t(r0)
            if (r4 == 0) goto L73
            pc.a$f r2 = new pc.a$f
            r2.<init>(r0)
            r7.D(r2)
            goto L97
        L73:
            java.lang.Object r4 = r6.B()
            boolean r5 = r4 instanceof pc.k
            if (r5 == 0) goto L81
            pc.k r4 = (pc.k) r4
            r0.K(r4)
            goto L97
        L81:
            if (r4 == r2) goto L64
            int r2 = r0.f13071e
            if (r2 != r3) goto L8d
            pc.j r2 = new pc.j
            r2.<init>(r4)
            goto L8e
        L8d:
            r2 = r4
        L8e:
            x9.l r0 = r0.J(r4)
            int r3 = r7.f10802c
            r7.u(r2, r3, r0)
        L97:
            java.lang.Object r7 = r7.m()
            if (r7 != r1) goto L9e
            return r1
        L9e:
            pc.j r7 = (pc.j) r7
            java.lang.Object r7 = r7.f13101a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: pc.a.h(p9.d):java.lang.Object");
    }

    @Override // pc.u
    public final pc.i<E> iterator() {
        return new C0219a(this);
    }

    @Override // pc.u
    public final kotlinx.coroutines.selects.b<pc.j<E>> k() {
        return new i(this);
    }

    @Override // pc.u
    public final kotlinx.coroutines.selects.b<E> l() {
        return new t(this);
    }

    @Override // pc.b
    public final v<E> o() {
        v<E> vVarO = super.o();
        if (vVarO != null) {
            boolean z10 = vVarO instanceof k;
        }
        return vVarO;
    }

    public boolean t(s<? super E> sVar) {
        int I;
        kotlinx.coroutines.internal.j jVarB;
        boolean zV = v();
        kotlinx.coroutines.internal.i iVar = this.f13086b;
        if (!zV) {
            h hVar = new h(sVar, this);
            do {
                kotlinx.coroutines.internal.j jVarB2 = iVar.B();
                if (!(!(jVarB2 instanceof x))) {
                    break;
                }
                I = jVarB2.I(sVar, iVar, hVar);
                if (I == 1) {
                    return true;
                }
            } while (I != 2);
        } else {
            do {
                jVarB = iVar.B();
                if (!(!(jVarB instanceof x))) {
                }
            } while (!jVarB.u(sVar, iVar));
            return true;
        }
        return false;
    }

    public abstract boolean v();

    public abstract boolean w();

    public boolean x() {
        kotlinx.coroutines.internal.j jVarA = this.f13086b.A();
        k kVar = null;
        k kVar2 = jVarA instanceof k ? (k) jVarA : null;
        if (kVar2 != null) {
            pc.b.g(kVar2);
            kVar = kVar2;
        }
        return kVar != null && w();
    }

    public void y(boolean z10) {
        k<?> kVarF = f();
        if (kVarF == null) {
            throw new IllegalStateException("Cannot happen".toString());
        }
        Object objG = null;
        while (true) {
            kotlinx.coroutines.internal.j jVarB = kVarF.B();
            if (jVarB instanceof kotlinx.coroutines.internal.i) {
                z(objG, kVarF);
                return;
            } else if (jVarB.F()) {
                objG = c5.v.G(objG, (x) jVarB);
            } else {
                ((kotlinx.coroutines.internal.p) jVarB.z()).f9171a.C();
            }
        }
    }

    public void z(Object obj, k<?> kVar) {
        if (obj == null) {
            return;
        }
        if (!(obj instanceof ArrayList)) {
            ((x) obj).L(kVar);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        int size = arrayList.size() - 1;
        if (size < 0) {
            return;
        }
        while (true) {
            int r12 = size - 1;
            ((x) arrayList.get(size)).L(kVar);
            if (r12 < 0) {
                return;
            } else {
                size = r12;
            }
        }
    }
}
