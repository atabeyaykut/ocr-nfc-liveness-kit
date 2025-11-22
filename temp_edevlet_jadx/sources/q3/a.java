package q3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f13323a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13324b;

    public a(int r12, int r22) {
        this.f13323a = r12;
        this.f13324b = r22;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f13323a == aVar.f13323a && this.f13324b == aVar.f13324b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int r02 = this.f13323a;
        return ((r02 >>> 16) | (r02 << 16)) ^ this.f13324b;
    }

    @NonNull
    public final String toString() {
        return this.f13323a + "x" + this.f13324b;
    }
}
