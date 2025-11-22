package nc;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public abstract class f1 extends t implements k0, v0 {

    /* renamed from: d, reason: collision with root package name */
    public g1 f10792d;

    public final g1 K() {
        g1 g1Var = this.f10792d;
        if (g1Var != null) {
            return g1Var;
        }
        kotlin.jvm.internal.h.n("job");
        throw null;
    }

    @Override // nc.v0
    public final boolean b() {
        return true;
    }

    @Override // nc.k0
    public final void dispose() {
        boolean z10;
        g1 g1VarK = K();
        do {
            Object objS = g1VarK.S();
            if (!(objS instanceof f1)) {
                if (!(objS instanceof v0) || ((v0) objS).p() == null) {
                    return;
                }
                F();
                return;
            }
            if (objS != this) {
                return;
            }
            m0 m0Var = c5.e0.f1496l;
            while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g1.f10793a;
                if (atomicReferenceFieldUpdater.compareAndSet(g1VarK, objS, m0Var)) {
                    z10 = true;
                    break;
                } else if (atomicReferenceFieldUpdater.get(g1VarK) != objS) {
                    z10 = false;
                    break;
                }
            }
        } while (!z10);
    }

    @Override // nc.v0
    public final l1 p() {
        return null;
    }

    @Override // kotlinx.coroutines.internal.j
    public final String toString() {
        return getClass().getSimpleName() + '@' + c0.c(this) + "[job@" + c0.c(K()) + ']';
    }
}
