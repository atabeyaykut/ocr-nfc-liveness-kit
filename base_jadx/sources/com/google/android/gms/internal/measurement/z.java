package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class z extends w {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3853b;

    public z(int r22) {
        this.f3853b = r22;
        if (r22 == 1) {
            ArrayList arrayList = this.f3809a;
            arrayList.add(h0.FOR_IN);
            arrayList.add(h0.FOR_IN_CONST);
            arrayList.add(h0.FOR_IN_LET);
            arrayList.add(h0.FOR_LET);
            arrayList.add(h0.FOR_OF);
            arrayList.add(h0.FOR_OF_CONST);
            arrayList.add(h0.FOR_OF_LET);
            arrayList.add(h0.WHILE);
            return;
        }
        ArrayList arrayList2 = this.f3809a;
        arrayList2.add(h0.APPLY);
        arrayList2.add(h0.BLOCK);
        arrayList2.add(h0.BREAK);
        arrayList2.add(h0.CASE);
        arrayList2.add(h0.DEFAULT);
        arrayList2.add(h0.CONTINUE);
        arrayList2.add(h0.DEFINE_FUNCTION);
        arrayList2.add(h0.FN);
        arrayList2.add(h0.IF);
        arrayList2.add(h0.QUOTE);
        arrayList2.add(h0.RETURN);
        arrayList2.add(h0.SWITCH);
        arrayList2.add(h0.TERNARY);
    }

    public static o c(s3 s3Var, ArrayList arrayList) {
        h0 h0Var = h0.ADD;
        c5.w.c0("FN", 2, arrayList);
        p pVarB = s3Var.b((p) arrayList.get(0));
        p pVarB2 = s3Var.b((p) arrayList.get(1));
        if (!(pVarB2 instanceof f)) {
            throw new IllegalArgumentException(String.format("FN requires an ArrayValue of parameter names found %s", pVarB2.getClass().getCanonicalName()));
        }
        ArrayList arrayListD = ((f) pVarB2).D();
        List arrayList2 = new ArrayList();
        if (arrayList.size() > 2) {
            arrayList2 = arrayList.subList(2, arrayList.size());
        }
        return new o(pVarB.h(), arrayListD, arrayList2, s3Var);
    }

    public static p d(d0 d0Var, Iterator it, p pVar) {
        if (it != null) {
            while (it.hasNext()) {
                p pVarC = d0Var.b((p) it.next()).c((f) pVar);
                if (pVarC instanceof h) {
                    h hVar = (h) pVarC;
                    if ("break".equals(hVar.f3491b)) {
                        return p.f3668i;
                    }
                    if ("return".equals(hVar.f3491b)) {
                        return hVar;
                    }
                }
            }
        }
        return p.f3668i;
    }

    public static p e(d0 d0Var, p pVar, p pVar2) {
        return d(d0Var, pVar.o(), pVar2);
    }

    public static p f(d0 d0Var, p pVar, p pVar2) {
        if (pVar instanceof Iterable) {
            return d(d0Var, ((Iterable) pVar).iterator(), pVar2);
        }
        throw new IllegalArgumentException("Non-iterable type in for...of loop.");
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0146  */
    @Override // com.google.android.gms.internal.measurement.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.p a(java.lang.String r11, com.google.android.gms.internal.measurement.s3 r12, java.util.ArrayList r13) {
        /*
            Method dump skipped, instructions count: 1282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.z.a(java.lang.String, com.google.android.gms.internal.measurement.s3, java.util.ArrayList):com.google.android.gms.internal.measurement.p");
    }
}
