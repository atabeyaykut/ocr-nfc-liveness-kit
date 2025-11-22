package j6;

import androidx.annotation.Nullable;
import j6.a0;

/* loaded from: classes2.dex */
public final class s extends a0.e.d.c {

    /* renamed from: a, reason: collision with root package name */
    public final Double f8247a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8248b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f8249c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8250d;

    /* renamed from: e, reason: collision with root package name */
    public final long f8251e;
    public final long f;

    public static final class a extends a0.e.d.c.a {

        /* renamed from: a, reason: collision with root package name */
        public Double f8252a;

        /* renamed from: b, reason: collision with root package name */
        public Integer f8253b;

        /* renamed from: c, reason: collision with root package name */
        public Boolean f8254c;

        /* renamed from: d, reason: collision with root package name */
        public Integer f8255d;

        /* renamed from: e, reason: collision with root package name */
        public Long f8256e;
        public Long f;

        public final s a() {
            String strF = this.f8253b == null ? " batteryVelocity" : "";
            if (this.f8254c == null) {
                strF = strF.concat(" proximityOn");
            }
            if (this.f8255d == null) {
                strF = android.support.v4.media.a.f(strF, " orientation");
            }
            if (this.f8256e == null) {
                strF = android.support.v4.media.a.f(strF, " ramUsed");
            }
            if (this.f == null) {
                strF = android.support.v4.media.a.f(strF, " diskUsed");
            }
            if (strF.isEmpty()) {
                return new s(this.f8252a, this.f8253b.intValue(), this.f8254c.booleanValue(), this.f8255d.intValue(), this.f8256e.longValue(), this.f.longValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(strF));
        }
    }

    public s(Double d10, int r22, boolean z10, int r42, long j10, long j11) {
        this.f8247a = d10;
        this.f8248b = r22;
        this.f8249c = z10;
        this.f8250d = r42;
        this.f8251e = j10;
        this.f = j11;
    }

    @Override // j6.a0.e.d.c
    @Nullable
    public final Double a() {
        return this.f8247a;
    }

    @Override // j6.a0.e.d.c
    public final int b() {
        return this.f8248b;
    }

    @Override // j6.a0.e.d.c
    public final long c() {
        return this.f;
    }

    @Override // j6.a0.e.d.c
    public final int d() {
        return this.f8250d;
    }

    @Override // j6.a0.e.d.c
    public final long e() {
        return this.f8251e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.e.d.c)) {
            return false;
        }
        a0.e.d.c cVar = (a0.e.d.c) obj;
        Double d10 = this.f8247a;
        if (d10 != null ? d10.equals(cVar.a()) : cVar.a() == null) {
            if (this.f8248b == cVar.b() && this.f8249c == cVar.f() && this.f8250d == cVar.d() && this.f8251e == cVar.e() && this.f == cVar.c()) {
                return true;
            }
        }
        return false;
    }

    @Override // j6.a0.e.d.c
    public final boolean f() {
        return this.f8249c;
    }

    public final int hashCode() {
        Double d10 = this.f8247a;
        int r02 = ((((((((d10 == null ? 0 : d10.hashCode()) ^ 1000003) * 1000003) ^ this.f8248b) * 1000003) ^ (this.f8249c ? 1231 : 1237)) * 1000003) ^ this.f8250d) * 1000003;
        long j10 = this.f8251e;
        long j11 = this.f;
        return ((r02 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public final String toString() {
        return "Device{batteryLevel=" + this.f8247a + ", batteryVelocity=" + this.f8248b + ", proximityOn=" + this.f8249c + ", orientation=" + this.f8250d + ", ramUsed=" + this.f8251e + ", diskUsed=" + this.f + "}";
    }
}
