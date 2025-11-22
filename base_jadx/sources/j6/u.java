package j6;

import androidx.annotation.NonNull;
import j6.a0;

/* loaded from: classes2.dex */
public final class u extends a0.e.AbstractC0145e {

    /* renamed from: a, reason: collision with root package name */
    public final int f8258a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8259b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8260c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f8261d;

    public static final class a extends a0.e.AbstractC0145e.a {

        /* renamed from: a, reason: collision with root package name */
        public Integer f8262a;

        /* renamed from: b, reason: collision with root package name */
        public String f8263b;

        /* renamed from: c, reason: collision with root package name */
        public String f8264c;

        /* renamed from: d, reason: collision with root package name */
        public Boolean f8265d;

        public final u a() {
            String strF = this.f8262a == null ? " platform" : "";
            if (this.f8263b == null) {
                strF = strF.concat(" version");
            }
            if (this.f8264c == null) {
                strF = android.support.v4.media.a.f(strF, " buildVersion");
            }
            if (this.f8265d == null) {
                strF = android.support.v4.media.a.f(strF, " jailbroken");
            }
            if (strF.isEmpty()) {
                return new u(this.f8262a.intValue(), this.f8263b, this.f8264c, this.f8265d.booleanValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(strF));
        }
    }

    public u(int r12, String str, String str2, boolean z10) {
        this.f8258a = r12;
        this.f8259b = str;
        this.f8260c = str2;
        this.f8261d = z10;
    }

    @Override // j6.a0.e.AbstractC0145e
    @NonNull
    public final String a() {
        return this.f8260c;
    }

    @Override // j6.a0.e.AbstractC0145e
    public final int b() {
        return this.f8258a;
    }

    @Override // j6.a0.e.AbstractC0145e
    @NonNull
    public final String c() {
        return this.f8259b;
    }

    @Override // j6.a0.e.AbstractC0145e
    public final boolean d() {
        return this.f8261d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.e.AbstractC0145e)) {
            return false;
        }
        a0.e.AbstractC0145e abstractC0145e = (a0.e.AbstractC0145e) obj;
        return this.f8258a == abstractC0145e.b() && this.f8259b.equals(abstractC0145e.c()) && this.f8260c.equals(abstractC0145e.a()) && this.f8261d == abstractC0145e.d();
    }

    public final int hashCode() {
        return ((((((this.f8258a ^ 1000003) * 1000003) ^ this.f8259b.hashCode()) * 1000003) ^ this.f8260c.hashCode()) * 1000003) ^ (this.f8261d ? 1231 : 1237);
    }

    public final String toString() {
        return "OperatingSystem{platform=" + this.f8258a + ", version=" + this.f8259b + ", buildVersion=" + this.f8260c + ", jailbroken=" + this.f8261d + "}";
    }
}
