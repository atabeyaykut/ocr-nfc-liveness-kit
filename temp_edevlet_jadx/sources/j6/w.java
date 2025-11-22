package j6;

import j6.c0;

/* loaded from: classes2.dex */
public final class w extends c0 {

    /* renamed from: a, reason: collision with root package name */
    public final c0.a f8267a;

    /* renamed from: b, reason: collision with root package name */
    public final c0.c f8268b;

    /* renamed from: c, reason: collision with root package name */
    public final c0.b f8269c;

    public w(x xVar, z zVar, y yVar) {
        this.f8267a = xVar;
        this.f8268b = zVar;
        this.f8269c = yVar;
    }

    @Override // j6.c0
    public final c0.a a() {
        return this.f8267a;
    }

    @Override // j6.c0
    public final c0.b b() {
        return this.f8269c;
    }

    @Override // j6.c0
    public final c0.c c() {
        return this.f8268b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return this.f8267a.equals(c0Var.a()) && this.f8268b.equals(c0Var.c()) && this.f8269c.equals(c0Var.b());
    }

    public final int hashCode() {
        return ((((this.f8267a.hashCode() ^ 1000003) * 1000003) ^ this.f8268b.hashCode()) * 1000003) ^ this.f8269c.hashCode();
    }

    public final String toString() {
        return "StaticSessionData{appData=" + this.f8267a + ", osData=" + this.f8268b + ", deviceData=" + this.f8269c + "}";
    }
}
