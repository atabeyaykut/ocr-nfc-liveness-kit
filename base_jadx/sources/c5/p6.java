package c5;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class p6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1855a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1856b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ y7 f1857c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.y0 f1858d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ t6 f1859e;

    public p6(t6 t6Var, String str, String str2, y7 y7Var, com.google.android.gms.internal.measurement.y0 y0Var) {
        this.f1859e = t6Var;
        this.f1855a = str;
        this.f1856b = str2;
        this.f1857c = y7Var;
        this.f1858d = y0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        v7 v7Var;
        y7 y7Var = this.f1857c;
        String str = this.f1856b;
        String str2 = this.f1855a;
        com.google.android.gms.internal.measurement.y0 y0Var = this.f1858d;
        t6 t6Var = this.f1859e;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            try {
                v2 v2Var = t6Var.f2003d;
                z4 z4Var = t6Var.f2115a;
                if (v2Var == null) {
                    e3 e3Var = ((i4) z4Var).f1635j;
                    i4.e(e3Var);
                    e3Var.f.c(str2, "Failed to get conditional properties; not connected to service", str);
                } else {
                    r3.r.i(y7Var);
                    arrayList = v7.q(v2Var.b0(str2, str, y7Var));
                    t6Var.s();
                }
                v7Var = ((i4) z4Var).f1638m;
            } catch (RemoteException e10) {
                e3 e3Var2 = ((i4) t6Var.f2115a).f1635j;
                i4.e(e3Var2);
                e3Var2.f.d("Failed to get conditional properties; remote exception", str2, str, e10);
                v7Var = ((i4) t6Var.f2115a).f1638m;
            }
            i4.c(v7Var);
            v7Var.z(y0Var, arrayList);
        } catch (Throwable th2) {
            v7 v7Var2 = ((i4) t6Var.f2115a).f1638m;
            i4.c(v7Var2);
            v7Var2.z(y0Var, arrayList);
            throw th2;
        }
    }
}
