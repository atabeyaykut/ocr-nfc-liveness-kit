package c5;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final String f1786a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1787b;

    /* renamed from: c, reason: collision with root package name */
    public final long f1788c;

    /* renamed from: d, reason: collision with root package name */
    public final long f1789d;

    /* renamed from: e, reason: collision with root package name */
    public final long f1790e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    public final long f1791g;

    /* renamed from: h, reason: collision with root package name */
    public final Long f1792h;

    /* renamed from: i, reason: collision with root package name */
    public final Long f1793i;

    /* renamed from: j, reason: collision with root package name */
    public final Long f1794j;

    /* renamed from: k, reason: collision with root package name */
    public final Boolean f1795k;

    public o(String str, String str2, long j10, long j11, long j12, long j13, long j14, Long l5, Long l10, Long l11, Boolean bool) {
        r3.r.f(str);
        r3.r.f(str2);
        r3.r.a(j10 >= 0);
        r3.r.a(j11 >= 0);
        r3.r.a(j12 >= 0);
        r3.r.a(j14 >= 0);
        this.f1786a = str;
        this.f1787b = str2;
        this.f1788c = j10;
        this.f1789d = j11;
        this.f1790e = j12;
        this.f = j13;
        this.f1791g = j14;
        this.f1792h = l5;
        this.f1793i = l10;
        this.f1794j = l11;
        this.f1795k = bool;
    }

    public final o a(Long l5, Long l10, Boolean bool) {
        return new o(this.f1786a, this.f1787b, this.f1788c, this.f1789d, this.f1790e, this.f, this.f1791g, this.f1792h, l5, l10, (bool == null || bool.booleanValue()) ? bool : null);
    }

    public final o b(long j10, long j11) {
        return new o(this.f1786a, this.f1787b, this.f1788c, this.f1789d, this.f1790e, this.f, j10, Long.valueOf(j11), this.f1793i, this.f1794j, this.f1795k);
    }
}
