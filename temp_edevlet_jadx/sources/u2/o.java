package u2;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class o implements x2.b<Executor> {

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final o f17849a = new o();
    }

    @Override // k9.a
    public final Object get() {
        return new q(Executors.newSingleThreadExecutor());
    }
}
