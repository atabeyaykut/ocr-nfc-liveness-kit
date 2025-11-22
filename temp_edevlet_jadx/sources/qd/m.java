package qd;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final Object f13596a;

    /* renamed from: b, reason: collision with root package name */
    public final k f13597b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f13598c = true;

    public m(Object obj, k kVar) {
        this.f13596a = obj;
        this.f13597b = kVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f13596a == mVar.f13596a && this.f13597b.equals(mVar.f13597b);
    }

    public final int hashCode() {
        return this.f13597b.f.hashCode() + this.f13596a.hashCode();
    }
}
