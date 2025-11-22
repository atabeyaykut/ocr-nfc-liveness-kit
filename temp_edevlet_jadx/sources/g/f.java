package g;

import androidx.annotation.Px;
import j7.p;

/* loaded from: classes.dex */
public final class f {
    public static final double a(@Px int r42, @Px int r52, @Px int r6, @Px int r72, int r82) {
        double d10 = r6 / r42;
        double d11 = r72 / r52;
        if (r82 == 0) {
            throw null;
        }
        int r83 = r82 - 1;
        if (r83 == 0) {
            return Math.max(d10, d11);
        }
        if (r83 == 1) {
            return Math.min(d10, d11);
        }
        throw new p();
    }
}
