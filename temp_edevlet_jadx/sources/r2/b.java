package r2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f13901a;

    public b(@NonNull String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        this.f13901a = str;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        return this.f13901a.equals(((b) obj).f13901a);
    }

    public final int hashCode() {
        return this.f13901a.hashCode() ^ 1000003;
    }

    @NonNull
    public final String toString() {
        return androidx.camera.camera2.internal.c.h(new StringBuilder("Encoding{name=\""), this.f13901a, "\"}");
    }
}
