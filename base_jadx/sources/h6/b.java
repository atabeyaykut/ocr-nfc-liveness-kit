package h6;

import java.io.File;

/* loaded from: classes2.dex */
public final class b extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final j6.a0 f6883a;

    /* renamed from: b, reason: collision with root package name */
    public final String f6884b;

    /* renamed from: c, reason: collision with root package name */
    public final File f6885c;

    public b(j6.b bVar, String str, File file) {
        this.f6883a = bVar;
        if (str == null) {
            throw new NullPointerException("Null sessionId");
        }
        this.f6884b = str;
        this.f6885c = file;
    }

    @Override // h6.a0
    public final j6.a0 a() {
        return this.f6883a;
    }

    @Override // h6.a0
    public final File b() {
        return this.f6885c;
    }

    @Override // h6.a0
    public final String c() {
        return this.f6884b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return this.f6883a.equals(a0Var.a()) && this.f6884b.equals(a0Var.c()) && this.f6885c.equals(a0Var.b());
    }

    public final int hashCode() {
        return ((((this.f6883a.hashCode() ^ 1000003) * 1000003) ^ this.f6884b.hashCode()) * 1000003) ^ this.f6885c.hashCode();
    }

    public final String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.f6883a + ", sessionId=" + this.f6884b + ", reportFile=" + this.f6885c + "}";
    }
}
