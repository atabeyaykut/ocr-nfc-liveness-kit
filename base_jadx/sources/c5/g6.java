package c5;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public final class g6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1576a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1577b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ y7 f1578c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f1579d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.y0 f1580e;
    public final /* synthetic */ t6 f;

    public g6(t6 t6Var, String str, String str2, y7 y7Var, boolean z10, com.google.android.gms.internal.measurement.y0 y0Var) {
        this.f = t6Var;
        this.f1576a = str;
        this.f1577b = str2;
        this.f1578c = y7Var;
        this.f1579d = z10;
        this.f1580e = y0Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        Bundle bundle;
        y7 y7Var = this.f1578c;
        String str = this.f1576a;
        com.google.android.gms.internal.measurement.y0 y0Var = this.f1580e;
        t6 t6Var = this.f;
        Bundle bundle2 = new Bundle();
        try {
            try {
                v2 v2Var = t6Var.f2003d;
                z4 z4Var = t6Var.f2115a;
                String str2 = this.f1577b;
                if (v2Var == null) {
                    e3 e3Var = ((i4) z4Var).f1635j;
                    i4.e(e3Var);
                    e3Var.f.c(str, "Failed to get user properties; not connected to service", str2);
                    v7 v7Var = ((i4) z4Var).f1638m;
                    i4.c(v7Var);
                    v7Var.A(y0Var, bundle2);
                    return;
                }
                r3.r.i(y7Var);
                List<r7> listS = v2Var.S(str, str2, this.f1579d, y7Var);
                bundle = new Bundle();
                if (listS != null) {
                    for (r7 r7Var : listS) {
                        String str3 = r7Var.f1954e;
                        String str4 = r7Var.f1951b;
                        if (str3 != null) {
                            bundle.putString(str4, str3);
                        } else {
                            Long l5 = r7Var.f1953d;
                            if (l5 != null) {
                                bundle.putLong(str4, l5.longValue());
                            } else {
                                Double d10 = r7Var.f1955g;
                                if (d10 != null) {
                                    bundle.putDouble(str4, d10.doubleValue());
                                }
                            }
                        }
                    }
                }
                try {
                    t6Var.s();
                    v7 v7Var2 = ((i4) z4Var).f1638m;
                    i4.c(v7Var2);
                    v7Var2.A(y0Var, bundle);
                } catch (RemoteException e10) {
                    e = e10;
                    bundle2 = bundle;
                    e3 e3Var2 = ((i4) t6Var.f2115a).f1635j;
                    i4.e(e3Var2);
                    e3Var2.f.c(str, "Failed to get user properties; remote exception", e);
                    v7 v7Var3 = ((i4) t6Var.f2115a).f1638m;
                    i4.c(v7Var3);
                    v7Var3.A(y0Var, bundle2);
                } catch (Throwable th2) {
                    th = th2;
                    v7 v7Var4 = ((i4) t6Var.f2115a).f1638m;
                    i4.c(v7Var4);
                    v7Var4.A(y0Var, bundle);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bundle = bundle2;
            }
        } catch (RemoteException e11) {
            e = e11;
        }
    }
}
