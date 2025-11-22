package nc;

/* loaded from: classes2.dex */
public abstract class k1 extends y {
    public abstract k1 d();

    @Override // nc.y
    public y limitedParallelism(int r12) {
        com.google.android.gms.internal.clearcut.d0.g(r12);
        return this;
    }

    @Override // nc.y
    public String toString() {
        k1 k1VarD;
        String str;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        k1 k1Var = kotlinx.coroutines.internal.m.f9167a;
        if (this == k1Var) {
            str = "Dispatchers.Main";
        } else {
            try {
                k1VarD = k1Var.d();
            } catch (UnsupportedOperationException unused) {
                k1VarD = null;
            }
            str = this == k1VarD ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        return getClass().getSimpleName() + '@' + c0.c(this);
    }
}
