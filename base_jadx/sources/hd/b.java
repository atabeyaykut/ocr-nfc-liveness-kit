package hd;

/* loaded from: classes2.dex */
public final class b implements c {

    /* renamed from: a, reason: collision with root package name */
    public final double f7086a;

    /* renamed from: b, reason: collision with root package name */
    public final double f7087b;

    /* renamed from: c, reason: collision with root package name */
    public final double f7088c;

    public b(double d10, double d11, double d12) {
        this.f7086a = d10;
        this.f7087b = d11;
        this.f7088c = d12;
    }

    @Override // hd.c
    public final double a(int r12, double d10) {
        if (d10 == 0.0d) {
            return -1.0d;
        }
        id.b.a("CurveFittedDistanceCalculator", "calculating distance based on mRssi of %s and txPower of %s", Double.valueOf(d10), Integer.valueOf(r12));
        double d11 = (d10 * 1.0d) / r12;
        double dPow = d11 < 1.0d ? Math.pow(d11, 10.0d) : (Math.pow(d11, this.f7087b) * this.f7086a) + this.f7088c;
        id.b.a("CurveFittedDistanceCalculator", "avg mRssi: %s distance: %s", Double.valueOf(d10), Double.valueOf(dPow));
        return dPow;
    }
}
