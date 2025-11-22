package c5;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class j6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1664a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y7 f1665b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ t6 f1666c;

    public /* synthetic */ j6(t6 t6Var, y7 y7Var, int r32) {
        this.f1664a = r32;
        this.f1666c = t6Var;
        this.f1665b = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        int r02 = this.f1664a;
        t6 t6Var = this.f1666c;
        y7 y7Var = this.f1665b;
        switch (r02) {
            case 0:
                v2 v2Var = t6Var.f2003d;
                z4 z4Var = t6Var.f2115a;
                if (v2Var == null) {
                    e3 e3Var = ((i4) z4Var).f1635j;
                    i4.e(e3Var);
                    e3Var.f.a("Discarding data. Failed to send app launch");
                    break;
                } else {
                    try {
                        r3.r.i(y7Var);
                        v2Var.d0(y7Var);
                        ((i4) z4Var).p().n();
                        t6Var.g(v2Var, null, y7Var);
                        t6Var.s();
                        break;
                    } catch (RemoteException e10) {
                        e3 e3Var2 = ((i4) z4Var).f1635j;
                        i4.e(e3Var2);
                        e3Var2.f.b(e10, "Failed to send app launch to the service");
                    }
                }
            default:
                v2 v2Var2 = t6Var.f2003d;
                z4 z4Var2 = t6Var.f2115a;
                if (v2Var2 == null) {
                    e3 e3Var3 = ((i4) z4Var2).f1635j;
                    i4.e(e3Var3);
                    e3Var3.f.a("Failed to send consent settings to service");
                    break;
                } else {
                    try {
                        r3.r.i(y7Var);
                        v2Var2.s0(y7Var);
                        t6Var.s();
                        break;
                    } catch (RemoteException e11) {
                        e3 e3Var4 = ((i4) z4Var2).f1635j;
                        i4.e(e3Var4);
                        e3Var4.f.b(e11, "Failed to send consent settings to the service");
                        return;
                    }
                }
        }
    }
}
