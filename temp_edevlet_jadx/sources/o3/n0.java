package o3;

import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import c5.i4;
import c5.o7;
import c5.r2;
import c5.v5;
import c5.v7;
import c5.w4;
import c5.y7;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import r3.k;
import r3.n1;

/* loaded from: classes.dex */
public final class n0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11169a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11170b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f11171c;

    public /* synthetic */ n0(int r12, Object obj, Object obj2) {
        this.f11169a = r12;
        this.f11171c = obj;
        this.f11170b = obj2;
    }

    private final void a() {
        synchronized (((h5.s) this.f11171c).f6859c) {
            try {
                Object obj = ((h5.s) this.f11171c).f6860d;
                if (((h5.g) obj) != null) {
                    ((h5.g) obj).onSuccess(((h5.k) this.f11170b).i());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        r3.k n1Var;
        Set<Scope> set;
        com.google.android.gms.internal.clearcut.f fVar;
        h5.s sVar;
        h5.z zVar;
        switch (this.f11169a) {
            case 0:
                p0 p0Var = (p0) this.f11171c;
                f5.l lVar = (f5.l) this.f11170b;
                m3.b bVar = lVar.f5530b;
                if (bVar.f9926b == 0) {
                    r3.l0 l0Var = lVar.f5531c;
                    r3.r.i(l0Var);
                    bVar = l0Var.f14014c;
                    if (bVar.f9926b == 0) {
                        o0 o0Var = p0Var.f11182g;
                        IBinder iBinder = l0Var.f14013b;
                        if (iBinder == null) {
                            n1Var = null;
                        } else {
                            int r32 = k.a.f14010a;
                            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                            n1Var = iInterfaceQueryLocalInterface instanceof r3.k ? (r3.k) iInterfaceQueryLocalInterface : new n1(iBinder);
                        }
                        d0 d0Var = (d0) o0Var;
                        d0Var.getClass();
                        if (n1Var == null || (set = p0Var.f11180d) == null) {
                            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                            d0Var.b(new m3.b(4));
                        } else {
                            d0Var.f11117c = n1Var;
                            d0Var.f11118d = set;
                            if (d0Var.f11119e) {
                                d0Var.f11115a.j(n1Var, set);
                            }
                        }
                    } else {
                        Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(String.valueOf(bVar)), new Exception());
                        ((d0) p0Var.f11182g).b(bVar);
                    }
                } else {
                    ((d0) p0Var.f11182g).b(bVar);
                }
                p0Var.f.h();
                return;
            case 1:
                w4 w4Var = (w4) this.f11171c;
                w4Var.f2101a.a();
                o7 o7Var = w4Var.f2101a;
                y7 y7Var = (y7) this.f11170b;
                o7Var.l().b();
                o7Var.b();
                r3.r.f(y7Var.f2153a);
                o7Var.J(y7Var);
                return;
            case 2:
                synchronized (((AtomicReference) this.f11170b)) {
                    try {
                        AtomicReference atomicReference = (AtomicReference) this.f11170b;
                        Object obj = this.f11171c;
                        atomicReference.set(Boolean.valueOf(((i4) ((v5) obj).f2115a).f1633g.p(((i4) ((v5) obj).f2115a).o().h(), r2.K)));
                    } finally {
                        ((AtomicReference) this.f11170b).notify();
                    }
                }
                return;
            case 3:
                ((v5) this.f11171c).y((Boolean) this.f11170b, true);
                return;
            case 4:
                v5 v5Var = ((AppMeasurementDynamiteService) this.f11171c).f4197a.f1642r;
                i4.d(v5Var);
                com.google.android.gms.internal.clearcut.f fVar2 = (com.google.android.gms.internal.clearcut.f) this.f11170b;
                v5Var.b();
                v5Var.c();
                if (fVar2 != null && fVar2 != (fVar = v5Var.f2061d)) {
                    r3.r.k("EventInterceptor already set.", fVar == null);
                }
                v5Var.f2061d = fVar2;
                return;
            case 5:
                AppMeasurementDynamiteService appMeasurementDynamiteService = (AppMeasurementDynamiteService) this.f11171c;
                v7 v7Var = appMeasurementDynamiteService.f4197a.f1638m;
                i4.c(v7Var);
                com.google.android.gms.internal.measurement.y0 y0Var = (com.google.android.gms.internal.measurement.y0) this.f11170b;
                i4 i4Var = appMeasurementDynamiteService.f4197a;
                if (i4Var.D != null && i4Var.D.booleanValue()) {
                    z = true;
                }
                v7Var.y(y0Var, z);
                return;
            case 6:
                Object obj2 = this.f11171c;
                try {
                    h5.k kVar = (h5.k) ((h5.b) ((h5.s) obj2).f6859c).c((h5.k) this.f11170b);
                    if (kVar == null) {
                        ((h5.s) obj2).e(new NullPointerException("Continuation returned null"));
                        return;
                    }
                    h5.x xVar = h5.m.f6843b;
                    h5.s sVar2 = (h5.s) obj2;
                    kVar.d(xVar, sVar2);
                    kVar.c(xVar, sVar2);
                    kVar.a(xVar, sVar2);
                    return;
                } catch (h5.i e10) {
                    e = e10;
                    sVar = (h5.s) obj2;
                    if (e.getCause() instanceof Exception) {
                        zVar = (h5.z) sVar.f6860d;
                        e = (Exception) e.getCause();
                    } else {
                        zVar = (h5.z) sVar.f6860d;
                    }
                    zVar.q(e);
                    return;
                } catch (Exception e11) {
                    e = e11;
                    sVar = (h5.s) obj2;
                    zVar = (h5.z) sVar.f6860d;
                    zVar.q(e);
                    return;
                }
            case 7:
                a();
                return;
            default:
                Object obj3 = this.f11170b;
                try {
                    ((h5.z) obj3).r(((Callable) this.f11171c).call());
                    return;
                } catch (Exception e12) {
                    ((h5.z) obj3).q(e12);
                    return;
                } catch (Throwable th2) {
                    ((h5.z) obj3).q(new RuntimeException(th2));
                    return;
                }
        }
    }

    public n0(h5.z zVar, Callable callable) {
        this.f11169a = 8;
        this.f11170b = zVar;
        this.f11171c = callable;
    }
}
