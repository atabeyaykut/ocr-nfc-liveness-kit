package o3;

import androidx.annotation.Nullable;
import java.util.Arrays;
import r3.p;

/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: a, reason: collision with root package name */
    public final a f11092a;

    /* renamed from: b, reason: collision with root package name */
    public final m3.d f11093b;

    public /* synthetic */ b0(a aVar, m3.d dVar) {
        this.f11092a = aVar;
        this.f11093b = dVar;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj != null && (obj instanceof b0)) {
            b0 b0Var = (b0) obj;
            if (r3.p.a(this.f11092a, b0Var.f11092a) && r3.p.a(this.f11093b, b0Var.f11093b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f11092a, this.f11093b});
    }

    public final String toString() {
        p.a aVar = new p.a(this);
        aVar.a(this.f11092a, "key");
        aVar.a(this.f11093b, "feature");
        return aVar.toString();
    }
}
