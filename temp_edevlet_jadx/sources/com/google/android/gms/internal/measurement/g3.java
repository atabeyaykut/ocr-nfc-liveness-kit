package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class g3 extends n6<h3, g3> {
    public g3() {
        super(h3.zza);
    }

    public /* synthetic */ g3(int r12) {
        super(h3.zza);
    }

    public final long n() {
        return ((h3) this.f3642b).t();
    }

    public final long p() {
        return ((h3) this.f3642b).u();
    }

    public final void q(k3 k3Var) {
        if (this.f3643c) {
            i();
            this.f3643c = false;
        }
        h3.B((h3) this.f3642b, k3Var.f());
    }

    public final void r(int r22) {
        if (this.f3643c) {
            i();
            this.f3643c = false;
        }
        h3.E((h3) this.f3642b, r22);
    }

    public final void s(String str) {
        if (this.f3643c) {
            i();
            this.f3643c = false;
        }
        h3.F((h3) this.f3642b, str);
    }

    public final void t(int r22, l3 l3Var) {
        if (this.f3643c) {
            i();
            this.f3643c = false;
        }
        h3.A((h3) this.f3642b, r22, l3Var);
    }

    public final l3 u(int r22) {
        return ((h3) this.f3642b).x(r22);
    }

    public final String v() {
        return ((h3) this.f3642b).y();
    }

    public final List<l3> w() {
        return Collections.unmodifiableList(((h3) this.f3642b).z());
    }
}
