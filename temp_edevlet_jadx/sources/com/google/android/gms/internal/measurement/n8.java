package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class n8 extends j {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3644c = 0;

    /* renamed from: d, reason: collision with root package name */
    public final Object f3645d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n8(p4.c7 c7Var) {
        super("getValue");
        this.f3645d = c7Var;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final p a(s3 s3Var, List list) {
        Object obj;
        int r02 = this.f3644c;
        Object obj2 = this.f3645d;
        switch (r02) {
            case 0:
                c5.w.b0("getValue", 2, list);
                p pVarB = s3Var.b((p) list.get(0));
                p pVarB2 = s3Var.b((p) list.get(1));
                String strH = pVarB.h();
                p4.c7 c7Var = (p4.c7) obj2;
                Map map = (Map) ((c5.c4) c7Var.f12290b).f1440d.get((String) c7Var.f12289a);
                String str = (map == null || !map.containsKey(strH)) ? null : (String) map.get(strH);
                return str != null ? new t(str) : pVarB2;
            default:
                c5.w.b0(this.f3561a, 3, list);
                s3Var.b((p) list.get(0)).h();
                p pVarB3 = s3Var.b((p) list.get(1));
                if (!(pVarB3 instanceof o)) {
                    throw new IllegalArgumentException("Invalid callback type");
                }
                p pVarB4 = s3Var.b((p) list.get(2));
                if (!(pVarB4 instanceof m)) {
                    throw new IllegalArgumentException("Invalid callback params");
                }
                m mVar = (m) pVarB4;
                if (!mVar.m("type")) {
                    throw new IllegalArgumentException("Undefined rule type");
                }
                String strH2 = mVar.x("type").h();
                int r72 = mVar.m("priority") ? c5.w.Q(mVar.x("priority").i().doubleValue()) : 1000;
                qd.f fVar = (qd.f) obj2;
                o oVar = (o) pVarB3;
                fVar.getClass();
                if ("create".equals(strH2)) {
                    obj = fVar.f13574b;
                } else {
                    if (!"edit".equals(strH2)) {
                        String strValueOf = String.valueOf(strH2);
                        throw new IllegalStateException(strValueOf.length() != 0 ? "Unknown callback type: ".concat(strValueOf) : new String("Unknown callback type: "));
                    }
                    obj = fVar.f13573a;
                }
                TreeMap treeMap = (TreeMap) obj;
                if (treeMap.containsKey(Integer.valueOf(r72))) {
                    r72 = ((Integer) treeMap.lastKey()).intValue() + 1;
                }
                treeMap.put(Integer.valueOf(r72), oVar);
                return p.f3668i;
        }
    }

    public n8(qd.f fVar) {
        super("internal.registerCallback");
        this.f3645d = fVar;
    }
}
