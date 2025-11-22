package o3;

import android.util.Log;
import n3.a;

/* loaded from: classes.dex */
public final class c0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m3.b f11094a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d0 f11095b;

    public c0(d0 d0Var, m3.b bVar) {
        this.f11095b = d0Var;
        this.f11094a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        r3.k kVar;
        d0 d0Var = this.f11095b;
        a0 a0Var = (a0) d0Var.f.f11109j.get(d0Var.f11116b);
        if (a0Var == null) {
            return;
        }
        m3.b bVar = this.f11094a;
        if (!(bVar.f9926b == 0)) {
            a0Var.m(bVar, null);
            return;
        }
        d0Var.f11119e = true;
        a.e eVar = d0Var.f11115a;
        if (eVar.o()) {
            if (!d0Var.f11119e || (kVar = d0Var.f11117c) == null) {
                return;
            }
            eVar.j(kVar, d0Var.f11118d);
            return;
        }
        try {
            eVar.j(null, eVar.b());
        } catch (SecurityException e10) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e10);
            eVar.d("Failed to get service from broker.");
            a0Var.m(new m3.b(10), null);
        }
    }
}
