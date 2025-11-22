package pc;

import java.util.Arrays;
import java.util.concurrent.locks.ReentrantLock;
import pc.a;

/* loaded from: classes2.dex */
public final class d<E> extends a<E> {

    /* renamed from: d, reason: collision with root package name */
    public final int f13089d;

    /* renamed from: e, reason: collision with root package name */
    public final f f13090e;
    public final ReentrantLock f;

    /* renamed from: g, reason: collision with root package name */
    public Object[] f13091g;

    /* renamed from: h, reason: collision with root package name */
    public int f13092h;
    private volatile /* synthetic */ int size;

    public d(int r12, f fVar, x9.l<? super E, l9.m> lVar) {
        super(lVar);
        this.f13089d = r12;
        this.f13090e = fVar;
        if (!(r12 >= 1)) {
            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("ArrayChannel capacity must be at least 1, but ", r12, " was specified").toString());
        }
        this.f = new ReentrantLock();
        Object[] objArr = new Object[Math.min(r12, 8)];
        m9.i.m0(objArr, c5.y.f2131j);
        this.f13091g = objArr;
        this.size = 0;
    }

    @Override // pc.a
    public final Object B() {
        Object objK;
        ReentrantLock reentrantLock = this.f;
        reentrantLock.lock();
        try {
            int r12 = this.size;
            Object obj = c5.y.f2134m;
            if (r12 == 0) {
                k<?> kVarF = f();
                if (kVarF != null) {
                    obj = kVarF;
                }
                return obj;
            }
            Object[] objArr = this.f13091g;
            int r42 = this.f13092h;
            Object obj2 = objArr[r42];
            x xVar = null;
            objArr[r42] = null;
            this.size = r12 - 1;
            boolean z10 = false;
            if (r12 == this.f13089d) {
                x xVar2 = null;
                while (true) {
                    x xVarQ = q();
                    if (xVarQ == null) {
                        xVar = xVar2;
                        break;
                    }
                    if (xVarQ.M(null) != null) {
                        objK = xVarQ.K();
                        xVar = xVarQ;
                        z10 = true;
                        break;
                    }
                    xVarQ.N();
                    xVar2 = xVarQ;
                }
            } else {
                objK = obj;
            }
            if (objK != obj && !(objK instanceof k)) {
                this.size = r12;
                Object[] objArr2 = this.f13091g;
                objArr2[(this.f13092h + r12) % objArr2.length] = objK;
            }
            this.f13092h = (this.f13092h + 1) % this.f13091g.length;
            l9.m mVar = l9.m.f9594a;
            if (z10) {
                kotlin.jvm.internal.h.c(xVar);
                xVar.J();
            }
            return obj2;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // pc.a
    public final Object D(kotlinx.coroutines.selects.c<?> cVar) {
        boolean z10;
        Object objE;
        ReentrantLock reentrantLock = this.f;
        reentrantLock.lock();
        try {
            int r12 = this.size;
            Object obj = c5.y.f2134m;
            if (r12 == 0) {
                k<?> kVarF = f();
                if (kVarF != null) {
                    obj = kVarF;
                }
                return obj;
            }
            Object[] objArr = this.f13091g;
            int r42 = this.f13092h;
            Object obj2 = objArr[r42];
            Object obj3 = null;
            objArr[r42] = null;
            this.size = r12 - 1;
            if (r12 == this.f13089d) {
                while (true) {
                    a.g gVar = new a.g(this.f13086b);
                    objE = cVar.e(gVar);
                    if (objE == null) {
                        kotlinx.coroutines.internal.j jVarM = gVar.m();
                        objE = ((x) jVarM).K();
                        obj3 = jVarM;
                        break;
                    }
                    if (objE == obj) {
                        break;
                    }
                    if (objE != b8.f.f1182e) {
                        if (objE == kotlinx.coroutines.selects.d.f9235b) {
                            this.size = r12;
                            this.f13091g[this.f13092h] = obj2;
                            return objE;
                        }
                        if (!(objE instanceof k)) {
                            throw new IllegalStateException(kotlin.jvm.internal.h.k(objE, "performAtomicTrySelect(describeTryOffer) returned ").toString());
                        }
                        obj3 = objE;
                    }
                }
                z10 = true;
            } else {
                z10 = false;
                objE = obj;
            }
            if (objE != obj && !(objE instanceof k)) {
                this.size = r12;
                Object[] objArr2 = this.f13091g;
                objArr2[(this.f13092h + r12) % objArr2.length] = objE;
            } else if (!cVar.n()) {
                this.size = r12;
                this.f13091g[this.f13092h] = obj2;
                return kotlinx.coroutines.selects.d.f9235b;
            }
            this.f13092h = (this.f13092h + 1) % this.f13091g.length;
            l9.m mVar = l9.m.f9594a;
            if (z10) {
                kotlin.jvm.internal.h.c(obj3);
                ((x) obj3).J();
            }
            return obj2;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void E(int r92, E e10) {
        int r02 = this.f13089d;
        if (r92 >= r02) {
            Object[] objArr = this.f13091g;
            int r12 = this.f13092h;
            objArr[r12 % objArr.length] = null;
            objArr[(r92 + r12) % objArr.length] = e10;
            this.f13092h = (r12 + 1) % objArr.length;
            return;
        }
        Object[] objArr2 = this.f13091g;
        if (r92 >= objArr2.length) {
            int r03 = Math.min(objArr2.length * 2, r02);
            Object[] objArr3 = new Object[r03];
            for (int r32 = 0; r32 < r92; r32++) {
                Object[] objArr4 = this.f13091g;
                objArr3[r32] = objArr4[(this.f13092h + r32) % objArr4.length];
            }
            Arrays.fill(objArr3, r92, r03, c5.y.f2131j);
            this.f13091g = objArr3;
            this.f13092h = 0;
        }
        Object[] objArr5 = this.f13091g;
        objArr5[(this.f13092h + r92) % objArr5.length] = e10;
    }

    @Override // pc.b
    public final Object d(z zVar) {
        ReentrantLock reentrantLock = this.f;
        reentrantLock.lock();
        try {
            return super.d(zVar);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // pc.b
    public final String e() {
        StringBuilder sb2 = new StringBuilder("(buffer:capacity=");
        sb2.append(this.f13089d);
        sb2.append(",size=");
        return androidx.constraintlayout.core.a.d(sb2, this.size, ')');
    }

    @Override // pc.b
    public final boolean i() {
        return false;
    }

    @Override // pc.b
    public final boolean j() {
        return this.size == this.f13089d && this.f13090e == f.SUSPEND;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0063 A[DONT_GENERATE] */
    @Override // pc.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object n(E r6) {
        /*
            r5 = this;
            java.util.concurrent.locks.ReentrantLock r0 = r5.f
            r0.lock()
            int r1 = r5.size     // Catch: java.lang.Throwable -> L6b
            pc.k r2 = r5.f()     // Catch: java.lang.Throwable -> L6b
            if (r2 != 0) goto L67
            int r2 = r5.f13089d     // Catch: java.lang.Throwable -> L6b
            kotlinx.coroutines.internal.u r3 = c5.y.f2132k
            if (r1 >= r2) goto L18
            int r2 = r1 + 1
            r5.size = r2     // Catch: java.lang.Throwable -> L6b
            goto L2e
        L18:
            pc.f r2 = r5.f13090e     // Catch: java.lang.Throwable -> L6b
            int r2 = r2.ordinal()     // Catch: java.lang.Throwable -> L6b
            if (r2 == 0) goto L30
            r4 = 1
            if (r2 == r4) goto L2e
            r4 = 2
            if (r2 != r4) goto L28
            r2 = r3
            goto L32
        L28:
            j7.p r6 = new j7.p     // Catch: java.lang.Throwable -> L6b
            r6.<init>()     // Catch: java.lang.Throwable -> L6b
            throw r6     // Catch: java.lang.Throwable -> L6b
        L2e:
            r2 = 0
            goto L32
        L30:
            kotlinx.coroutines.internal.u r2 = c5.y.f2133l     // Catch: java.lang.Throwable -> L6b
        L32:
            if (r2 != 0) goto L63
            if (r1 != 0) goto L5c
        L36:
            pc.v r2 = r5.o()     // Catch: java.lang.Throwable -> L6b
            if (r2 != 0) goto L3d
            goto L5c
        L3d:
            boolean r4 = r2 instanceof pc.k     // Catch: java.lang.Throwable -> L6b
            if (r4 == 0) goto L47
            r5.size = r1     // Catch: java.lang.Throwable -> L6b
            r0.unlock()
            return r2
        L47:
            kotlinx.coroutines.internal.u r4 = r2.c(r6)     // Catch: java.lang.Throwable -> L6b
            if (r4 == 0) goto L36
            r5.size = r1     // Catch: java.lang.Throwable -> L6b
            l9.m r1 = l9.m.f9594a     // Catch: java.lang.Throwable -> L6b
            r0.unlock()
            r2.s(r6)
            java.lang.Object r6 = r2.k()
            return r6
        L5c:
            r5.E(r1, r6)     // Catch: java.lang.Throwable -> L6b
            r0.unlock()
            return r3
        L63:
            r0.unlock()
            return r2
        L67:
            r0.unlock()
            return r2
        L6b:
            r6 = move-exception
            r0.unlock()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: pc.d.n(java.lang.Object):java.lang.Object");
    }

    @Override // pc.a
    public final boolean t(s<? super E> sVar) {
        ReentrantLock reentrantLock = this.f;
        reentrantLock.lock();
        try {
            return super.t(sVar);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // pc.a
    public final boolean v() {
        return false;
    }

    @Override // pc.a
    public final boolean w() {
        return this.size == 0;
    }

    @Override // pc.a
    public final boolean x() {
        ReentrantLock reentrantLock = this.f;
        reentrantLock.lock();
        try {
            return super.x();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // pc.a
    public final void y(boolean z10) {
        x9.l<E, l9.m> lVar = this.f13085a;
        ReentrantLock reentrantLock = this.f;
        reentrantLock.lock();
        try {
            int r22 = this.size;
            kotlinx.coroutines.internal.a0 a0VarE = null;
            int r52 = 0;
            while (r52 < r22) {
                r52++;
                Object obj = this.f13091g[this.f13092h];
                kotlinx.coroutines.internal.u uVar = c5.y.f2131j;
                if (lVar != null && obj != uVar) {
                    a0VarE = c5.y.e(lVar, obj, a0VarE);
                }
                Object[] objArr = this.f13091g;
                int r82 = this.f13092h;
                objArr[r82] = uVar;
                this.f13092h = (r82 + 1) % objArr.length;
            }
            this.size = 0;
            l9.m mVar = l9.m.f9594a;
            reentrantLock.unlock();
            super.y(z10);
            if (a0VarE != null) {
                throw a0VarE;
            }
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }
}
