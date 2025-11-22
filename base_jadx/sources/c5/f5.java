package c5;

import android.os.Bundle;
import java.util.Iterator;
import java.util.TreeSet;
import org.json.JSONException;

/* loaded from: classes.dex */
public final /* synthetic */ class f5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1544a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Bundle f1545b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ v5 f1546c;

    public /* synthetic */ f5(v5 v5Var, Bundle bundle, int r32) {
        this.f1544a = r32;
        this.f1546c = v5Var;
        this.f1545b = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException, JSONException {
        int r12 = this.f1544a;
        Bundle bundle = this.f1545b;
        v5 v5Var = this.f1546c;
        switch (r12) {
            case 0:
                i4 i4Var = (i4) v5Var.f2115a;
                if (bundle != null) {
                    s3 s3Var = i4Var.f1634h;
                    i4.c(s3Var);
                    Bundle bundleA = s3Var.f1980y.a();
                    Iterator<String> it = bundle.keySet().iterator();
                    while (true) {
                        boolean zHasNext = it.hasNext();
                        com.google.android.gms.internal.measurement.w5 w5Var = v5Var.f2072r;
                        e3 e3Var = i4Var.f1635j;
                        v7 v7Var = i4Var.f1638m;
                        if (!zHasNext) {
                            i4.c(v7Var);
                            int r22 = i4Var.f1633g.d();
                            if (bundleA.size() > r22) {
                                Iterator it2 = new TreeSet(bundleA.keySet()).iterator();
                                int r92 = 0;
                                while (it2.hasNext()) {
                                    String str = (String) it2.next();
                                    r92++;
                                    if (r92 > r22) {
                                        bundleA.remove(str);
                                    }
                                }
                                i4.c(v7Var);
                                v7Var.getClass();
                                v7.w(w5Var, null, 26, null, null, 0);
                                i4.e(e3Var);
                                e3Var.f1510l.a("Too many default event parameters set. Discarding beyond event parameter limit");
                            }
                            s3 s3Var2 = i4Var.f1634h;
                            i4.c(s3Var2);
                            s3Var2.f1980y.b(bundleA);
                            t6 t6VarS = i4Var.s();
                            t6VarS.b();
                            t6VarS.c();
                            t6VarS.t(new o3.d1(t6VarS, t6VarS.q(false), bundleA, 1));
                            break;
                        } else {
                            String next = it.next();
                            Object obj = bundle.get(next);
                            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                                i4.c(v7Var);
                                v7Var.getClass();
                                if (v7.Q(obj)) {
                                    v7.w(w5Var, null, 27, null, null, 0);
                                }
                                i4.e(e3Var);
                                e3Var.f1510l.c(next, "Invalid default event parameter type. Name, value", obj);
                            } else if (v7.S(next)) {
                                i4.e(e3Var);
                                e3Var.f1510l.b(next, "Invalid default event parameter name. Name");
                            } else if (obj == null) {
                                bundleA.remove(next);
                            } else {
                                i4.c(v7Var);
                                if (v7Var.J("param", next, 100, obj)) {
                                    v7Var.x(bundleA, next, obj);
                                }
                            }
                        }
                    }
                } else {
                    s3 s3Var3 = i4Var.f1634h;
                    i4.c(s3Var3);
                    s3Var3.f1980y.b(new Bundle());
                    break;
                }
                break;
            default:
                v5Var.b();
                v5Var.c();
                r3.r.i(bundle);
                String string = bundle.getString("name");
                String string2 = bundle.getString("origin");
                r3.r.f(string);
                r3.r.f(string2);
                r3.r.i(bundle.get("value"));
                z4 z4Var = v5Var.f2115a;
                i4 i4Var2 = (i4) z4Var;
                if (!i4Var2.a()) {
                    e3 e3Var2 = i4Var2.f1635j;
                    i4.e(e3Var2);
                    e3Var2.f1513p.a("Conditional property not set since app measurement is disabled");
                    break;
                } else {
                    r7 r7Var = new r7(bundle.getLong("triggered_timestamp"), bundle.get("value"), string, string2);
                    try {
                        v7 v7Var2 = ((i4) z4Var).f1638m;
                        i4.c(v7Var2);
                        s sVarP0 = v7Var2.p0(bundle.getString("app_id"), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, true);
                        v7 v7Var3 = ((i4) z4Var).f1638m;
                        i4.c(v7Var3);
                        s sVarP02 = v7Var3.p0(bundle.getString("app_id"), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, true);
                        v7 v7Var4 = ((i4) z4Var).f1638m;
                        i4.c(v7Var4);
                        i4Var2.s().h(new b(bundle.getString("app_id"), string2, r7Var, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), sVarP02, bundle.getLong("trigger_timeout"), sVarP0, bundle.getLong("time_to_live"), v7Var4.p0(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, true)));
                        break;
                    } catch (IllegalArgumentException unused) {
                        return;
                    }
                }
        }
    }
}
