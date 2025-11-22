package j6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j6.a0;

/* loaded from: classes2.dex */
public final class n extends a0.e.d.a.b.AbstractC0138a {

    /* renamed from: a, reason: collision with root package name */
    public final long f8218a;

    /* renamed from: b, reason: collision with root package name */
    public final long f8219b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8220c;

    /* renamed from: d, reason: collision with root package name */
    public final String f8221d;

    public static final class a extends a0.e.d.a.b.AbstractC0138a.AbstractC0139a {

        /* renamed from: a, reason: collision with root package name */
        public Long f8222a;

        /* renamed from: b, reason: collision with root package name */
        public Long f8223b;

        /* renamed from: c, reason: collision with root package name */
        public String f8224c;

        /* renamed from: d, reason: collision with root package name */
        public String f8225d;

        public final n a() {
            String strF = this.f8222a == null ? " baseAddress" : "";
            if (this.f8223b == null) {
                strF = strF.concat(" size");
            }
            if (this.f8224c == null) {
                strF = android.support.v4.media.a.f(strF, " name");
            }
            if (strF.isEmpty()) {
                return new n(this.f8222a.longValue(), this.f8223b.longValue(), this.f8224c, this.f8225d);
            }
            throw new IllegalStateException("Missing required properties:".concat(strF));
        }
    }

    public n(long j10, long j11, String str, String str2) {
        this.f8218a = j10;
        this.f8219b = j11;
        this.f8220c = str;
        this.f8221d = str2;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0138a
    @NonNull
    public final long a() {
        return this.f8218a;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0138a
    @NonNull
    public final String b() {
        return this.f8220c;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0138a
    public final long c() {
        return this.f8219b;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0138a
    @Nullable
    public final String d() {
        return this.f8221d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.e.d.a.b.AbstractC0138a)) {
            return false;
        }
        a0.e.d.a.b.AbstractC0138a abstractC0138a = (a0.e.d.a.b.AbstractC0138a) obj;
        if (this.f8218a == abstractC0138a.a() && this.f8219b == abstractC0138a.c() && this.f8220c.equals(abstractC0138a.b())) {
            String str = this.f8221d;
            String strD = abstractC0138a.d();
            if (str == null) {
                if (strD == null) {
                    return true;
                }
            } else if (str.equals(strD)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f8218a;
        long j11 = this.f8219b;
        int r12 = (((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f8220c.hashCode()) * 1000003;
        String str = this.f8221d;
        return (str == null ? 0 : str.hashCode()) ^ r12;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("BinaryImage{baseAddress=");
        sb2.append(this.f8218a);
        sb2.append(", size=");
        sb2.append(this.f8219b);
        sb2.append(", name=");
        sb2.append(this.f8220c);
        sb2.append(", uuid=");
        return androidx.camera.camera2.internal.c.h(sb2, this.f8221d, "}");
    }
}
