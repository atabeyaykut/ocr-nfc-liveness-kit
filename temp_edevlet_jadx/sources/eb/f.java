package eb;

import eb.v;
import jb.a;
import kb.d;
import mb.h;

/* loaded from: classes2.dex */
public final class f {
    public static final v a(gb.m proto, ib.c nameResolver, ib.g typeTable, boolean z10, boolean z11, boolean z12) {
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        h.e<gb.m, a.c> propertySignature = jb.a.f8413d;
        kotlin.jvm.internal.h.e(propertySignature, "propertySignature");
        a.c cVar = (a.c) ib.e.a(proto, propertySignature);
        if (cVar == null) {
            return null;
        }
        if (z10) {
            d.a aVarB = kb.h.b(proto, nameResolver, typeTable, z12);
            if (aVarB == null) {
                return null;
            }
            return v.a.b(aVarB);
        }
        if (z11) {
            if ((cVar.f8446b & 2) == 2) {
                a.b bVar = cVar.f8448d;
                kotlin.jvm.internal.h.e(bVar, "signature.syntheticMethod");
                return v.a.c(nameResolver, bVar);
            }
        }
        return null;
    }
}
