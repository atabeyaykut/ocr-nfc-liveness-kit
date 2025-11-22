package o3;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.text.TextUtils;
import c5.e3;
import c5.i4;
import c5.o7;
import c5.q7;
import c5.v7;
import c5.w4;
import c5.z4;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.internal.measurement.g3;
import com.google.android.gms.internal.measurement.h3;
import com.google.android.gms.internal.measurement.k3;
import com.google.android.gms.internal.measurement.l3;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class f1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11131a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11132b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f11133c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f11134d;

    public /* synthetic */ f1(w4 w4Var, String str, Bundle bundle) {
        this.f11131a = 1;
        this.f11133c = w4Var;
        this.f11132b = str;
        this.f11134d = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c5.q qVar;
        int r02 = this.f11131a;
        String str = this.f11132b;
        Object obj = this.f11133c;
        Object obj2 = this.f11134d;
        switch (r02) {
            case 0:
                g1 g1Var = (g1) obj2;
                if (g1Var.f11137b > 0) {
                    LifecycleCallback lifecycleCallback = (LifecycleCallback) obj;
                    Bundle bundle = g1Var.f11138c;
                    lifecycleCallback.c(bundle != null ? bundle.getBundle(str) : null);
                }
                if (g1Var.f11137b >= 2) {
                    ((LifecycleCallback) obj).f();
                }
                if (g1Var.f11137b >= 3) {
                    ((LifecycleCallback) obj).d();
                }
                if (g1Var.f11137b >= 4) {
                    ((LifecycleCallback) obj).g();
                }
                if (g1Var.f11137b >= 5) {
                    ((LifecycleCallback) obj).getClass();
                    break;
                }
                break;
            default:
                Bundle bundle2 = (Bundle) obj2;
                c5.i iVar = ((w4) obj).f2101a.f1820c;
                o7.I(iVar);
                iVar.b();
                iVar.c();
                z4 z4Var = iVar.f2115a;
                i4 i4Var = (i4) z4Var;
                r3.r.f(str);
                r3.r.f("dep");
                TextUtils.isEmpty("");
                if (bundle2 == null || bundle2.isEmpty()) {
                    qVar = new c5.q(new Bundle());
                } else {
                    Bundle bundle3 = new Bundle(bundle2);
                    Iterator<String> it = bundle3.keySet().iterator();
                    while (it.hasNext()) {
                        String next = it.next();
                        if (next == null) {
                            e3 e3Var = i4Var.f1635j;
                            i4.e(e3Var);
                            e3Var.f.a("Param name can't be null");
                        } else {
                            v7 v7Var = i4Var.f1638m;
                            i4.c(v7Var);
                            Object objG = v7Var.g(bundle3.get(next), next);
                            if (objG == null) {
                                e3 e3Var2 = i4Var.f1635j;
                                i4.e(e3Var2);
                                e3Var2.f1508j.b(i4Var.f1639n.e(next), "Param value can't be null");
                            } else {
                                v7 v7Var2 = i4Var.f1638m;
                                i4.c(v7Var2);
                                v7Var2.x(bundle3, next, objG);
                            }
                        }
                        it.remove();
                    }
                    qVar = new c5.q(bundle3);
                }
                q7 q7Var = iVar.f1653b.f1823g;
                o7.I(q7Var);
                g3 g3VarV = h3.v();
                if (g3VarV.f3643c) {
                    g3VarV.i();
                    g3VarV.f3643c = false;
                }
                h3.H(0L, (h3) g3VarV.f3642b);
                Bundle bundle4 = qVar.f1861a;
                for (String str2 : bundle4.keySet()) {
                    k3 k3VarV = l3.v();
                    k3VarV.q(str2);
                    Object obj3 = bundle4.get(str2);
                    r3.r.i(obj3);
                    q7Var.H(k3VarV, obj3);
                    g3VarV.q(k3VarV);
                }
                byte[] bArrI = g3VarV.f().i();
                e3 e3Var3 = i4Var.f1635j;
                i4.e(e3Var3);
                e3Var3.f1513p.c(i4Var.f1639n.d(str), "Saving default event parameters, appId, data size", Integer.valueOf(bArrI.length));
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_id", str);
                contentValues.put("parameters", bArrI);
                try {
                    if (iVar.C().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                        e3 e3Var4 = ((i4) z4Var).f1635j;
                        i4.e(e3Var4);
                        e3Var4.f.b(e3.q(str), "Failed to insert default event parameters (got -1). appId");
                        break;
                    }
                } catch (SQLiteException e10) {
                    e3 e3Var5 = i4Var.f1635j;
                    i4.e(e3Var5);
                    e3Var5.f.c(e3.q(str), "Error storing default event parameters. appId", e10);
                    return;
                }
                break;
        }
    }

    public f1(g1 g1Var, LifecycleCallback lifecycleCallback) {
        this.f11131a = 0;
        this.f11134d = g1Var;
        this.f11133c = lifecycleCallback;
        this.f11132b = "ConnectionlessLifecycleHelper";
    }
}
