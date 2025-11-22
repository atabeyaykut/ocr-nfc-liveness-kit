package i7;

/* loaded from: classes2.dex */
public final class a extends d {

    /* renamed from: a, reason: collision with root package name */
    public final String f7306a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7307b;

    public a(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null libraryName");
        }
        this.f7306a = str;
        if (str2 == null) {
            throw new NullPointerException("Null version");
        }
        this.f7307b = str2;
    }

    @Override // i7.d
    public final String a() {
        return this.f7306a;
    }

    @Override // i7.d
    public final String b() {
        return this.f7307b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f7306a.equals(dVar.a()) && this.f7307b.equals(dVar.b());
    }

    public final int hashCode() {
        return ((this.f7306a.hashCode() ^ 1000003) * 1000003) ^ this.f7307b.hashCode();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("LibraryVersion{libraryName=");
        sb2.append(this.f7306a);
        sb2.append(", version=");
        return androidx.camera.camera2.internal.c.h(sb2, this.f7307b, "}");
    }
}
