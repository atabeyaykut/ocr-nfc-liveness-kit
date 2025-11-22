package c5;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class k4 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1675a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s3.a f1676b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1677c;

    public /* synthetic */ k4(Object obj, s3.a aVar, int r32) {
        this.f1675a = r32;
        this.f1677c = obj;
        this.f1676b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f1675a;
        s3.a aVar = this.f1676b;
        Object obj = this.f1677c;
        switch (r02) {
            case 0:
                w4 w4Var = (w4) obj;
                w4Var.f2101a.a();
                b bVar = (b) aVar;
                Object objE = bVar.f1402c.E();
                o7 o7Var = w4Var.f2101a;
                o7Var.getClass();
                if (objE != null) {
                    String str = bVar.f1400a;
                    r3.r.i(str);
                    y7 y7VarY = o7Var.y(str);
                    if (y7VarY != null) {
                        o7Var.q(bVar, y7VarY);
                        break;
                    }
                } else {
                    String str2 = bVar.f1400a;
                    r3.r.i(str2);
                    y7 y7VarY2 = o7Var.y(str2);
                    if (y7VarY2 != null) {
                        o7Var.n(bVar, y7VarY2);
                        break;
                    }
                }
                break;
            default:
                t6 t6Var = (t6) obj;
                v2 v2Var = t6Var.f2003d;
                z4 z4Var = t6Var.f2115a;
                if (v2Var != null) {
                    try {
                        r3.r.i((y7) aVar);
                        v2Var.r((y7) aVar);
                    } catch (RemoteException e10) {
                        e3 e3Var = ((i4) z4Var).f1635j;
                        i4.e(e3Var);
                        e3Var.f.b(e10, "Failed to reset data on the service: remote exception");
                    }
                    t6Var.s();
                    break;
                } else {
                    e3 e3Var2 = ((i4) z4Var).f1635j;
                    i4.e(e3Var2);
                    e3Var2.f.a("Failed to reset data on the service: not connected to service");
                    break;
                }
        }
    }
}
