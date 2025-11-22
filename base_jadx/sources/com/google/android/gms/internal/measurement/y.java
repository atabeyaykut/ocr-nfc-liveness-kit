package com.google.android.gms.internal.measurement;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class y extends w {
    public y() {
        this.f3809a.add(h0.EQUALS);
        this.f3809a.add(h0.GREATER_THAN);
        this.f3809a.add(h0.GREATER_THAN_EQUALS);
        this.f3809a.add(h0.IDENTITY_EQUALS);
        this.f3809a.add(h0.IDENTITY_NOT_EQUALS);
        this.f3809a.add(h0.LESS_THAN);
        this.f3809a.add(h0.LESS_THAN_EQUALS);
        this.f3809a.add(h0.NOT_EQUALS);
    }

    public static boolean c(p pVar, p pVar2) {
        if (pVar.getClass().equals(pVar2.getClass())) {
            if ((pVar instanceof u) || (pVar instanceof n)) {
                return true;
            }
            return pVar instanceof i ? (Double.isNaN(pVar.i().doubleValue()) || Double.isNaN(pVar2.i().doubleValue()) || pVar.i().doubleValue() != pVar2.i().doubleValue()) ? false : true : pVar instanceof t ? pVar.h().equals(pVar2.h()) : pVar instanceof g ? pVar.l().equals(pVar2.l()) : pVar == pVar2;
        }
        if (((pVar instanceof u) || (pVar instanceof n)) && ((pVar2 instanceof u) || (pVar2 instanceof n))) {
            return true;
        }
        boolean z10 = pVar instanceof i;
        if (z10 && (pVar2 instanceof t)) {
            return c(pVar, new i(pVar2.i()));
        }
        boolean z11 = pVar instanceof t;
        if ((!z11 || !(pVar2 instanceof i)) && !(pVar instanceof g)) {
            if (pVar2 instanceof g) {
                return c(pVar, new i(pVar2.i()));
            }
            if ((z11 || z10) && (pVar2 instanceof l)) {
                return c(pVar, new t(pVar2.h()));
            }
            if ((pVar instanceof l) && ((pVar2 instanceof t) || (pVar2 instanceof i))) {
                return c(new t(pVar.h()), pVar2);
            }
            return false;
        }
        return c(new i(pVar.i()), pVar2);
    }

    public static boolean d(p pVar, p pVar2) {
        if (pVar instanceof l) {
            pVar = new t(pVar.h());
        }
        if (pVar2 instanceof l) {
            pVar2 = new t(pVar2.h());
        }
        if ((pVar instanceof t) && (pVar2 instanceof t)) {
            return pVar.h().compareTo(pVar2.h()) < 0;
        }
        double dDoubleValue = pVar.i().doubleValue();
        double dDoubleValue2 = pVar2.i().doubleValue();
        return (Double.isNaN(dDoubleValue) || Double.isNaN(dDoubleValue2) || (dDoubleValue == 0.0d && dDoubleValue2 == 0.0d) || ((dDoubleValue == 0.0d && dDoubleValue2 == 0.0d) || Double.compare(dDoubleValue, dDoubleValue2) >= 0)) ? false : true;
    }

    public static boolean e(p pVar, p pVar2) {
        if (pVar instanceof l) {
            pVar = new t(pVar.h());
        }
        if (pVar2 instanceof l) {
            pVar2 = new t(pVar2.h());
        }
        return (((pVar instanceof t) && (pVar2 instanceof t)) || !(Double.isNaN(pVar.i().doubleValue()) || Double.isNaN(pVar2.i().doubleValue()))) && !d(pVar2, pVar);
    }

    @Override // com.google.android.gms.internal.measurement.w
    public final p a(String str, s3 s3Var, ArrayList arrayList) {
        boolean zC;
        boolean zC2;
        c5.w.b0(c5.w.Y(str).name(), 2, arrayList);
        p pVarB = s3Var.b((p) arrayList.get(0));
        p pVarB2 = s3Var.b((p) arrayList.get(1));
        int r6 = c5.w.Y(str).ordinal();
        if (r6 != 23) {
            if (r6 == 48) {
                zC2 = c(pVarB, pVarB2);
            } else if (r6 == 42) {
                zC = d(pVarB, pVarB2);
            } else if (r6 != 43) {
                switch (r6) {
                    case 37:
                        zC = d(pVarB2, pVarB);
                        break;
                    case 38:
                        zC = e(pVarB2, pVarB);
                        break;
                    case 39:
                        zC = c5.w.f0(pVarB, pVarB2);
                        break;
                    case 40:
                        zC2 = c5.w.f0(pVarB, pVarB2);
                        break;
                    default:
                        b(str);
                        throw null;
                }
            } else {
                zC = e(pVarB, pVarB2);
            }
            zC = !zC2;
        } else {
            zC = c(pVarB, pVarB2);
        }
        return zC ? p.S : p.U;
    }
}
