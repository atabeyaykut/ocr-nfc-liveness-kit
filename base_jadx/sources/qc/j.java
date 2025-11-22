package qc;

import p9.f;

/* loaded from: classes2.dex */
public final class j implements p9.f {

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f13519a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p9.f f13520b;

    public j(p9.f fVar, Throwable th2) {
        this.f13519a = th2;
        this.f13520b = fVar;
    }

    @Override // p9.f
    public final <R> R fold(R r6, x9.p<? super R, ? super f.b, ? extends R> pVar) {
        return (R) this.f13520b.fold(r6, pVar);
    }

    @Override // p9.f
    public final <E extends f.b> E get(f.c<E> cVar) {
        return (E) this.f13520b.get(cVar);
    }

    @Override // p9.f
    public final p9.f minusKey(f.c<?> cVar) {
        return this.f13520b.minusKey(cVar);
    }

    @Override // p9.f
    public final p9.f plus(p9.f fVar) {
        return this.f13520b.plus(fVar);
    }
}
