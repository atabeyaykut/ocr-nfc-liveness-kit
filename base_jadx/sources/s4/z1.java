package s4;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class z1 {

    /* renamed from: a, reason: collision with root package name */
    public final y6 f15260a;

    /* renamed from: b, reason: collision with root package name */
    public final Boolean f15261b;

    public /* synthetic */ z1(y1 y1Var) {
        this.f15260a = (y6) y1Var.f15242a;
        this.f15261b = (Boolean) y1Var.f15243b;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof z1)) {
            return false;
        }
        z1 z1Var = (z1) obj;
        return r3.p.a(this.f15260a, z1Var.f15260a) && r3.p.a(null, null) && r3.p.a(this.f15261b, z1Var.f15261b) && r3.p.a(null, null);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f15260a, null, this.f15261b, null});
    }
}
