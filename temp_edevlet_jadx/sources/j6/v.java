package j6;

import androidx.annotation.NonNull;
import j6.a0;

/* loaded from: classes2.dex */
public final class v extends a0.e.f {

    /* renamed from: a, reason: collision with root package name */
    public final String f8266a;

    public v(String str) {
        this.f8266a = str;
    }

    @Override // j6.a0.e.f
    @NonNull
    public final String a() {
        return this.f8266a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a0.e.f) {
            return this.f8266a.equals(((a0.e.f) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return this.f8266a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return androidx.camera.camera2.internal.c.h(new StringBuilder("User{identifier="), this.f8266a, "}");
    }
}
