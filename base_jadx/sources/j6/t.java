package j6;

import androidx.annotation.NonNull;
import j6.a0;

/* loaded from: classes2.dex */
public final class t extends a0.e.d.AbstractC0144d {

    /* renamed from: a, reason: collision with root package name */
    public final String f8257a;

    public t(String str) {
        this.f8257a = str;
    }

    @Override // j6.a0.e.d.AbstractC0144d
    @NonNull
    public final String a() {
        return this.f8257a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a0.e.d.AbstractC0144d) {
            return this.f8257a.equals(((a0.e.d.AbstractC0144d) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return this.f8257a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return androidx.camera.camera2.internal.c.h(new StringBuilder("Log{content="), this.f8257a, "}");
    }
}
