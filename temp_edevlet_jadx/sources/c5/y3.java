package c5;

import com.google.android.gms.internal.measurement.k9;
import com.google.mlkit.vision.common.internal.MobileVisionBase;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final /* synthetic */ class y3 implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2144a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2145b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2146c;

    public /* synthetic */ y3(int r12, Object obj, Object obj2) {
        this.f2144a = r12;
        this.f2145b = obj;
        this.f2146c = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        r4.g6 g6Var;
        int r02 = this.f2144a;
        Object obj = this.f2146c;
        Object obj2 = this.f2145b;
        switch (r02) {
            case 0:
                return new k9(new p4.c7((c4) obj2, (String) obj));
            default:
                MobileVisionBase mobileVisionBase = (MobileVisionBase) obj2;
                a8.a aVar = (a8.a) obj;
                mobileVisionBase.getClass();
                HashMap map = r4.g6.f14134h;
                r4.t6.a();
                int r03 = r4.s6.f14247a;
                r4.t6.a();
                if (Boolean.parseBoolean("")) {
                    HashMap map2 = r4.g6.f14134h;
                    if (map2.get("detectorTaskWithResource#run") == null) {
                        map2.put("detectorTaskWithResource#run", new r4.g6("detectorTaskWithResource#run"));
                    }
                    g6Var = (r4.g6) map2.get("detectorTaskWithResource#run");
                } else {
                    g6Var = r4.f6.f14128j;
                }
                g6Var.a();
                try {
                    Object objD = mobileVisionBase.f4433b.d(aVar);
                    g6Var.close();
                    return objD;
                } catch (Throwable th2) {
                    try {
                        g6Var.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
        }
    }
}
