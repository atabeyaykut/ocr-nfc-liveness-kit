package nc;

import p9.f;

/* loaded from: classes2.dex */
public final class a2 implements f.b, f.c<a2> {

    /* renamed from: a, reason: collision with root package name */
    public static final a2 f10781a = new a2();

    @Override // p9.f
    public final <R> R fold(R r6, x9.p<? super R, ? super f.b, ? extends R> operation) {
        kotlin.jvm.internal.h.f(operation, "operation");
        return operation.mo7invoke(r6, this);
    }

    @Override // p9.f.b, p9.f
    public final <E extends f.b> E get(f.c<E> cVar) {
        return (E) f.b.a.a(this, cVar);
    }

    @Override // p9.f.b
    public final f.c<?> getKey() {
        return this;
    }

    @Override // p9.f
    public final p9.f minusKey(f.c<?> cVar) {
        return f.b.a.b(this, cVar);
    }

    @Override // p9.f
    public final p9.f plus(p9.f context) {
        kotlin.jvm.internal.h.f(context, "context");
        return f.a.a(this, context);
    }
}
