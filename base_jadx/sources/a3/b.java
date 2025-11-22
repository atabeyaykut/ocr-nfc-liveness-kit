package a3;

import a3.e;
import java.util.Map;

/* loaded from: classes.dex */
public final class b extends e {

    /* renamed from: a, reason: collision with root package name */
    public final d3.a f49a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<r2.d, e.a> f50b;

    public b(d3.a aVar, Map<r2.d, e.a> map) {
        if (aVar == null) {
            throw new NullPointerException("Null clock");
        }
        this.f49a = aVar;
        if (map == null) {
            throw new NullPointerException("Null values");
        }
        this.f50b = map;
    }

    @Override // a3.e
    public final d3.a a() {
        return this.f49a;
    }

    @Override // a3.e
    public final Map<r2.d, e.a> c() {
        return this.f50b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f49a.equals(eVar.a()) && this.f50b.equals(eVar.c());
    }

    public final int hashCode() {
        return ((this.f49a.hashCode() ^ 1000003) * 1000003) ^ this.f50b.hashCode();
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.f49a + ", values=" + this.f50b + "}";
    }
}
