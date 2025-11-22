package o3;

import android.os.Bundle;
import android.os.RemoteException;
import c5.e3;
import c5.i4;
import c5.t6;
import c5.v2;
import c5.y7;
import c5.z4;
import com.google.android.gms.common.api.internal.LifecycleCallback;

/* loaded from: classes.dex */
public final class d1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11120a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11121b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f11122c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f11123d;

    public /* synthetic */ d1(Object obj, Object obj2, Object obj3, int r42) {
        this.f11120a = r42;
        this.f11123d = obj;
        this.f11121b = obj2;
        this.f11122c = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f11120a;
        Object obj = this.f11122c;
        Object obj2 = this.f11121b;
        Object obj3 = this.f11123d;
        switch (r02) {
            case 0:
                e1 e1Var = (e1) obj3;
                if (e1Var.f11127b > 0) {
                    LifecycleCallback lifecycleCallback = (LifecycleCallback) obj2;
                    Bundle bundle = e1Var.f11128c;
                    lifecycleCallback.c(bundle != null ? bundle.getBundle((String) obj) : null);
                }
                if (e1Var.f11127b >= 2) {
                    ((LifecycleCallback) obj2).f();
                }
                if (e1Var.f11127b >= 3) {
                    ((LifecycleCallback) obj2).d();
                }
                if (e1Var.f11127b >= 4) {
                    ((LifecycleCallback) obj2).g();
                }
                if (e1Var.f11127b >= 5) {
                    ((LifecycleCallback) obj2).getClass();
                    break;
                }
                break;
            default:
                t6 t6Var = (t6) obj3;
                v2 v2Var = t6Var.f2003d;
                z4 z4Var = t6Var.f2115a;
                if (v2Var == null) {
                    e3 e3Var = ((i4) z4Var).f1635j;
                    i4.e(e3Var);
                    e3Var.f.a("Failed to send default event parameters to service");
                    break;
                } else {
                    try {
                        r3.r.i((y7) obj2);
                        v2Var.p((Bundle) obj, (y7) obj2);
                        break;
                    } catch (RemoteException e10) {
                        e3 e3Var2 = ((i4) z4Var).f1635j;
                        i4.e(e3Var2);
                        e3Var2.f.b(e10, "Failed to send default event parameters to service");
                        return;
                    }
                }
        }
    }
}
