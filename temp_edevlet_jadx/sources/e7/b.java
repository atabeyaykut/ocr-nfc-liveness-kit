package e7;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e7.f;

/* loaded from: classes2.dex */
public final class b extends f {

    /* renamed from: a, reason: collision with root package name */
    public final String f5125a;

    /* renamed from: b, reason: collision with root package name */
    public final long f5126b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5127c;

    public static final class a extends f.a {

        /* renamed from: a, reason: collision with root package name */
        public Long f5128a;

        /* renamed from: b, reason: collision with root package name */
        public int f5129b;

        public final b a() {
            String str = this.f5128a == null ? " tokenExpirationTimestamp" : "";
            if (str.isEmpty()) {
                return new b(null, this.f5128a.longValue(), this.f5129b);
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }
    }

    public b(String str, long j10, int r42) {
        this.f5125a = str;
        this.f5126b = j10;
        this.f5127c = r42;
    }

    @Override // e7.f
    @Nullable
    public final int a() {
        return this.f5127c;
    }

    @Override // e7.f
    @Nullable
    public final String b() {
        return this.f5125a;
    }

    @Override // e7.f
    @NonNull
    public final long c() {
        return this.f5126b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        String str = this.f5125a;
        if (str != null ? str.equals(fVar.b()) : fVar.b() == null) {
            if (this.f5126b == fVar.c()) {
                int r12 = this.f5127c;
                int r82 = fVar.a();
                if (r12 == 0) {
                    if (r82 == 0) {
                        return true;
                    }
                } else if (g.d.b(r12, r82)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f5125a;
        int r12 = str == null ? 0 : str.hashCode();
        long j10 = this.f5126b;
        int r13 = (((r12 ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        int r22 = this.f5127c;
        return (r22 != 0 ? g.d.c(r22) : 0) ^ r13;
    }

    public final String toString() {
        return "TokenResult{token=" + this.f5125a + ", tokenExpirationTimestamp=" + this.f5126b + ", responseCode=" + androidx.camera.camera2.internal.c.k(this.f5127c) + "}";
    }
}
