package c5;

import android.os.Bundle;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class u1 extends t2 {

    /* renamed from: b, reason: collision with root package name */
    public final ArrayMap f2030b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayMap f2031c;

    /* renamed from: d, reason: collision with root package name */
    public long f2032d;

    public u1(i4 i4Var) {
        super(i4Var);
        this.f2031c = new ArrayMap();
        this.f2030b = new ArrayMap();
    }

    public final void c(long j10, String str) throws IllegalStateException {
        z4 z4Var = this.f2115a;
        if (str == null || str.length() == 0) {
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f.a("Ad unit id must be a non-empty string");
        } else {
            h4 h4Var = ((i4) z4Var).f1636k;
            i4.e(h4Var);
            h4Var.p(new a(this, str, j10));
        }
    }

    public final void d(long j10, String str) throws IllegalStateException {
        z4 z4Var = this.f2115a;
        if (str == null || str.length() == 0) {
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f.a("Ad unit id must be a non-empty string");
        } else {
            h4 h4Var = ((i4) z4Var).f1636k;
            i4.e(h4Var);
            h4Var.p(new x(this, str, j10));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    public final void e(long j10) {
        f6 f6Var = ((i4) this.f2115a).f1641q;
        i4.d(f6Var);
        b6 b6VarO = f6Var.o(false);
        ArrayMap arrayMap = this.f2030b;
        for (K k10 : arrayMap.keySet()) {
            h(k10, j10 - ((Long) arrayMap.get(k10)).longValue(), b6VarO);
        }
        if (!arrayMap.isEmpty()) {
            g(j10 - this.f2032d, b6VarO);
        }
        n(j10);
    }

    @WorkerThread
    public final void g(long j10, b6 b6Var) {
        z4 z4Var = this.f2115a;
        if (b6Var == null) {
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f1513p.a("Not logging ad exposure. No active activity");
        } else {
            if (j10 < 1000) {
                e3 e3Var2 = ((i4) z4Var).f1635j;
                i4.e(e3Var2);
                e3Var2.f1513p.b(Long.valueOf(j10), "Not logging ad exposure. Less than 1000 ms. exposure");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j10);
            v7.t(b6Var, bundle, true);
            v5 v5Var = ((i4) z4Var).f1642r;
            i4.d(v5Var);
            v5Var.n("am", "_xa", bundle);
        }
    }

    @WorkerThread
    public final void h(String str, long j10, b6 b6Var) {
        z4 z4Var = this.f2115a;
        if (b6Var == null) {
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f1513p.a("Not logging ad unit exposure. No active activity");
        } else {
            if (j10 < 1000) {
                e3 e3Var2 = ((i4) z4Var).f1635j;
                i4.e(e3Var2);
                e3Var2.f1513p.b(Long.valueOf(j10), "Not logging ad unit exposure. Less than 1000 ms. exposure");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j10);
            v7.t(b6Var, bundle, true);
            v5 v5Var = ((i4) z4Var).f1642r;
            i4.d(v5Var);
            v5Var.n("am", "_xu", bundle);
        }
    }

    @WorkerThread
    public final void n(long j10) {
        ArrayMap arrayMap = this.f2030b;
        Iterator it = arrayMap.keySet().iterator();
        while (it.hasNext()) {
            arrayMap.put((String) it.next(), Long.valueOf(j10));
        }
        if (arrayMap.isEmpty()) {
            return;
        }
        this.f2032d = j10;
    }
}
