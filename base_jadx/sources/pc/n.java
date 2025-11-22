package pc;

import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes2.dex */
public class n<E> extends a<E> {

    /* renamed from: d, reason: collision with root package name */
    public final ReentrantLock f13112d;

    /* renamed from: e, reason: collision with root package name */
    public Object f13113e;

    public n(x9.l<? super E, l9.m> lVar) {
        super(lVar);
        this.f13112d = new ReentrantLock();
        this.f13113e = c5.y.f2131j;
    }

    @Override // pc.a
    public final Object B() {
        ReentrantLock reentrantLock = this.f13112d;
        reentrantLock.lock();
        try {
            Object obj = this.f13113e;
            kotlinx.coroutines.internal.u uVar = c5.y.f2131j;
            if (obj != uVar) {
                this.f13113e = uVar;
                l9.m mVar = l9.m.f9594a;
                return obj;
            }
            Object objF = f();
            if (objF == null) {
                objF = c5.y.f2134m;
            }
            return objF;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // pc.a
    public final Object D(kotlinx.coroutines.selects.c<?> cVar) {
        ReentrantLock reentrantLock = this.f13112d;
        reentrantLock.lock();
        try {
            Object obj = this.f13113e;
            kotlinx.coroutines.internal.u uVar = c5.y.f2131j;
            if (obj == uVar) {
                Object objF = f();
                if (objF == null) {
                    objF = c5.y.f2134m;
                }
                return objF;
            }
            if (!cVar.n()) {
                return kotlinx.coroutines.selects.d.f9235b;
            }
            Object obj2 = this.f13113e;
            this.f13113e = uVar;
            l9.m mVar = l9.m.f9594a;
            return obj2;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // pc.b
    public final String e() {
        return "(value=" + this.f13113e + ')';
    }

    @Override // pc.b
    public final boolean i() {
        return false;
    }

    @Override // pc.b
    public final boolean j() {
        return false;
    }

    @Override // pc.b
    public Object n(E e10) {
        x9.l<E, l9.m> lVar;
        v<E> vVarO;
        ReentrantLock reentrantLock = this.f13112d;
        reentrantLock.lock();
        try {
            k<?> kVarF = f();
            if (kVarF != null) {
                return kVarF;
            }
            Object obj = this.f13113e;
            kotlinx.coroutines.internal.u uVar = c5.y.f2131j;
            if (obj == uVar) {
                do {
                    vVarO = o();
                    if (vVarO != null) {
                        if (vVarO instanceof k) {
                            return vVarO;
                        }
                    }
                } while (vVarO.c(e10) == null);
                l9.m mVar = l9.m.f9594a;
                reentrantLock.unlock();
                vVarO.s(e10);
                return vVarO.k();
            }
            Object obj2 = this.f13113e;
            kotlinx.coroutines.internal.a0 a0VarE = null;
            if (obj2 != uVar && (lVar = this.f13085a) != null) {
                a0VarE = c5.y.e(lVar, obj2, null);
            }
            this.f13113e = e10;
            if (a0VarE == null) {
                return c5.y.f2132k;
            }
            throw a0VarE;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // pc.a
    public final boolean t(s<? super E> sVar) {
        ReentrantLock reentrantLock = this.f13112d;
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
        return this.f13113e == c5.y.f2131j;
    }

    @Override // pc.a
    public void y(boolean z10) {
        x9.l<E, l9.m> lVar;
        ReentrantLock reentrantLock = this.f13112d;
        reentrantLock.lock();
        try {
            kotlinx.coroutines.internal.u uVar = c5.y.f2131j;
            Object obj = this.f13113e;
            kotlinx.coroutines.internal.a0 a0VarE = null;
            if (obj != uVar && (lVar = this.f13085a) != null) {
                a0VarE = c5.y.e(lVar, obj, null);
            }
            this.f13113e = uVar;
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
