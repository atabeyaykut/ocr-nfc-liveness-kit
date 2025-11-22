package c5;

import androidx.collection.ArrayMap;

/* loaded from: classes.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1388a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f1389b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u1 f1390c;

    public a(u1 u1Var, String str, long j10) {
        this.f1390c = u1Var;
        this.f1388a = str;
        this.f1389b = j10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        u1 u1Var = this.f1390c;
        u1Var.b();
        String str = this.f1388a;
        r3.r.f(str);
        ArrayMap arrayMap = u1Var.f2031c;
        boolean zIsEmpty = arrayMap.isEmpty();
        long j10 = this.f1389b;
        if (zIsEmpty) {
            u1Var.f2032d = j10;
        }
        Integer num = (Integer) arrayMap.get(str);
        if (num != null) {
            arrayMap.put(str, Integer.valueOf(num.intValue() + 1));
            return;
        }
        if (arrayMap.size() < 100) {
            arrayMap.put(str, 1);
            u1Var.f2030b.put(str, Long.valueOf(j10));
        } else {
            e3 e3Var = ((i4) u1Var.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f1508j.a("Too many ads visible");
        }
    }
}
