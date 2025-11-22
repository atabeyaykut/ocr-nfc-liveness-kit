package x0;

import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class q<Z> implements w<Z> {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f19074a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f19075b;

    /* renamed from: c, reason: collision with root package name */
    public final w<Z> f19076c;

    /* renamed from: d, reason: collision with root package name */
    public final a f19077d;

    /* renamed from: e, reason: collision with root package name */
    public final v0.f f19078e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f19079g;

    public interface a {
        void a(v0.f fVar, q<?> qVar);
    }

    public q(w<Z> wVar, boolean z10, boolean z11, v0.f fVar, a aVar) {
        q1.l.b(wVar);
        this.f19076c = wVar;
        this.f19074a = z10;
        this.f19075b = z11;
        this.f19078e = fVar;
        q1.l.b(aVar);
        this.f19077d = aVar;
    }

    @Override // x0.w
    @NonNull
    public final Class<Z> a() {
        return this.f19076c.a();
    }

    public final synchronized void b() {
        if (this.f19079g) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.f++;
    }

    public final void c() {
        boolean z10;
        synchronized (this) {
            int r02 = this.f;
            if (r02 <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z10 = true;
            int r03 = r02 - 1;
            this.f = r03;
            if (r03 != 0) {
                z10 = false;
            }
        }
        if (z10) {
            this.f19077d.a(this.f19078e, this);
        }
    }

    @Override // x0.w
    @NonNull
    public final Z get() {
        return this.f19076c.get();
    }

    @Override // x0.w
    public final int getSize() {
        return this.f19076c.getSize();
    }

    @Override // x0.w
    public final synchronized void recycle() {
        if (this.f > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f19079g) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f19079g = true;
        if (this.f19075b) {
            this.f19076c.recycle();
        }
    }

    public final synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f19074a + ", listener=" + this.f19077d + ", key=" + this.f19078e + ", acquired=" + this.f + ", isRecycled=" + this.f19079g + ", resource=" + this.f19076c + '}';
    }
}
