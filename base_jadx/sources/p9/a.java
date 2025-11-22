package p9;

import kotlin.jvm.internal.h;
import p9.f;
import x9.p;

/* loaded from: classes2.dex */
public abstract class a implements f.b {
    private final f.c<?> key;

    public a(f.c<?> key) {
        h.f(key, "key");
        this.key = key;
    }

    @Override // p9.f
    public <R> R fold(R r6, p<? super R, ? super f.b, ? extends R> operation) {
        h.f(operation, "operation");
        return operation.mo7invoke(r6, this);
    }

    @Override // p9.f.b, p9.f
    public <E extends f.b> E get(f.c<E> cVar) {
        return (E) f.b.a.a(this, cVar);
    }

    @Override // p9.f.b
    public f.c<?> getKey() {
        return this.key;
    }

    @Override // p9.f
    public f minusKey(f.c<?> cVar) {
        return f.b.a.b(this, cVar);
    }

    @Override // p9.f
    public f plus(f context) {
        h.f(context, "context");
        return f.a.a(this, context);
    }
}
