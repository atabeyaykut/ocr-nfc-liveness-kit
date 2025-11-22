package s4;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class q6 {

    /* renamed from: a, reason: collision with root package name */
    public final p6 f15141a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f15142b;

    public /* synthetic */ q6(x0.t tVar) {
        this.f15141a = (p6) tVar.f19087a;
        this.f15142b = (Integer) tVar.f19088b;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q6)) {
            return false;
        }
        q6 q6Var = (q6) obj;
        return r3.p.a(this.f15141a, q6Var.f15141a) && r3.p.a(this.f15142b, q6Var.f15142b) && r3.p.a(null, null) && r3.p.a(null, null);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f15141a, this.f15142b, null, null});
    }
}
