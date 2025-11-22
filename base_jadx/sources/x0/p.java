package x0;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.util.Map;

/* loaded from: classes.dex */
public final class p implements v0.f {

    /* renamed from: b, reason: collision with root package name */
    public final Object f19066b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19067c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19068d;

    /* renamed from: e, reason: collision with root package name */
    public final Class<?> f19069e;
    public final Class<?> f;

    /* renamed from: g, reason: collision with root package name */
    public final v0.f f19070g;

    /* renamed from: h, reason: collision with root package name */
    public final Map<Class<?>, v0.l<?>> f19071h;

    /* renamed from: i, reason: collision with root package name */
    public final v0.h f19072i;

    /* renamed from: j, reason: collision with root package name */
    public int f19073j;

    public p(Object obj, v0.f fVar, int r32, int r42, q1.b bVar, Class cls, Class cls2, v0.h hVar) {
        q1.l.b(obj);
        this.f19066b = obj;
        if (fVar == null) {
            throw new NullPointerException("Signature must not be null");
        }
        this.f19070g = fVar;
        this.f19067c = r32;
        this.f19068d = r42;
        q1.l.b(bVar);
        this.f19071h = bVar;
        if (cls == null) {
            throw new NullPointerException("Resource class must not be null");
        }
        this.f19069e = cls;
        if (cls2 == null) {
            throw new NullPointerException("Transcode class must not be null");
        }
        this.f = cls2;
        q1.l.b(hVar);
        this.f19072i = hVar;
    }

    @Override // v0.f
    public final void a(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // v0.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f19066b.equals(pVar.f19066b) && this.f19070g.equals(pVar.f19070g) && this.f19068d == pVar.f19068d && this.f19067c == pVar.f19067c && this.f19071h.equals(pVar.f19071h) && this.f19069e.equals(pVar.f19069e) && this.f.equals(pVar.f) && this.f19072i.equals(pVar.f19072i);
    }

    @Override // v0.f
    public final int hashCode() {
        if (this.f19073j == 0) {
            int r02 = this.f19066b.hashCode();
            this.f19073j = r02;
            int r12 = ((((this.f19070g.hashCode() + (r02 * 31)) * 31) + this.f19067c) * 31) + this.f19068d;
            this.f19073j = r12;
            int r03 = this.f19071h.hashCode() + (r12 * 31);
            this.f19073j = r03;
            int r13 = this.f19069e.hashCode() + (r03 * 31);
            this.f19073j = r13;
            int r04 = this.f.hashCode() + (r13 * 31);
            this.f19073j = r04;
            this.f19073j = this.f19072i.hashCode() + (r04 * 31);
        }
        return this.f19073j;
    }

    public final String toString() {
        return "EngineKey{model=" + this.f19066b + ", width=" + this.f19067c + ", height=" + this.f19068d + ", resourceClass=" + this.f19069e + ", transcodeClass=" + this.f + ", signature=" + this.f19070g + ", hashCode=" + this.f19073j + ", transformations=" + this.f19071h + ", options=" + this.f19072i + '}';
    }
}
