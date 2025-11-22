package l3;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import c5.a7;
import c5.c7;
import c5.e3;
import c5.e7;
import c5.f6;
import c5.i4;
import c5.r2;
import c5.s3;
import c5.s6;
import c5.t6;
import c5.v5;
import c5.v7;
import c5.z6;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9356a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9357b;

    public /* synthetic */ k(int r12, Object obj) {
        this.f9356a = r12;
        this.f9357b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f9356a;
        Object obj = this.f9357b;
        switch (r02) {
            case 0:
                ((o) obj).a(2, "Service disconnected");
                break;
            case 1:
                s6 s6Var = (s6) obj;
                t6 t6Var = s6Var.f1992c;
                Context context = ((i4) t6Var.f2115a).f1628a;
                ((i4) s6Var.f1992c.f2115a).getClass();
                t6.u(t6Var, new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
                break;
            default:
                z6 z6Var = (z6) obj;
                a7 a7Var = z6Var.f2185c;
                long j10 = z6Var.f2183a;
                a7Var.f1398b.b();
                e7 e7Var = a7Var.f1398b;
                e3 e3Var = ((i4) e7Var.f2115a).f1635j;
                i4.e(e3Var);
                e3Var.f1512n.a("Application going to the background");
                i4 i4Var = (i4) e7Var.f2115a;
                s3 s3Var = i4Var.f1634h;
                i4.c(s3Var);
                boolean z10 = true;
                s3Var.f1975r.a(true);
                Bundle bundle = new Bundle();
                if (!i4Var.f1633g.q()) {
                    c7 c7Var = e7Var.f1524e;
                    c7Var.f1463c.a();
                    boolean zP = i4Var.f1633g.p(null, r2.f1899f0);
                    long j11 = z6Var.f2184b;
                    if (zP) {
                        long j12 = c7Var.f1462b;
                        c7Var.f1462b = j11;
                        bundle.putLong("_et", j11 - j12);
                        f6 f6Var = i4Var.f1641q;
                        i4.d(f6Var);
                        v7.t(f6Var.o(true), bundle, true);
                    } else {
                        z10 = false;
                    }
                    c7Var.a(false, z10, j11);
                }
                v5 v5Var = i4Var.f1642r;
                i4.d(v5Var);
                v5Var.o(j10, bundle, "auto", "_ab");
                break;
        }
    }
}
