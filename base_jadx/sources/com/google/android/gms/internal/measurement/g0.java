package com.google.android.gms.internal.measurement;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class g0 extends w {
    public g0() {
        this.f3809a.add(h0.ASSIGN);
        this.f3809a.add(h0.CONST);
        this.f3809a.add(h0.CREATE_ARRAY);
        this.f3809a.add(h0.CREATE_OBJECT);
        this.f3809a.add(h0.EXPRESSION_LIST);
        this.f3809a.add(h0.GET);
        this.f3809a.add(h0.GET_INDEX);
        this.f3809a.add(h0.GET_PROPERTY);
        this.f3809a.add(h0.NULL);
        this.f3809a.add(h0.SET_PROPERTY);
        this.f3809a.add(h0.TYPEOF);
        this.f3809a.add(h0.UNDEFINED);
        this.f3809a.add(h0.VAR);
    }

    @Override // com.google.android.gms.internal.measurement.w
    public final p a(String str, s3 s3Var, ArrayList arrayList) {
        String str2;
        h0 h0Var = h0.ADD;
        int r02 = c5.w.Y(str).ordinal();
        int r42 = 0;
        if (r02 == 3) {
            c5.w.b0("ASSIGN", 2, arrayList);
            p pVarB = s3Var.b((p) arrayList.get(0));
            if (!(pVarB instanceof t)) {
                throw new IllegalArgumentException(String.format("Expected string for assign var. got %s", pVarB.getClass().getCanonicalName()));
            }
            if (!s3Var.g(pVarB.h())) {
                throw new IllegalArgumentException(String.format("Attempting to assign undefined value %s", pVarB.h()));
            }
            p pVarB2 = s3Var.b((p) arrayList.get(1));
            s3Var.f(pVarB.h(), pVarB2);
            return pVarB2;
        }
        if (r02 == 14) {
            c5.w.c0("CONST", 2, arrayList);
            if (arrayList.size() % 2 != 0) {
                throw new IllegalArgumentException(String.format("CONST requires an even number of arguments, found %s", Integer.valueOf(arrayList.size())));
            }
            for (int r72 = 0; r72 < arrayList.size() - 1; r72 += 2) {
                p pVarB3 = s3Var.b((p) arrayList.get(r72));
                if (!(pVarB3 instanceof t)) {
                    throw new IllegalArgumentException(String.format("Expected string for const name. got %s", pVarB3.getClass().getCanonicalName()));
                }
                String strH = pVarB3.h();
                s3Var.e(strH, s3Var.b((p) arrayList.get(r72 + 1)));
                ((Map) s3Var.f3735d).put(strH, Boolean.TRUE);
            }
            return p.f3668i;
        }
        if (r02 == 24) {
            c5.w.c0("EXPRESSION_LIST", 1, arrayList);
            p pVarB4 = p.f3668i;
            while (r42 < arrayList.size()) {
                pVarB4 = s3Var.b((p) arrayList.get(r42));
                if (pVarB4 instanceof h) {
                    throw new IllegalStateException("ControlValue cannot be in an expression list");
                }
                r42++;
            }
            return pVarB4;
        }
        if (r02 == 33) {
            c5.w.b0(ShareTarget.METHOD_GET, 1, arrayList);
            p pVarB5 = s3Var.b((p) arrayList.get(0));
            if (pVarB5 instanceof t) {
                return s3Var.d(pVarB5.h());
            }
            throw new IllegalArgumentException(String.format("Expected string for get var. got %s", pVarB5.getClass().getCanonicalName()));
        }
        if (r02 == 49) {
            c5.w.b0("NULL", 0, arrayList);
            return p.f3669o;
        }
        if (r02 == 58) {
            c5.w.b0("SET_PROPERTY", 3, arrayList);
            p pVarB6 = s3Var.b((p) arrayList.get(0));
            p pVarB7 = s3Var.b((p) arrayList.get(1));
            p pVarB8 = s3Var.b((p) arrayList.get(2));
            if (pVarB6 == p.f3668i || pVarB6 == p.f3669o) {
                throw new IllegalStateException(String.format("Can't set property %s of %s", pVarB7.h(), pVarB6.h()));
            }
            if ((pVarB6 instanceof f) && (pVarB7 instanceof i)) {
                ((f) pVarB6).G(pVarB7.i().intValue(), pVarB8);
            } else if (pVarB6 instanceof l) {
                ((l) pVarB6).u(pVarB7.h(), pVarB8);
            }
            return pVarB8;
        }
        if (r02 == 17) {
            if (arrayList.isEmpty()) {
                return new f();
            }
            f fVar = new f();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                p pVarB9 = s3Var.b((p) it.next());
                if (pVarB9 instanceof h) {
                    throw new IllegalStateException("Failed to evaluate array element");
                }
                fVar.G(r42, pVarB9);
                r42++;
            }
            return fVar;
        }
        if (r02 == 18) {
            if (arrayList.isEmpty()) {
                return new m();
            }
            if (arrayList.size() % 2 != 0) {
                throw new IllegalArgumentException(String.format("CREATE_OBJECT requires an even number of arguments, found %s", Integer.valueOf(arrayList.size())));
            }
            m mVar = new m();
            while (r42 < arrayList.size() - 1) {
                p pVarB10 = s3Var.b((p) arrayList.get(r42));
                p pVarB11 = s3Var.b((p) arrayList.get(r42 + 1));
                if ((pVarB10 instanceof h) || (pVarB11 instanceof h)) {
                    throw new IllegalStateException("Failed to evaluate map entry");
                }
                mVar.u(pVarB10.h(), pVarB11);
                r42 += 2;
            }
            return mVar;
        }
        if (r02 == 35 || r02 == 36) {
            c5.w.b0("GET_PROPERTY", 2, arrayList);
            p pVarB12 = s3Var.b((p) arrayList.get(0));
            p pVarB13 = s3Var.b((p) arrayList.get(1));
            if ((pVarB12 instanceof f) && c5.w.e0(pVarB13)) {
                return ((f) pVarB12).z(pVarB13.i().intValue());
            }
            if (pVarB12 instanceof l) {
                return ((l) pVarB12).x(pVarB13.h());
            }
            if (pVarB12 instanceof t) {
                if ("length".equals(pVarB13.h())) {
                    return new i(Double.valueOf(pVarB12.h().length()));
                }
                if (c5.w.e0(pVarB13) && pVarB13.i().doubleValue() < pVarB12.h().length()) {
                    return new t(String.valueOf(pVarB12.h().charAt(pVarB13.i().intValue())));
                }
            }
            return p.f3668i;
        }
        switch (r02) {
            case 62:
                c5.w.b0("TYPEOF", 1, arrayList);
                p pVarB14 = s3Var.b((p) arrayList.get(0));
                if (pVarB14 instanceof u) {
                    str2 = "undefined";
                } else if (pVarB14 instanceof g) {
                    str2 = TypedValues.Custom.S_BOOLEAN;
                } else if (pVarB14 instanceof i) {
                    str2 = "number";
                } else if (pVarB14 instanceof t) {
                    str2 = TypedValues.Custom.S_STRING;
                } else if (pVarB14 instanceof o) {
                    str2 = "function";
                } else {
                    if ((pVarB14 instanceof q) || (pVarB14 instanceof h)) {
                        throw new IllegalArgumentException(String.format("Unsupported value type %s in typeof", pVarB14));
                    }
                    str2 = "object";
                }
                return new t(str2);
            case 63:
                c5.w.b0("UNDEFINED", 0, arrayList);
                return p.f3668i;
            case 64:
                c5.w.c0("VAR", 1, arrayList);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    p pVarB15 = s3Var.b((p) it2.next());
                    if (!(pVarB15 instanceof t)) {
                        throw new IllegalArgumentException(String.format("Expected string for var name. got %s", pVarB15.getClass().getCanonicalName()));
                    }
                    s3Var.e(pVarB15.h(), p.f3668i);
                }
                return p.f3668i;
            default:
                b(str);
                throw null;
        }
    }
}
