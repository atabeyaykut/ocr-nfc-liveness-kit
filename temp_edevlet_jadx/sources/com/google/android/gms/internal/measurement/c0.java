package com.google.android.gms.internal.measurement;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class c0 extends w {
    public c0() {
        this.f3809a.add(h0.AND);
        this.f3809a.add(h0.NOT);
        this.f3809a.add(h0.OR);
    }

    @Override // com.google.android.gms.internal.measurement.w
    public final p a(String str, s3 s3Var, ArrayList arrayList) {
        h0 h0Var = h0.ADD;
        int r02 = c5.w.Y(str).ordinal();
        if (r02 == 1) {
            c5.w.b0("AND", 2, arrayList);
            p pVarB = s3Var.b((p) arrayList.get(0));
            if (!pVarB.l().booleanValue()) {
                return pVarB;
            }
        } else {
            if (r02 == 47) {
                c5.w.b0("NOT", 1, arrayList);
                return new g(Boolean.valueOf(!s3Var.b((p) arrayList.get(0)).l().booleanValue()));
            }
            if (r02 != 50) {
                b(str);
                throw null;
            }
            c5.w.b0("OR", 2, arrayList);
            p pVarB2 = s3Var.b((p) arrayList.get(0));
            if (pVarB2.l().booleanValue()) {
                return pVarB2;
            }
        }
        return s3Var.b((p) arrayList.get(1));
    }
}
