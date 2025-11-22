package cc;

/* loaded from: classes2.dex */
public abstract class j1 implements i1 {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i1)) {
            return false;
        }
        i1 i1Var = (i1) obj;
        return c() == i1Var.c() && b() == i1Var.b() && getType().equals(i1Var.getType());
    }

    public final int hashCode() {
        int r02 = b().hashCode() * 31;
        if (q1.q(getType())) {
            return r02 + 19;
        }
        return r02 + (c() ? 17 : getType().hashCode());
    }

    public final String toString() {
        if (c()) {
            return "*";
        }
        if (b() == t1.INVARIANT) {
            return getType().toString();
        }
        return b() + " " + getType();
    }
}
