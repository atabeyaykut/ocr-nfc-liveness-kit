package n0;

import android.graphics.Color;
import java.io.IOException;

/* loaded from: classes.dex */
public final class f implements h0<Integer> {

    /* renamed from: a, reason: collision with root package name */
    public static final f f10490a = new f();

    @Override // n0.h0
    public final Integer a(o0.c cVar, float f) throws IOException {
        boolean z10 = cVar.k() == 1;
        if (z10) {
            cVar.a();
        }
        double dG = cVar.g();
        double dG2 = cVar.g();
        double dG3 = cVar.g();
        double dG4 = cVar.k() == 7 ? cVar.g() : 1.0d;
        if (z10) {
            cVar.c();
        }
        if (dG <= 1.0d && dG2 <= 1.0d && dG3 <= 1.0d) {
            dG *= 255.0d;
            dG2 *= 255.0d;
            dG3 *= 255.0d;
            if (dG4 <= 1.0d) {
                dG4 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) dG4, (int) dG, (int) dG2, (int) dG3));
    }
}
