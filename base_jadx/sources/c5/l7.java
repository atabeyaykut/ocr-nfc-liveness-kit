package c5;

import com.google.android.gms.internal.measurement.qc;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class l7 implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1707a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1708b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1709c;

    public /* synthetic */ l7(c4 c4Var, String str) {
        this.f1708b = c4Var;
        this.f1709c = str;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [c5.z3] */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        int r02 = this.f1707a;
        Object obj = this.f1708b;
        Object obj2 = this.f1709c;
        switch (r02) {
            case 0:
                o7 o7Var = (o7) obj2;
                y7 y7Var = (y7) obj;
                String str = y7Var.f2153a;
                r3.r.i(str);
                if (o7Var.L(str).f() && f.b(y7Var.f2172y).f()) {
                    return o7Var.J(y7Var).G();
                }
                o7Var.m().f1513p.a("Analytics storage consent denied. Returning null app instance id");
                return null;
            default:
                final c4 c4Var = (c4) obj;
                final String str2 = (String) obj2;
                return new qc(new Callable() { // from class: c5.z3
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        c4 c4Var2 = c4Var;
                        i iVar = c4Var2.f1653b.f1820c;
                        o7.I(iVar);
                        String str3 = str2;
                        m4 m4VarD = iVar.D(str3);
                        HashMap map = new HashMap();
                        map.put("platform", "android");
                        map.put("package_name", str3);
                        ((i4) c4Var2.f2115a).f1633g.g();
                        map.put("gmp_version", 46000L);
                        if (m4VarD != null) {
                            String strH = m4VarD.H();
                            if (strH != null) {
                                map.put("app_version", strH);
                            }
                            map.put("app_version_int", Long.valueOf(m4VarD.B()));
                            map.put("dynamite_version", Long.valueOf(m4VarD.C()));
                        }
                        return map;
                    }
                });
        }
    }

    public l7(o7 o7Var, y7 y7Var) {
        this.f1709c = o7Var;
        this.f1708b = y7Var;
    }
}
