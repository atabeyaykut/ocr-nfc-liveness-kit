package k8;

import e8.j;

/* loaded from: classes2.dex */
public final class i<T, U, V> {

    /* renamed from: a, reason: collision with root package name */
    public final T f8785a;

    /* renamed from: b, reason: collision with root package name */
    public final U f8786b;

    /* renamed from: c, reason: collision with root package name */
    public final V f8787c;

    /* JADX WARN: Multi-variable type inference failed */
    public i(Boolean bool, j jVar, Integer num) {
        this.f8785a = bool;
        this.f8786b = jVar;
        this.f8787c = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return kotlin.jvm.internal.h.a(this.f8785a, iVar.f8785a) && kotlin.jvm.internal.h.a(this.f8786b, iVar.f8786b) && kotlin.jvm.internal.h.a(this.f8787c, iVar.f8787c);
    }

    public final int hashCode() {
        T t10 = this.f8785a;
        int r12 = (t10 != null ? t10.hashCode() : 0) * 31;
        U u10 = this.f8786b;
        int r13 = (r12 + (u10 != null ? u10.hashCode() : 0)) * 31;
        V v10 = this.f8787c;
        return r13 + (v10 != null ? v10.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Triple(first=");
        sb2.append(this.f8785a);
        sb2.append(", second=");
        sb2.append(this.f8786b);
        sb2.append(", third=");
        return androidx.camera.core.impl.a.e(sb2, this.f8787c, ")");
    }
}
