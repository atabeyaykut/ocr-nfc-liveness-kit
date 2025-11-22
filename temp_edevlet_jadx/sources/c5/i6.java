package c5;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class i6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y7 f1650a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.y0 f1651b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ t6 f1652c;

    public i6(t6 t6Var, y7 y7Var, com.google.android.gms.internal.measurement.y0 y0Var) {
        this.f1652c = t6Var;
        this.f1650a = y7Var;
        this.f1651b = y0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        v7 v7Var;
        y7 y7Var = this.f1650a;
        com.google.android.gms.internal.measurement.y0 y0Var = this.f1651b;
        t6 t6Var = this.f1652c;
        String strO = null;
        try {
            try {
                s3 s3Var = ((i4) t6Var.f2115a).f1634h;
                i4.c(s3Var);
                boolean zF = s3Var.n().f();
                z4 z4Var = t6Var.f2115a;
                if (zF) {
                    v2 v2Var = t6Var.f2003d;
                    if (v2Var == null) {
                        e3 e3Var = ((i4) z4Var).f1635j;
                        i4.e(e3Var);
                        e3Var.f.a("Failed to get app instance id");
                    } else {
                        r3.r.i(y7Var);
                        strO = v2Var.o(y7Var);
                        if (strO != null) {
                            v5 v5Var = ((i4) z4Var).f1642r;
                            i4.d(v5Var);
                            v5Var.f2063g.set(strO);
                            s3 s3Var2 = ((i4) z4Var).f1634h;
                            i4.c(s3Var2);
                            s3Var2.f.b(strO);
                        }
                        t6Var.s();
                    }
                } else {
                    e3 e3Var2 = ((i4) z4Var).f1635j;
                    i4.e(e3Var2);
                    e3Var2.f1510l.a("Analytics storage consent denied; will not get app instance id");
                    v5 v5Var2 = ((i4) z4Var).f1642r;
                    i4.d(v5Var2);
                    v5Var2.f2063g.set(null);
                    s3 s3Var3 = ((i4) z4Var).f1634h;
                    i4.c(s3Var3);
                    s3Var3.f.b(null);
                }
                v7Var = ((i4) z4Var).f1638m;
            } catch (RemoteException e10) {
                e3 e3Var3 = ((i4) t6Var.f2115a).f1635j;
                i4.e(e3Var3);
                e3Var3.f.b(e10, "Failed to get app instance id");
                v7Var = ((i4) t6Var.f2115a).f1638m;
            }
            i4.c(v7Var);
            v7Var.E(strO, y0Var);
        } catch (Throwable th2) {
            v7 v7Var2 = ((i4) t6Var.f2115a).f1638m;
            i4.c(v7Var2);
            v7Var2.E(null, y0Var);
            throw th2;
        }
    }
}
