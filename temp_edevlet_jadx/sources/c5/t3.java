package c5;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class t3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1996a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1997b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1998c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1999d;

    public /* synthetic */ t3(Object obj, Object obj2, Object obj3, int r42) {
        this.f1996a = r42;
        this.f1999d = obj;
        this.f1997b = obj2;
        this.f1998c = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f1996a;
        Object obj = this.f1997b;
        Object obj2 = this.f1999d;
        switch (r02) {
            case 0:
                u3 u3Var = (u3) obj2;
                com.google.android.gms.internal.measurement.n0 n0Var = (com.google.android.gms.internal.measurement.n0) obj;
                i4 i4Var = u3Var.f2034b.f2056a;
                h4 h4Var = i4Var.f1636k;
                e3 e3Var = i4Var.f1635j;
                i4.e(h4Var);
                h4Var.b();
                Bundle bundle = new Bundle();
                bundle.putString("package_name", u3Var.f2033a);
                try {
                    if (n0Var.a(bundle) == null) {
                        i4.e(e3Var);
                        e3Var.f.a("Install Referrer Service returned a null response");
                    }
                } catch (Exception e10) {
                    i4.e(e3Var);
                    e3Var.f.b(e10.getMessage(), "Exception occurred while retrieving the Install Referrer");
                }
                h4 h4Var2 = i4Var.f1636k;
                i4.e(h4Var2);
                h4Var2.b();
                throw new IllegalStateException("Unexpected call on client side");
            default:
                w4 w4Var = (w4) obj2;
                w4Var.f2101a.a();
                r7 r7Var = (r7) obj;
                Object objE = r7Var.E();
                o7 o7Var = w4Var.f2101a;
                y7 y7Var = (y7) this.f1998c;
                if (objE == null) {
                    o7Var.o(r7Var, y7Var);
                    return;
                } else {
                    o7Var.s(r7Var, y7Var);
                    return;
                }
        }
    }
}
