package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class rc extends j {

    /* renamed from: c, reason: collision with root package name */
    public final w5 f3720c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f3721d;

    public rc(w5 w5Var) {
        super("require");
        this.f3721d = new HashMap();
        this.f3720c = w5Var;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final p a(s3 s3Var, List<p> list) {
        p pVar;
        c5.w.b0("require", 1, list);
        String strH = s3Var.b(list.get(0)).h();
        HashMap map = this.f3721d;
        if (map.containsKey(strH)) {
            return (p) map.get(strH);
        }
        w5 w5Var = this.f3720c;
        if (((Map) w5Var.f3816a).containsKey(strH)) {
            try {
                pVar = (p) ((Callable) ((Map) w5Var.f3816a).get(strH)).call();
            } catch (Exception unused) {
                String strValueOf = String.valueOf(strH);
                throw new IllegalStateException(strValueOf.length() != 0 ? "Failed to create API implementation: ".concat(strValueOf) : new String("Failed to create API implementation: "));
            }
        } else {
            pVar = p.f3668i;
        }
        if (pVar instanceof j) {
            map.put(strH, (j) pVar);
        }
        return pVar;
    }
}
