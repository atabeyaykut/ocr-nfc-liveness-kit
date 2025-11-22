package j6;

import androidx.annotation.NonNull;
import j6.a0;

/* loaded from: classes2.dex */
public final class d extends a0.c {

    /* renamed from: a, reason: collision with root package name */
    public final String f8145a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8146b;

    public d(String str, String str2) {
        this.f8145a = str;
        this.f8146b = str2;
    }

    @Override // j6.a0.c
    @NonNull
    public final String a() {
        return this.f8145a;
    }

    @Override // j6.a0.c
    @NonNull
    public final String b() {
        return this.f8146b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.c)) {
            return false;
        }
        a0.c cVar = (a0.c) obj;
        return this.f8145a.equals(cVar.a()) && this.f8146b.equals(cVar.b());
    }

    public final int hashCode() {
        return ((this.f8145a.hashCode() ^ 1000003) * 1000003) ^ this.f8146b.hashCode();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("CustomAttribute{key=");
        sb2.append(this.f8145a);
        sb2.append(", value=");
        return androidx.camera.camera2.internal.c.h(sb2, this.f8146b, "}");
    }
}
