package c5;

import androidx.collection.ArrayMap;
import androidx.collection.LruCache;
import com.google.android.gms.internal.measurement.qb;

/* loaded from: classes.dex */
public final class a4 extends LruCache<String, com.google.android.gms.internal.measurement.s0> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c4 f1395a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a4(c4 c4Var) {
        super(20);
        this.f1395a = c4Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.collection.LruCache
    public final com.google.android.gms.internal.measurement.s0 create(String str) throws Throwable {
        String str2 = str;
        r3.r.f(str2);
        c4 c4Var = this.f1395a;
        c4Var.c();
        r3.r.f(str2);
        qb.c();
        if (!((i4) c4Var.f2115a).f1633g.p(null, r2.f1921q0) || !c4Var.n(str2)) {
            return null;
        }
        ArrayMap arrayMap = c4Var.f1442g;
        if (!arrayMap.containsKey(str2) || arrayMap.get(str2) == 0) {
            c4Var.t(str2);
        } else {
            c4Var.u(str2, (com.google.android.gms.internal.measurement.w2) arrayMap.get(str2));
        }
        return c4Var.f1444j.snapshot().get(str2);
    }
}
