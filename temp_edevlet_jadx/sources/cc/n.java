package cc;

/* loaded from: classes2.dex */
public abstract class n implements c1 {

    /* renamed from: a, reason: collision with root package name */
    public int f2335a;

    public abstract boolean c(ma.g gVar);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c1) || obj.hashCode() != hashCode()) {
            return false;
        }
        c1 c1Var = (c1) obj;
        if (c1Var.getParameters().size() != getParameters().size()) {
            return false;
        }
        ma.g gVarN = n();
        ma.g gVarN2 = c1Var.n();
        if (gVarN2 == null) {
            return false;
        }
        if ((ec.i.f(gVarN) || ob.i.o(gVarN)) ? false : true) {
            if ((ec.i.f(gVarN2) || ob.i.o(gVarN2)) ? false : true) {
                return c(gVarN2);
            }
        }
        return false;
    }

    public final int hashCode() {
        int r02 = this.f2335a;
        if (r02 != 0) {
            return r02;
        }
        ma.g gVarN = n();
        int r03 = !ec.i.f(gVarN) && !ob.i.o(gVarN) ? ob.i.g(gVarN).hashCode() : System.identityHashCode(this);
        this.f2335a = r03;
        return r03;
    }

    @Override // cc.c1
    public abstract ma.g n();
}
