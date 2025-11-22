package com.google.android.gms.internal.measurement;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class e0 extends w {
    public e0() {
        this.f3809a.add(h0.ADD);
        this.f3809a.add(h0.DIVIDE);
        this.f3809a.add(h0.MODULUS);
        this.f3809a.add(h0.MULTIPLY);
        this.f3809a.add(h0.NEGATE);
        this.f3809a.add(h0.POST_DECREMENT);
        this.f3809a.add(h0.POST_INCREMENT);
        this.f3809a.add(h0.PRE_DECREMENT);
        this.f3809a.add(h0.PRE_INCREMENT);
        this.f3809a.add(h0.SUBTRACT);
    }

    @Override // com.google.android.gms.internal.measurement.w
    public final p a(String str, s3 s3Var, ArrayList arrayList) {
        h0 h0Var = h0.ADD;
        int r02 = c5.w.Y(str).ordinal();
        if (r02 == 0) {
            c5.w.b0("ADD", 2, arrayList);
            p pVarB = s3Var.b((p) arrayList.get(0));
            p pVarB2 = s3Var.b((p) arrayList.get(1));
            if (!(pVarB instanceof l) && !(pVarB instanceof t) && !(pVarB2 instanceof l) && !(pVarB2 instanceof t)) {
                return new i(Double.valueOf(pVarB2.i().doubleValue() + pVarB.i().doubleValue()));
            }
            String strValueOf = String.valueOf(pVarB.h());
            String strValueOf2 = String.valueOf(pVarB2.h());
            return new t(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
        }
        if (r02 == 21) {
            c5.w.b0("DIVIDE", 2, arrayList);
            return new i(Double.valueOf(s3Var.b((p) arrayList.get(0)).i().doubleValue() / s3Var.b((p) arrayList.get(1)).i().doubleValue()));
        }
        if (r02 == 59) {
            c5.w.b0("SUBTRACT", 2, arrayList);
            p pVarB3 = s3Var.b((p) arrayList.get(0));
            Double dValueOf = Double.valueOf(-s3Var.b((p) arrayList.get(1)).i().doubleValue());
            if (dValueOf == null) {
                dValueOf = Double.valueOf(Double.NaN);
            }
            return new i(Double.valueOf(dValueOf.doubleValue() + pVarB3.i().doubleValue()));
        }
        if (r02 == 52 || r02 == 53) {
            c5.w.b0(str, 2, arrayList);
            p pVarB4 = s3Var.b((p) arrayList.get(0));
            s3Var.b((p) arrayList.get(1));
            return pVarB4;
        }
        if (r02 == 55 || r02 == 56) {
            c5.w.b0(str, 1, arrayList);
            return s3Var.b((p) arrayList.get(0));
        }
        switch (r02) {
            case 44:
                c5.w.b0("MODULUS", 2, arrayList);
                return new i(Double.valueOf(s3Var.b((p) arrayList.get(0)).i().doubleValue() % s3Var.b((p) arrayList.get(1)).i().doubleValue()));
            case 45:
                c5.w.b0("MULTIPLY", 2, arrayList);
                return new i(Double.valueOf(s3Var.b((p) arrayList.get(0)).i().doubleValue() * s3Var.b((p) arrayList.get(1)).i().doubleValue()));
            case 46:
                c5.w.b0("NEGATE", 1, arrayList);
                return new i(Double.valueOf(-s3Var.b((p) arrayList.get(0)).i().doubleValue()));
            default:
                b(str);
                throw null;
        }
    }
}
