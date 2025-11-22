package u2;

/* loaded from: classes.dex */
public final class i extends r {

    /* renamed from: a, reason: collision with root package name */
    public final s f17831a;

    /* renamed from: b, reason: collision with root package name */
    public final String f17832b;

    /* renamed from: c, reason: collision with root package name */
    public final r2.c<?> f17833c;

    /* renamed from: d, reason: collision with root package name */
    public final r2.e<?, byte[]> f17834d;

    /* renamed from: e, reason: collision with root package name */
    public final r2.b f17835e;

    public i(s sVar, String str, r2.c cVar, r2.e eVar, r2.b bVar) {
        this.f17831a = sVar;
        this.f17832b = str;
        this.f17833c = cVar;
        this.f17834d = eVar;
        this.f17835e = bVar;
    }

    @Override // u2.r
    public final r2.b a() {
        return this.f17835e;
    }

    @Override // u2.r
    public final r2.c<?> b() {
        return this.f17833c;
    }

    @Override // u2.r
    public final r2.e<?, byte[]> c() {
        return this.f17834d;
    }

    @Override // u2.r
    public final s d() {
        return this.f17831a;
    }

    @Override // u2.r
    public final String e() {
        return this.f17832b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f17831a.equals(rVar.d()) && this.f17832b.equals(rVar.e()) && this.f17833c.equals(rVar.b()) && this.f17834d.equals(rVar.c()) && this.f17835e.equals(rVar.a());
    }

    public final int hashCode() {
        return ((((((((this.f17831a.hashCode() ^ 1000003) * 1000003) ^ this.f17832b.hashCode()) * 1000003) ^ this.f17833c.hashCode()) * 1000003) ^ this.f17834d.hashCode()) * 1000003) ^ this.f17835e.hashCode();
    }

    public final String toString() {
        return "SendRequest{transportContext=" + this.f17831a + ", transportName=" + this.f17832b + ", event=" + this.f17833c + ", transformer=" + this.f17834d + ", encoding=" + this.f17835e + "}";
    }
}
