package c5;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class n5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1772a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1773b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1774c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1775d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ r3 f1776e;

    public n5(v5 v5Var, AtomicReference atomicReference, String str, String str2) {
        this.f1776e = v5Var;
        this.f1774c = atomicReference;
        this.f1773b = str;
        this.f1775d = str2;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        int r02 = this.f1772a;
        Object obj = this.f1775d;
        Object obj2 = this.f1774c;
        r3 r3Var = this.f1776e;
        switch (r02) {
            case 0:
                t6 t6VarS = ((i4) ((v5) r3Var).f2115a).s();
                t6VarS.b();
                t6VarS.c();
                t6VarS.t(new o6(t6VarS, (AtomicReference) obj2, this.f1773b, (String) obj, t6VarS.q(false)));
                return;
            default:
                byte[] bArrY = null;
                try {
                    try {
                        v2 v2Var = ((t6) r3Var).f2003d;
                        if (v2Var == null) {
                            e3 e3Var = ((i4) ((t6) r3Var).f2115a).f1635j;
                            i4.e(e3Var);
                            e3Var.f.a("Discarding data. Failed to send event to service to bundle");
                        } else {
                            bArrY = v2Var.Y((s) obj2, this.f1773b);
                            ((t6) r3Var).s();
                        }
                    } catch (RemoteException e10) {
                        e3 e3Var2 = ((i4) ((t6) r3Var).f2115a).f1635j;
                        i4.e(e3Var2);
                        e3Var2.f.b(e10, "Failed to send event to the service to bundle");
                    }
                    return;
                } finally {
                    v7 v7Var = ((i4) ((t6) r3Var).f2115a).f1638m;
                    i4.c(v7Var);
                    v7Var.B((com.google.android.gms.internal.measurement.y0) obj, bArrY);
                }
        }
    }

    public n5(t6 t6Var, s sVar, String str, com.google.android.gms.internal.measurement.y0 y0Var) {
        this.f1776e = t6Var;
        this.f1774c = sVar;
        this.f1773b = str;
        this.f1775d = y0Var;
    }
}
