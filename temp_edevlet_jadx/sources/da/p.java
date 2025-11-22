package da;

import ga.p0;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: c, reason: collision with root package name */
    public static final p f4714c = new p(0, null);

    /* renamed from: a, reason: collision with root package name */
    public final int f4715a;

    /* renamed from: b, reason: collision with root package name */
    public final n f4716b;

    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4717a;

        static {
            int[] r12 = new int[g.d.d(3).length];
            try {
                r12[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                r12[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                r12[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f4717a = r12;
        }
    }

    public p(int r42, p0 p0Var) {
        String str;
        this.f4715a = r42;
        this.f4716b = p0Var;
        if ((r42 == 0) == (p0Var == null)) {
            return;
        }
        if (r42 == 0) {
            str = "Star projection must have no type specified.";
        } else {
            str = "The projection variance " + android.support.v4.media.a.o(r42) + " requires type to be specified.";
        }
        throw new IllegalArgumentException(str.toString());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f4715a == pVar.f4715a && kotlin.jvm.internal.h.a(this.f4716b, pVar.f4716b);
    }

    public final int hashCode() {
        int r12 = this.f4715a;
        int r13 = (r12 == 0 ? 0 : g.d.c(r12)) * 31;
        n nVar = this.f4716b;
        return r13 + (nVar != null ? nVar.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb2;
        int r12 = this.f4715a;
        int r13 = r12 == 0 ? -1 : a.f4717a[g.d.c(r12)];
        if (r13 == -1) {
            return "*";
        }
        n nVar = this.f4716b;
        if (r13 == 1) {
            return String.valueOf(nVar);
        }
        if (r13 == 2) {
            sb2 = new StringBuilder("in ");
        } else {
            if (r13 != 3) {
                throw new j7.p();
            }
            sb2 = new StringBuilder("out ");
        }
        sb2.append(nVar);
        return sb2.toString();
    }
}
