package p4;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class e7 {

    /* renamed from: a, reason: collision with root package name */
    public final d7 f12332a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f12333b;

    public /* synthetic */ e7(c7 c7Var) {
        this.f12332a = (d7) c7Var.f12289a;
        this.f12333b = (Integer) c7Var.f12290b;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e7)) {
            return false;
        }
        e7 e7Var = (e7) obj;
        return r3.p.a(this.f12332a, e7Var.f12332a) && r3.p.a(this.f12333b, e7Var.f12333b) && r3.p.a(null, null) && r3.p.a(null, null);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f12332a, this.f12333b, null, null});
    }
}
