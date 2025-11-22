package qc;

import pc.y;

/* loaded from: classes2.dex */
public final class p<T> implements kotlinx.coroutines.flow.g<T> {

    /* renamed from: a, reason: collision with root package name */
    public final y<T> f13532a;

    /* JADX WARN: Multi-variable type inference failed */
    public p(y<? super T> yVar) {
        this.f13532a = yVar;
    }

    @Override // kotlinx.coroutines.flow.g
    public final Object emit(T t10, p9.d<? super l9.m> dVar) {
        Object objP = this.f13532a.p(t10, dVar);
        return objP == q9.a.COROUTINE_SUSPENDED ? objP : l9.m.f9594a;
    }
}
