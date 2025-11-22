package ud;

import java.lang.reflect.Type;
import java.util.concurrent.Executor;
import ud.j;

/* loaded from: classes2.dex */
public final class g implements c<Object, b<?>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Type f18014a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Executor f18015b;

    public g(Type type, Executor executor) {
        this.f18014a = type;
        this.f18015b = executor;
    }

    @Override // ud.c
    public final Type a() {
        return this.f18014a;
    }

    @Override // ud.c
    public final Object b(u uVar) {
        Executor executor = this.f18015b;
        return executor == null ? uVar : new j.a(executor, uVar);
    }
}
