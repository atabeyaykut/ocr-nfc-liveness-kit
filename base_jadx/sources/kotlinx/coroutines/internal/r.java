package kotlinx.coroutines.internal;

/* loaded from: classes2.dex */
public class r<T> extends nc.a<T> implements r9.d {

    /* renamed from: c, reason: collision with root package name */
    public final p9.d<T> f9172c;

    public r(p9.d dVar, p9.f fVar) {
        super(fVar, true);
        this.f9172c = dVar;
    }

    @Override // nc.g1
    public void F(Object obj) {
        a2.b.m(c5.w.x(this.f9172c), x5.a.p(obj), null);
    }

    @Override // nc.g1
    public final boolean W() {
        return true;
    }

    @Override // r9.d
    public final r9.d getCallerFrame() {
        p9.d<T> dVar = this.f9172c;
        if (dVar instanceof r9.d) {
            return (r9.d) dVar;
        }
        return null;
    }

    @Override // nc.a
    public void i0(Object obj) {
        this.f9172c.resumeWith(x5.a.p(obj));
    }
}
