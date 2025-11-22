package c5;

import androidx.collection.ArrayMap;

/* loaded from: classes.dex */
public final class x implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f2108a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f2109b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u1 f2110c;

    public x(u1 u1Var, String str, long j10) {
        this.f2110c = u1Var;
        this.f2108a = str;
        this.f2109b = j10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        u1 u1Var = this.f2110c;
        u1Var.b();
        String str = this.f2108a;
        r3.r.f(str);
        ArrayMap arrayMap = u1Var.f2031c;
        Integer num = (Integer) arrayMap.get(str);
        i4 i4Var = (i4) u1Var.f2115a;
        if (num == null) {
            e3 e3Var = i4Var.f1635j;
            i4.e(e3Var);
            e3Var.f.b(str, "Call to endAdUnitExposure for unknown ad unit id");
            return;
        }
        f6 f6Var = i4Var.f1641q;
        i4.d(f6Var);
        b6 b6VarO = f6Var.o(false);
        int r32 = num.intValue() - 1;
        if (r32 != 0) {
            arrayMap.put(str, Integer.valueOf(r32));
            return;
        }
        arrayMap.remove(str);
        ArrayMap arrayMap2 = u1Var.f2030b;
        Long l5 = (Long) arrayMap2.get(str);
        e3 e3Var2 = i4Var.f1635j;
        long j10 = this.f2109b;
        if (l5 == null) {
            i4.e(e3Var2);
            e3Var2.f.a("First ad unit exposure time was never set");
        } else {
            long jLongValue = l5.longValue();
            arrayMap2.remove(str);
            u1Var.h(str, j10 - jLongValue, b6VarO);
        }
        if (arrayMap.isEmpty()) {
            long j11 = u1Var.f2032d;
            if (j11 == 0) {
                i4.e(e3Var2);
                e3Var2.f.a("First ad exposure time was never set");
            } else {
                u1Var.g(j10 - j11, b6VarO);
                u1Var.f2032d = 0L;
            }
        }
    }
}
