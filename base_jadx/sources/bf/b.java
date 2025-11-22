package bf;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.jvm.internal.h;
import vd.d;

/* loaded from: classes3.dex */
public final class b implements k9.a {
    public static FirebaseAnalytics a(d dVar) {
        dVar.getClass();
        FirebaseAnalytics firebaseAnalytics = b6.a.f1142a;
        if (b6.a.f1142a == null) {
            synchronized (b6.a.f1143b) {
                if (b6.a.f1142a == null) {
                    x5.c cVarB = x5.c.b();
                    cVarB.a();
                    b6.a.f1142a = FirebaseAnalytics.getInstance(cVarB.f19165a);
                }
            }
        }
        FirebaseAnalytics firebaseAnalytics2 = b6.a.f1142a;
        h.c(firebaseAnalytics2);
        return firebaseAnalytics2;
    }
}
