package j6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j6.a0;

/* loaded from: classes2.dex */
public final class r extends a0.e.d.a.b.AbstractC0141d.AbstractC0142a {

    /* renamed from: a, reason: collision with root package name */
    public final long f8237a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8238b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8239c;

    /* renamed from: d, reason: collision with root package name */
    public final long f8240d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8241e;

    public static final class a extends a0.e.d.a.b.AbstractC0141d.AbstractC0142a.AbstractC0143a {

        /* renamed from: a, reason: collision with root package name */
        public Long f8242a;

        /* renamed from: b, reason: collision with root package name */
        public String f8243b;

        /* renamed from: c, reason: collision with root package name */
        public String f8244c;

        /* renamed from: d, reason: collision with root package name */
        public Long f8245d;

        /* renamed from: e, reason: collision with root package name */
        public Integer f8246e;

        public final r a() {
            String strF = this.f8242a == null ? " pc" : "";
            if (this.f8243b == null) {
                strF = strF.concat(" symbol");
            }
            if (this.f8245d == null) {
                strF = android.support.v4.media.a.f(strF, " offset");
            }
            if (this.f8246e == null) {
                strF = android.support.v4.media.a.f(strF, " importance");
            }
            if (strF.isEmpty()) {
                return new r(this.f8242a.longValue(), this.f8243b, this.f8244c, this.f8245d.longValue(), this.f8246e.intValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(strF));
        }
    }

    public r(long j10, String str, String str2, long j11, int r72) {
        this.f8237a = j10;
        this.f8238b = str;
        this.f8239c = str2;
        this.f8240d = j11;
        this.f8241e = r72;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0141d.AbstractC0142a
    @Nullable
    public final String a() {
        return this.f8239c;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0141d.AbstractC0142a
    public final int b() {
        return this.f8241e;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0141d.AbstractC0142a
    public final long c() {
        return this.f8240d;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0141d.AbstractC0142a
    public final long d() {
        return this.f8237a;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0141d.AbstractC0142a
    @NonNull
    public final String e() {
        return this.f8238b;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.e.d.a.b.AbstractC0141d.AbstractC0142a)) {
            return false;
        }
        a0.e.d.a.b.AbstractC0141d.AbstractC0142a abstractC0142a = (a0.e.d.a.b.AbstractC0141d.AbstractC0142a) obj;
        return this.f8237a == abstractC0142a.d() && this.f8238b.equals(abstractC0142a.e()) && ((str = this.f8239c) != null ? str.equals(abstractC0142a.a()) : abstractC0142a.a() == null) && this.f8240d == abstractC0142a.c() && this.f8241e == abstractC0142a.b();
    }

    public final int hashCode() {
        long j10 = this.f8237a;
        int r12 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f8238b.hashCode()) * 1000003;
        String str = this.f8239c;
        int r13 = (r12 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j11 = this.f8240d;
        return this.f8241e ^ ((r13 ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Frame{pc=");
        sb2.append(this.f8237a);
        sb2.append(", symbol=");
        sb2.append(this.f8238b);
        sb2.append(", file=");
        sb2.append(this.f8239c);
        sb2.append(", offset=");
        sb2.append(this.f8240d);
        sb2.append(", importance=");
        return androidx.browser.browseractions.a.b(sb2, this.f8241e, "}");
    }
}
