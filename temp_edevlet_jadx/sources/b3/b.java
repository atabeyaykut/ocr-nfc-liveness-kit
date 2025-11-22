package b3;

/* loaded from: classes.dex */
public final class b extends j {

    /* renamed from: a, reason: collision with root package name */
    public final long f1096a;

    /* renamed from: b, reason: collision with root package name */
    public final u2.s f1097b;

    /* renamed from: c, reason: collision with root package name */
    public final u2.n f1098c;

    public b(long j10, u2.s sVar, u2.n nVar) {
        this.f1096a = j10;
        if (sVar == null) {
            throw new NullPointerException("Null transportContext");
        }
        this.f1097b = sVar;
        if (nVar == null) {
            throw new NullPointerException("Null event");
        }
        this.f1098c = nVar;
    }

    @Override // b3.j
    public final u2.n a() {
        return this.f1098c;
    }

    @Override // b3.j
    public final long b() {
        return this.f1096a;
    }

    @Override // b3.j
    public final u2.s c() {
        return this.f1097b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.f1096a == jVar.b() && this.f1097b.equals(jVar.c()) && this.f1098c.equals(jVar.a());
    }

    public final int hashCode() {
        long j10 = this.f1096a;
        return this.f1098c.hashCode() ^ ((((((int) ((j10 >>> 32) ^ j10)) ^ 1000003) * 1000003) ^ this.f1097b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.f1096a + ", transportContext=" + this.f1097b + ", event=" + this.f1098c + "}";
    }
}
