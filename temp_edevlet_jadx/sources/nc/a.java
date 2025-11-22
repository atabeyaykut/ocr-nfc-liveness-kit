package nc;

import java.lang.reflect.InvocationTargetException;
import nc.b1;

/* loaded from: classes2.dex */
public abstract class a<T> extends g1 implements p9.d<T>, a0 {

    /* renamed from: b, reason: collision with root package name */
    public final p9.f f10779b;

    public a(p9.f fVar, boolean z10) {
        super(z10);
        V((b1) fVar.get(b1.b.f10784a));
        this.f10779b = fVar.plus(this);
    }

    @Override // nc.g1
    public final String J() {
        return kotlin.jvm.internal.h.k(" was cancelled", getClass().getSimpleName());
    }

    @Override // nc.g1
    public final void U(u uVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        c5.v.u(this.f10779b, uVar);
    }

    @Override // nc.g1
    public final String Y() {
        return super.Y();
    }

    @Override // nc.g1, nc.b1
    public boolean b() {
        return super.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // nc.g1
    public final void b0(Object obj) {
        if (!(obj instanceof r)) {
            k0(obj);
            return;
        }
        r rVar = (r) obj;
        j0(rVar.a(), rVar.f10837a);
    }

    @Override // p9.d
    public final p9.f getContext() {
        return this.f10779b;
    }

    @Override // nc.a0
    public final p9.f getCoroutineContext() {
        return this.f10779b;
    }

    public void i0(Object obj) {
        F(obj);
    }

    public void j0(boolean z10, Throwable th2) {
    }

    public void k0(T t10) {
    }

    public final void l0(int r42, a aVar, x9.p pVar) {
        Object objJ;
        if (r42 == 0) {
            throw null;
        }
        int r43 = r42 - 1;
        if (r43 == 0) {
            try {
                a2.b.m(c5.w.x(c5.w.g(aVar, this, pVar)), l9.m.f9594a, null);
                return;
            } catch (Throwable th2) {
                resumeWith(c5.w.j(th2));
                throw th2;
            }
        }
        if (r43 != 1) {
            if (r43 == 2) {
                kotlin.jvm.internal.h.f(pVar, "<this>");
                c5.w.x(c5.w.g(aVar, this, pVar)).resumeWith(l9.m.f9594a);
                return;
            }
            if (r43 != 3) {
                throw new j7.p();
            }
            try {
                p9.f fVar = this.f10779b;
                Object objC = kotlinx.coroutines.internal.w.c(fVar, null);
                try {
                    kotlin.jvm.internal.z.c(2, pVar);
                    objJ = pVar.mo7invoke(aVar, this);
                    if (objJ == q9.a.COROUTINE_SUSPENDED) {
                        return;
                    }
                } finally {
                    kotlinx.coroutines.internal.w.a(fVar, objC);
                }
            } catch (Throwable th3) {
                objJ = c5.w.j(th3);
            }
            resumeWith(objJ);
        }
    }

    @Override // p9.d
    public final void resumeWith(Object obj) {
        Throwable thA = l9.h.a(obj);
        if (thA != null) {
            obj = new r(false, thA);
        }
        Object objX = X(obj);
        if (objX == c5.e0.f) {
            return;
        }
        i0(objX);
    }
}
