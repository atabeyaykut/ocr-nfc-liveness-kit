package qc;

/* loaded from: classes2.dex */
public final class q<T> implements p9.d<T>, r9.d {

    /* renamed from: a, reason: collision with root package name */
    public final p9.d<T> f13533a;

    /* renamed from: b, reason: collision with root package name */
    public final p9.f f13534b;

    /* JADX WARN: Multi-variable type inference failed */
    public q(p9.d<? super T> dVar, p9.f fVar) {
        this.f13533a = dVar;
        this.f13534b = fVar;
    }

    @Override // r9.d
    public final r9.d getCallerFrame() {
        p9.d<T> dVar = this.f13533a;
        if (dVar instanceof r9.d) {
            return (r9.d) dVar;
        }
        return null;
    }

    @Override // p9.d
    public final p9.f getContext() {
        return this.f13534b;
    }

    @Override // p9.d
    public final void resumeWith(Object obj) {
        this.f13533a.resumeWith(obj);
    }
}
