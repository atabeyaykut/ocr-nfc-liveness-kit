package c5;

/* loaded from: classes.dex */
public final class v3 {

    /* renamed from: a, reason: collision with root package name */
    public final i4 f2056a;

    public v3(o7 o7Var) {
        this.f2056a = o7Var.f1828m;
    }

    public final boolean a() {
        i4 i4Var = this.f2056a;
        try {
            y3.b bVarA = y3.c.a(i4Var.f1628a);
            if (bVarA != null) {
                return bVarA.b(128, "com.android.vending").versionCode >= 80837300;
            }
            e3 e3Var = i4Var.f1635j;
            i4.e(e3Var);
            e3Var.f1513p.a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e10) {
            e3 e3Var2 = i4Var.f1635j;
            i4.e(e3Var2);
            e3Var2.f1513p.b(e10, "Failed to retrieve Play Store version for Install Referrer");
            return false;
        }
    }
}
