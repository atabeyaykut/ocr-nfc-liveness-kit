package com.google.android.gms.internal.measurement;

import androidx.core.app.NotificationCompat;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class s6 extends j {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3737c = 1;

    /* renamed from: d, reason: collision with root package name */
    public final Object f3738d;

    public s6(c5.b4 b4Var) {
        super("internal.logger");
        this.f3738d = b4Var;
        HashMap map = this.f3562b;
        map.put("log", new pc(this, false, true));
        map.put(NotificationCompat.GROUP_KEY_SILENT, new lb(0));
        ((j) map.get(NotificationCompat.GROUP_KEY_SILENT)).u("log", new pc(this, true, true));
        map.put("unmonitored", new mc());
        ((j) map.get("unmonitored")).u("log", new pc(this, false, false));
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final p a(s3 s3Var, List list) {
        u uVar = p.f3668i;
        switch (this.f3737c) {
            case 0:
                c5.w.b0(this.f3561a, 3, list);
                String strH = s3Var.b((p) list.get(0)).h();
                long jI = (long) c5.w.I(s3Var.b((p) list.get(1)).i().doubleValue());
                p pVarB = s3Var.b((p) list.get(2));
                HashMap mapA0 = pVarB instanceof m ? c5.w.a0((m) pVarB) : new HashMap();
                c cVar = (c) this.f3738d;
                cVar.getClass();
                cVar.f3406c.add(new b(strH, jI, mapA0));
                break;
        }
        return uVar;
    }

    public s6(c cVar) {
        super("internal.eventLogger");
        this.f3738d = cVar;
    }
}
