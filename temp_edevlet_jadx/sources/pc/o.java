package pc;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import pc.b;

/* loaded from: classes2.dex */
public final class o<E> extends a<E> {
    public o(x9.l<? super E, l9.m> lVar) {
        super(lVar);
    }

    @Override // pc.b
    public final boolean i() {
        return false;
    }

    @Override // pc.b
    public final boolean j() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // pc.b
    public final Object n(E e10) {
        v vVar;
        do {
            Object objN = super.n(e10);
            kotlinx.coroutines.internal.u uVar = c5.y.f2132k;
            if (objN == uVar) {
                return uVar;
            }
            if (objN != c5.y.f2133l) {
                if (objN instanceof k) {
                    return objN;
                }
                throw new IllegalStateException(kotlin.jvm.internal.h.k(objN, "Invalid offerInternal result ").toString());
            }
            kotlinx.coroutines.internal.i iVar = this.f13086b;
            b.a aVar = new b.a(e10);
            while (true) {
                kotlinx.coroutines.internal.j jVarB = iVar.B();
                if (jVarB instanceof v) {
                    vVar = (v) jVarB;
                    break;
                }
                if (jVarB.u(aVar, iVar)) {
                    vVar = null;
                    break;
                }
            }
            if (vVar == null) {
                return uVar;
            }
        } while (!(vVar instanceof k));
        return vVar;
    }

    @Override // pc.a
    public final boolean v() {
        return true;
    }

    @Override // pc.a
    public final boolean w() {
        return true;
    }

    @Override // pc.a
    public final void z(Object obj, k<?> kVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kotlinx.coroutines.internal.a0 a0VarE = null;
        if (obj != null) {
            boolean z10 = obj instanceof ArrayList;
            x9.l<E, l9.m> lVar = this.f13085a;
            if (z10) {
                ArrayList arrayList = (ArrayList) obj;
                int size = arrayList.size() - 1;
                if (size >= 0) {
                    kotlinx.coroutines.internal.a0 a0VarE2 = null;
                    while (true) {
                        int r42 = size - 1;
                        x xVar = (x) arrayList.get(size);
                        if (xVar instanceof b.a) {
                            a0VarE2 = lVar == null ? null : c5.y.e(lVar, ((b.a) xVar).f13087d, a0VarE2);
                        } else {
                            xVar.L(kVar);
                        }
                        if (r42 < 0) {
                            break;
                        } else {
                            size = r42;
                        }
                    }
                    a0VarE = a0VarE2;
                }
            } else {
                x xVar2 = (x) obj;
                if (!(xVar2 instanceof b.a)) {
                    xVar2.L(kVar);
                } else if (lVar != null) {
                    a0VarE = c5.y.e(lVar, ((b.a) xVar2).f13087d, null);
                }
            }
        }
        if (a0VarE != null) {
            throw a0VarE;
        }
    }
}
