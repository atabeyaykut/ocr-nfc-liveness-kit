package c5;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class n7 {

    /* renamed from: a, reason: collision with root package name */
    public com.google.android.gms.internal.measurement.q3 f1781a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f1782b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f1783c;

    /* renamed from: d, reason: collision with root package name */
    public long f1784d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ o7 f1785e;

    public final boolean a(long j10, com.google.android.gms.internal.measurement.h3 h3Var) {
        if (this.f1783c == null) {
            this.f1783c = new ArrayList();
        }
        if (this.f1782b == null) {
            this.f1782b = new ArrayList();
        }
        if (this.f1783c.size() > 0 && ((((com.google.android.gms.internal.measurement.h3) this.f1783c.get(0)).u() / 1000) / 60) / 60 != ((h3Var.u() / 1000) / 60) / 60) {
            return false;
        }
        long jG = this.f1784d + h3Var.g();
        o7 o7Var = this.f1785e;
        o7Var.K();
        if (jG >= Math.max(0, r2.f1904i.a(null).intValue())) {
            return false;
        }
        this.f1784d = jG;
        this.f1783c.add(h3Var);
        this.f1782b.add(Long.valueOf(j10));
        int size = this.f1783c.size();
        o7Var.K();
        return size < Math.max(1, r2.f1906j.a(null).intValue());
    }
}
