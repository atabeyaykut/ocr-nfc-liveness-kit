package l3;

import android.os.IBinder;
import android.os.RemoteException;
import c5.o7;
import c5.w4;
import c5.y7;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9360a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9361b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ IBinder f9362c;

    public m(w4 w4Var, y7 y7Var) {
        this.f9362c = w4Var;
        this.f9361b = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String message;
        int r12 = 0;
        switch (this.f9360a) {
            case 0:
                o oVar = (o) this.f9361b;
                IBinder iBinder = this.f9362c;
                synchronized (oVar) {
                    if (iBinder == null) {
                        message = "Null service connection";
                    } else {
                        try {
                            try {
                                oVar.f9368c = new p(iBinder);
                                oVar.f9366a = 2;
                                oVar.f.f9379b.execute(new l(r12, oVar));
                            } catch (RemoteException e10) {
                                message = e10.getMessage();
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    oVar.a(0, message);
                }
                return;
            default:
                w4 w4Var = (w4) this.f9362c;
                w4Var.f2101a.a();
                o7 o7Var = w4Var.f2101a;
                y7 y7Var = (y7) this.f9361b;
                o7Var.l().b();
                o7Var.b();
                r3.r.f(y7Var.f2153a);
                c5.f fVarB = c5.f.b(y7Var.f2172y);
                String str = y7Var.f2153a;
                c5.f fVarL = o7Var.L(str);
                o7Var.m().f1513p.c(str, "Setting consent, package, consent", fVarB);
                o7Var.r(str, fVarB);
                Boolean bool = Boolean.FALSE;
                if ((fVarB.f1531a == bool && fVarL.f1531a != bool) || (fVarB.f1532b == bool && fVarL.f1532b != bool)) {
                    r12 = 1;
                }
                if (r12 != 0) {
                    o7Var.p(y7Var);
                    return;
                }
                return;
        }
    }

    public /* synthetic */ m(o oVar, IBinder iBinder) {
        this.f9361b = oVar;
        this.f9362c = iBinder;
    }
}
