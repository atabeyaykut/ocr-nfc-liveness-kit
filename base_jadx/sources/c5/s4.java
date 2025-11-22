package c5;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class s4 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1981a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1982b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1983c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1984d;

    public /* synthetic */ s4(Object obj, Object obj2, Object obj3, int r42) {
        this.f1981a = r42;
        this.f1984d = obj;
        this.f1982b = obj2;
        this.f1983c = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        s3 s3Var;
        switch (this.f1981a) {
            case 0:
                w4 w4Var = (w4) this.f1984d;
                w4Var.f2101a.a();
                w4Var.f2101a.e((s) this.f1982b, (String) this.f1983c);
                return;
            default:
                synchronized (((AtomicReference) this.f1982b)) {
                    try {
                        try {
                            s3Var = ((i4) ((t6) this.f1984d).f2115a).f1634h;
                            i4.c(s3Var);
                        } catch (RemoteException e10) {
                            e3 e3Var = ((i4) ((t6) this.f1984d).f2115a).f1635j;
                            i4.e(e3Var);
                            e3Var.f.b(e10, "Failed to get app instance id");
                        }
                        if (s3Var.n().f()) {
                            Object obj = this.f1984d;
                            v2 v2Var = ((t6) obj).f2003d;
                            if (v2Var == null) {
                                e3 e3Var2 = ((i4) ((t6) obj).f2115a).f1635j;
                                i4.e(e3Var2);
                                e3Var2.f.a("Failed to get app instance id");
                                atomicReference = (AtomicReference) this.f1982b;
                            } else {
                                r3.r.i((y7) this.f1983c);
                                ((AtomicReference) this.f1982b).set(v2Var.o((y7) this.f1983c));
                                String str = (String) ((AtomicReference) this.f1982b).get();
                                if (str != null) {
                                    v5 v5Var = ((i4) ((t6) this.f1984d).f2115a).f1642r;
                                    i4.d(v5Var);
                                    v5Var.f2063g.set(str);
                                    s3 s3Var2 = ((i4) ((t6) this.f1984d).f2115a).f1634h;
                                    i4.c(s3Var2);
                                    s3Var2.f.b(str);
                                }
                                ((t6) this.f1984d).s();
                                atomicReference = (AtomicReference) this.f1982b;
                            }
                        } else {
                            e3 e3Var3 = ((i4) ((t6) this.f1984d).f2115a).f1635j;
                            i4.e(e3Var3);
                            e3Var3.f1510l.a("Analytics storage consent denied; will not get app instance id");
                            v5 v5Var2 = ((i4) ((t6) this.f1984d).f2115a).f1642r;
                            i4.d(v5Var2);
                            v5Var2.f2063g.set(null);
                            s3 s3Var3 = ((i4) ((t6) this.f1984d).f2115a).f1634h;
                            i4.c(s3Var3);
                            s3Var3.f.b(null);
                            ((AtomicReference) this.f1982b).set(null);
                            atomicReference = (AtomicReference) this.f1982b;
                        }
                        atomicReference.notify();
                    } catch (Throwable th2) {
                        ((AtomicReference) this.f1982b).notify();
                        throw th2;
                    }
                }
                return;
        }
    }
}
