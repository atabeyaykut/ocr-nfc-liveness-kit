package c5;

import com.google.android.gms.internal.measurement.la;
import java.math.BigDecimal;

/* loaded from: classes.dex */
public final class f8 extends e8 {

    /* renamed from: g, reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.o2 f1559g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ g8 f1560h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f8(g8 g8Var, String str, int r32, com.google.android.gms.internal.measurement.o2 o2Var) {
        super(str, r32);
        this.f1560h = g8Var;
        this.f1559g = o2Var;
    }

    @Override // c5.e8
    public final int a() {
        return this.f1559g.r();
    }

    @Override // c5.e8
    public final boolean b() {
        return false;
    }

    @Override // c5.e8
    public final boolean c() {
        return true;
    }

    public final boolean g(Long l5, Long l10, com.google.android.gms.internal.measurement.a4 a4Var, boolean z10) {
        String strF;
        c3 c3Var;
        String str;
        la.b();
        g8 g8Var = this.f1560h;
        boolean zP = ((i4) g8Var.f2115a).f1633g.p(this.f1525a, r2.W);
        com.google.android.gms.internal.measurement.o2 o2Var = this.f1559g;
        boolean zX = o2Var.x();
        boolean zY = o2Var.y();
        boolean z11 = o2Var.z();
        boolean z12 = zX || zY || z11;
        Boolean boolE = null;
        boolF = null;
        boolE = null;
        Boolean boolF = null;
        z4 z4Var = g8Var.f2115a;
        if (z10 && !z12) {
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f1513p.c(Integer.valueOf(this.f1526b), "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", o2Var.A() ? Integer.valueOf(o2Var.r()) : null);
            return true;
        }
        com.google.android.gms.internal.measurement.j2 j2VarS = o2Var.s();
        boolean zX2 = j2VarS.x();
        if (a4Var.H()) {
            if (j2VarS.z()) {
                boolE = e8.d(new BigDecimal(a4Var.s()), j2VarS.t(), 0.0d);
                boolF = e8.f(boolE, zX2);
            } else {
                e3 e3Var2 = ((i4) z4Var).f1635j;
                i4.e(e3Var2);
                strF = ((i4) z4Var).f1639n.f(a4Var.w());
                c3Var = e3Var2.f1508j;
                str = "No number filter for long property. property";
                c3Var.b(strF, str);
            }
        } else if (!a4Var.G()) {
            if (a4Var.J()) {
                if (j2VarS.B()) {
                    String strX = a4Var.x();
                    com.google.android.gms.internal.measurement.r2 r2VarU = j2VarS.u();
                    e3 e3Var3 = ((i4) z4Var).f1635j;
                    i4.e(e3Var3);
                    boolE = e8.e(strX, r2VarU, e3Var3);
                } else if (!j2VarS.z()) {
                    e3 e3Var4 = ((i4) z4Var).f1635j;
                    i4.e(e3Var4);
                    strF = ((i4) z4Var).f1639n.f(a4Var.w());
                    c3Var = e3Var4.f1508j;
                    str = "No string or number filter defined. property";
                } else if (q7.K(a4Var.x())) {
                    String strX2 = a4Var.x();
                    com.google.android.gms.internal.measurement.m2 m2VarT = j2VarS.t();
                    if (q7.K(strX2)) {
                        boolE = e8.d(new BigDecimal(strX2), m2VarT, 0.0d);
                    }
                } else {
                    e3 e3Var5 = ((i4) z4Var).f1635j;
                    i4.e(e3Var5);
                    e3Var5.f1508j.c(((i4) z4Var).f1639n.f(a4Var.w()), "Invalid user property value for Numeric number filter. property, value", a4Var.x());
                }
                boolF = e8.f(boolE, zX2);
            } else {
                e3 e3Var6 = ((i4) z4Var).f1635j;
                i4.e(e3Var6);
                strF = ((i4) z4Var).f1639n.f(a4Var.w());
                c3Var = e3Var6.f1508j;
                str = "User property has no value, property";
            }
            c3Var.b(strF, str);
        } else if (j2VarS.z()) {
            double dR = a4Var.r();
            boolE = e8.d(new BigDecimal(dR), j2VarS.t(), Math.ulp(dR));
            boolF = e8.f(boolE, zX2);
        } else {
            e3 e3Var7 = ((i4) z4Var).f1635j;
            i4.e(e3Var7);
            strF = ((i4) z4Var).f1639n.f(a4Var.w());
            c3Var = e3Var7.f1508j;
            str = "No number filter for double property. property";
            c3Var.b(strF, str);
        }
        e3 e3Var8 = ((i4) z4Var).f1635j;
        i4.e(e3Var8);
        e3Var8.f1513p.b(boolF == null ? "null" : boolF, "Property filter result");
        if (boolF == null) {
            return false;
        }
        this.f1527c = Boolean.TRUE;
        if (z11 && !boolF.booleanValue()) {
            return true;
        }
        if (!z10 || o2Var.x()) {
            this.f1528d = boolF;
        }
        if (boolF.booleanValue() && z12 && a4Var.I()) {
            long jT = a4Var.t();
            if (l5 != null) {
                jT = l5.longValue();
            }
            if (zP && o2Var.x() && !o2Var.y() && l10 != null) {
                jT = l10.longValue();
            }
            if (o2Var.y()) {
                this.f = Long.valueOf(jT);
            } else {
                this.f1529e = Long.valueOf(jT);
            }
        }
        return true;
    }
}
