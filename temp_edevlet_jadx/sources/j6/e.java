package j6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j6.a0;

/* loaded from: classes2.dex */
public final class e extends a0.d {

    /* renamed from: a, reason: collision with root package name */
    public final b0<a0.d.a> f8147a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8148b;

    public e() {
        throw null;
    }

    public e(b0 b0Var, String str) {
        this.f8147a = b0Var;
        this.f8148b = str;
    }

    @Override // j6.a0.d
    @NonNull
    public final b0<a0.d.a> a() {
        return this.f8147a;
    }

    @Override // j6.a0.d
    @Nullable
    public final String b() {
        return this.f8148b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.d)) {
            return false;
        }
        a0.d dVar = (a0.d) obj;
        if (this.f8147a.equals(dVar.a())) {
            String str = this.f8148b;
            String strB = dVar.b();
            if (str == null) {
                if (strB == null) {
                    return true;
                }
            } else if (str.equals(strB)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int r02 = (this.f8147a.hashCode() ^ 1000003) * 1000003;
        String str = this.f8148b;
        return r02 ^ (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("FilesPayload{files=");
        sb2.append(this.f8147a);
        sb2.append(", orgId=");
        return androidx.camera.camera2.internal.c.h(sb2, this.f8148b, "}");
    }
}
