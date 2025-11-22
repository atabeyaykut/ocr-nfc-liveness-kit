package d7;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import d7.d;

/* loaded from: classes2.dex */
public final class a extends d {

    /* renamed from: b, reason: collision with root package name */
    public final String f4674b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4675c;

    /* renamed from: d, reason: collision with root package name */
    public final String f4676d;

    /* renamed from: e, reason: collision with root package name */
    public final String f4677e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    public final long f4678g;

    /* renamed from: h, reason: collision with root package name */
    public final String f4679h;

    /* renamed from: d7.a$a, reason: collision with other inner class name */
    public static final class C0069a extends d.a {

        /* renamed from: a, reason: collision with root package name */
        public String f4680a;

        /* renamed from: b, reason: collision with root package name */
        public int f4681b;

        /* renamed from: c, reason: collision with root package name */
        public String f4682c;

        /* renamed from: d, reason: collision with root package name */
        public String f4683d;

        /* renamed from: e, reason: collision with root package name */
        public Long f4684e;
        public Long f;

        /* renamed from: g, reason: collision with root package name */
        public String f4685g;

        public C0069a() {
        }

        public C0069a(d dVar) {
            this.f4680a = dVar.c();
            this.f4681b = dVar.f();
            this.f4682c = dVar.a();
            this.f4683d = dVar.e();
            this.f4684e = Long.valueOf(dVar.b());
            this.f = Long.valueOf(dVar.g());
            this.f4685g = dVar.d();
        }

        public final a a() {
            String strF = this.f4681b == 0 ? " registrationStatus" : "";
            if (this.f4684e == null) {
                strF = strF.concat(" expiresInSecs");
            }
            if (this.f == null) {
                strF = android.support.v4.media.a.f(strF, " tokenCreationEpochInSecs");
            }
            if (strF.isEmpty()) {
                return new a(this.f4680a, this.f4681b, this.f4682c, this.f4683d, this.f4684e.longValue(), this.f.longValue(), this.f4685g);
            }
            throw new IllegalStateException("Missing required properties:".concat(strF));
        }

        public final C0069a b(int r22) {
            if (r22 == 0) {
                throw new NullPointerException("Null registrationStatus");
            }
            this.f4681b = r22;
            return this;
        }
    }

    public a(String str, int r22, String str2, String str3, long j10, long j11, String str4) {
        this.f4674b = str;
        this.f4675c = r22;
        this.f4676d = str2;
        this.f4677e = str3;
        this.f = j10;
        this.f4678g = j11;
        this.f4679h = str4;
    }

    @Override // d7.d
    @Nullable
    public final String a() {
        return this.f4676d;
    }

    @Override // d7.d
    public final long b() {
        return this.f;
    }

    @Override // d7.d
    @Nullable
    public final String c() {
        return this.f4674b;
    }

    @Override // d7.d
    @Nullable
    public final String d() {
        return this.f4679h;
    }

    @Override // d7.d
    @Nullable
    public final String e() {
        return this.f4677e;
    }

    public final boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str3 = this.f4674b;
        if (str3 != null ? str3.equals(dVar.c()) : dVar.c() == null) {
            if (g.d.b(this.f4675c, dVar.f()) && ((str = this.f4676d) != null ? str.equals(dVar.a()) : dVar.a() == null) && ((str2 = this.f4677e) != null ? str2.equals(dVar.e()) : dVar.e() == null) && this.f == dVar.b() && this.f4678g == dVar.g()) {
                String str4 = this.f4679h;
                String strD = dVar.d();
                if (str4 == null) {
                    if (strD == null) {
                        return true;
                    }
                } else if (str4.equals(strD)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // d7.d
    @NonNull
    public final int f() {
        return this.f4675c;
    }

    @Override // d7.d
    public final long g() {
        return this.f4678g;
    }

    public final C0069a h() {
        return new C0069a(this);
    }

    public final int hashCode() {
        String str = this.f4674b;
        int r12 = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ g.d.c(this.f4675c)) * 1000003;
        String str2 = this.f4676d;
        int r13 = (r12 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f4677e;
        int r14 = (r13 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j10 = this.f;
        int r15 = (r14 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f4678g;
        int r16 = (r15 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        String str4 = this.f4679h;
        return (str4 != null ? str4.hashCode() : 0) ^ r16;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("PersistedInstallationEntry{firebaseInstallationId=");
        sb2.append(this.f4674b);
        sb2.append(", registrationStatus=");
        sb2.append(androidx.browser.browseractions.a.h(this.f4675c));
        sb2.append(", authToken=");
        sb2.append(this.f4676d);
        sb2.append(", refreshToken=");
        sb2.append(this.f4677e);
        sb2.append(", expiresInSecs=");
        sb2.append(this.f);
        sb2.append(", tokenCreationEpochInSecs=");
        sb2.append(this.f4678g);
        sb2.append(", fisError=");
        return androidx.camera.camera2.internal.c.h(sb2, this.f4679h, "}");
    }
}
