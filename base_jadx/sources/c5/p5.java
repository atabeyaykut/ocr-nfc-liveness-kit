package c5;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class p5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1852a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1853b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r3 f1854c;

    public /* synthetic */ p5(r3 r3Var, Object obj, int r32) {
        this.f1852a = r32;
        this.f1854c = r3Var;
        this.f1853b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String packageName;
        String str;
        long j10;
        String str2;
        switch (this.f1852a) {
            case 0:
                synchronized (((AtomicReference) this.f1853b)) {
                    try {
                        AtomicReference atomicReference = (AtomicReference) this.f1853b;
                        r3 r3Var = this.f1854c;
                        atomicReference.set(Integer.valueOf(((i4) ((v5) r3Var).f2115a).f1633g.e(((i4) ((v5) r3Var).f2115a).o().h(), r2.N)));
                    } finally {
                        ((AtomicReference) this.f1853b).notify();
                    }
                }
                return;
            default:
                r3 r3Var2 = this.f1854c;
                t6 t6Var = (t6) r3Var2;
                v2 v2Var = t6Var.f2003d;
                if (v2Var == null) {
                    e3 e3Var = ((i4) t6Var.f2115a).f1635j;
                    i4.e(e3Var);
                    e3Var.f.a("Failed to send current screen to service");
                    return;
                }
                try {
                    b6 b6Var = (b6) this.f1853b;
                    if (b6Var == null) {
                        packageName = ((i4) ((t6) r3Var2).f2115a).f1628a.getPackageName();
                        str2 = null;
                        str = null;
                        j10 = 0;
                    } else {
                        long j11 = b6Var.f1421c;
                        String str3 = b6Var.f1419a;
                        String str4 = b6Var.f1420b;
                        packageName = ((i4) ((t6) r3Var2).f2115a).f1628a.getPackageName();
                        str = str4;
                        j10 = j11;
                        str2 = str3;
                    }
                    v2Var.Q(j10, str2, str, packageName);
                    ((t6) r3Var2).s();
                    return;
                } catch (RemoteException e10) {
                    e3 e3Var2 = ((i4) t6Var.f2115a).f1635j;
                    i4.e(e3Var2);
                    e3Var2.f.b(e10, "Failed to send current screen to the service");
                    return;
                }
        }
    }
}
