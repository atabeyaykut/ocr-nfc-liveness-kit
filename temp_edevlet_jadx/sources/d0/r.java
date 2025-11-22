package d0;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class r<V> {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final V f4625a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final Throwable f4626b;

    /* JADX WARN: Multi-variable type inference failed */
    public r(f fVar) {
        this.f4625a = fVar;
        this.f4626b = null;
    }

    public r(Throwable th2) {
        this.f4626b = th2;
        this.f4625a = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        V v10 = this.f4625a;
        if (v10 != null && v10.equals(rVar.f4625a)) {
            return true;
        }
        Throwable th2 = this.f4626b;
        if (th2 == null || rVar.f4626b == null) {
            return false;
        }
        return th2.toString().equals(th2.toString());
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4625a, this.f4626b});
    }
}
