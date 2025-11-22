package p9;

import java.io.Serializable;
import kotlin.jvm.internal.h;
import p9.f;
import x9.p;

/* loaded from: classes2.dex */
public final class g implements f, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final g f12870a = new g();

    @Override // p9.f
    public final <R> R fold(R r6, p<? super R, ? super f.b, ? extends R> operation) {
        h.f(operation, "operation");
        return r6;
    }

    @Override // p9.f
    public final <E extends f.b> E get(f.c<E> key) {
        h.f(key, "key");
        return null;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // p9.f
    public final f minusKey(f.c<?> key) {
        h.f(key, "key");
        return this;
    }

    @Override // p9.f
    public final f plus(f context) {
        h.f(context, "context");
        return context;
    }

    public final String toString() {
        return "EmptyCoroutineContext";
    }
}
