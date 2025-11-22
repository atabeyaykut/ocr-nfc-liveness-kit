package c5;

import android.app.job.JobParameters;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.qb;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class r4 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1938a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1939b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1940c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1941d;

    public r4(w4 w4Var, s sVar, y7 y7Var) {
        this.f1941d = w4Var;
        this.f1939b = sVar;
        this.f1940c = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        q qVar;
        int r02 = this.f1938a;
        Object obj = this.f1940c;
        Object obj2 = this.f1939b;
        Object obj3 = this.f1941d;
        switch (r02) {
            case 0:
                w4 w4Var = (w4) obj3;
                s sVarZ = (s) obj2;
                w4Var.getClass();
                boolean zEquals = "_cmp".equals(sVarZ.f1956a);
                o7 o7Var = w4Var.f2101a;
                if (zEquals && (qVar = sVarZ.f1957b) != null) {
                    Bundle bundle = qVar.f1861a;
                    if (bundle.size() != 0) {
                        String string = bundle.getString("_cis");
                        if ("referrer broadcast".equals(string) || "referrer API".equals(string)) {
                            o7Var.m().f1511m.b(sVarZ.toString(), "Event has been filtered ");
                            sVarZ = new s("_cmpx", sVarZ.f1957b, sVarZ.f1958c, sVarZ.f1959d);
                        }
                    }
                }
                String str = sVarZ.f1956a;
                qb.c();
                e eVarK = o7Var.K();
                q2<Boolean> q2Var = r2.f1921q0;
                com.google.android.gms.internal.measurement.s0 s0Var = null;
                y7 y7Var = (y7) obj;
                if (!eVarK.p(null, q2Var)) {
                    o7Var.a();
                    o7Var.d(sVarZ, y7Var);
                    break;
                } else {
                    c4 c4Var = o7Var.f1818a;
                    q7 q7Var = o7Var.f1823g;
                    o7.I(c4Var);
                    if (c4Var.n(y7Var.f2153a)) {
                        c3 c3Var = o7Var.m().f1513p;
                        String str2 = y7Var.f2153a;
                        c3Var.b(str2, "EES config found for");
                        c4 c4Var2 = o7Var.f1818a;
                        o7.I(c4Var2);
                        qb.c();
                        if (((i4) c4Var2.f2115a).f1633g.p(null, q2Var) && !TextUtils.isEmpty(str2)) {
                            s0Var = c4Var2.f1444j.get(str2);
                        }
                        if (s0Var != null) {
                            try {
                                com.google.android.gms.internal.measurement.c cVar = s0Var.f3726c;
                                o7.I(q7Var);
                                HashMap mapG = q7Var.G(sVarZ.f1957b.E(), true);
                                String strH0 = b8.f.H0(a6.a.f114e, str, a6.a.f112c);
                                if (strH0 == null) {
                                    strH0 = str;
                                }
                                if (s0Var.b(new com.google.android.gms.internal.measurement.b(strH0, sVarZ.f1959d, mapG))) {
                                    if (!cVar.f3405b.equals(cVar.f3404a)) {
                                        o7Var.m().f1513p.b(str, "EES edited event");
                                        o7.I(q7Var);
                                        sVarZ = q7Var.z(cVar.f3405b);
                                    }
                                    o7Var.a();
                                    o7Var.d(sVarZ, y7Var);
                                    if (!cVar.f3406c.isEmpty()) {
                                        Iterator it = cVar.f3406c.iterator();
                                        while (it.hasNext()) {
                                            com.google.android.gms.internal.measurement.b bVar = (com.google.android.gms.internal.measurement.b) it.next();
                                            o7Var.m().f1513p.b(bVar.f3379a, "EES logging created event");
                                            o7.I(q7Var);
                                            s sVarZ2 = q7Var.z(bVar);
                                            o7Var.a();
                                            o7Var.d(sVarZ2, y7Var);
                                        }
                                        break;
                                    }
                                }
                            } catch (com.google.android.gms.internal.measurement.n1 unused) {
                                o7Var.m().f.c(y7Var.f2154b, "EES error. appId, eventName", str);
                            }
                            o7Var.m().f1513p.b(str, "EES was not applied to event");
                        } else {
                            o7Var.m().f1513p.b(str2, "EES not loaded for");
                        }
                    }
                    o7Var.a();
                    o7Var.d(sVarZ, y7Var);
                    break;
                }
                break;
            default:
                x6 x6Var = (x6) obj2;
                x6Var.getClass();
                ((e3) obj).f1513p.a("AppMeasurementJobService processed last upload request.");
                x6Var.f2121a.c((JobParameters) obj3);
                break;
        }
    }

    public /* synthetic */ r4(x6 x6Var, e3 e3Var, JobParameters jobParameters) {
        this.f1939b = x6Var;
        this.f1940c = e3Var;
        this.f1941d = jobParameters;
    }
}
