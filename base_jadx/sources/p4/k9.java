package p4;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class k9 {

    /* renamed from: a, reason: collision with root package name */
    public final u0<i9> f12454a;

    public /* synthetic */ k9(com.airbnb.epoxy.a aVar) {
        this.f12454a = (u0) aVar.f2536b;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k9) {
            return r3.p.a(this.f12454a, ((k9) obj).f12454a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f12454a});
    }
}
