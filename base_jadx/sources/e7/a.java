package e7;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class a extends d {

    /* renamed from: a, reason: collision with root package name */
    public final String f5120a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5121b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5122c;

    /* renamed from: d, reason: collision with root package name */
    public final f f5123d;

    /* renamed from: e, reason: collision with root package name */
    public final int f5124e;

    public a(String str, String str2, String str3, f fVar, int r52) {
        this.f5120a = str;
        this.f5121b = str2;
        this.f5122c = str3;
        this.f5123d = fVar;
        this.f5124e = r52;
    }

    @Override // e7.d
    @Nullable
    public final f a() {
        return this.f5123d;
    }

    @Override // e7.d
    @Nullable
    public final String b() {
        return this.f5121b;
    }

    @Override // e7.d
    @Nullable
    public final String c() {
        return this.f5122c;
    }

    @Override // e7.d
    @Nullable
    public final int d() {
        return this.f5124e;
    }

    @Override // e7.d
    @Nullable
    public final String e() {
        return this.f5120a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.f5120a;
        if (str != null ? str.equals(dVar.e()) : dVar.e() == null) {
            String str2 = this.f5121b;
            if (str2 != null ? str2.equals(dVar.b()) : dVar.b() == null) {
                String str3 = this.f5122c;
                if (str3 != null ? str3.equals(dVar.c()) : dVar.c() == null) {
                    f fVar = this.f5123d;
                    if (fVar != null ? fVar.equals(dVar.a()) : dVar.a() == null) {
                        int r12 = this.f5124e;
                        int r52 = dVar.d();
                        if (r12 == 0) {
                            if (r52 == 0) {
                                return true;
                            }
                        } else if (g.d.b(r12, r52)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f5120a;
        int r12 = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f5121b;
        int r13 = (r12 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f5122c;
        int r14 = (r13 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        f fVar = this.f5123d;
        int r15 = (r14 ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        int r22 = this.f5124e;
        return (r22 != 0 ? g.d.c(r22) : 0) ^ r15;
    }

    public final String toString() {
        return "InstallationResponse{uri=" + this.f5120a + ", fid=" + this.f5121b + ", refreshToken=" + this.f5122c + ", authToken=" + this.f5123d + ", responseCode=" + androidx.appcompat.graphics.drawable.a.l(this.f5124e) + "}";
    }
}
