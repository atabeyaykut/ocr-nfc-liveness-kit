package kotlinx.coroutines.internal;

/* loaded from: classes2.dex */
public final class f implements nc.a0 {

    /* renamed from: a, reason: collision with root package name */
    public final p9.f f9138a;

    public f(p9.f fVar) {
        this.f9138a = fVar;
    }

    @Override // nc.a0
    public final p9.f getCoroutineContext() {
        return this.f9138a;
    }

    public final String toString() {
        return "CoroutineScope(coroutineContext=" + this.f9138a + ')';
    }
}
