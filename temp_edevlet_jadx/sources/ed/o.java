package ed;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class o extends k0 {

    /* renamed from: e, reason: collision with root package name */
    public k0 f5345e;

    public o(k0 delegate) {
        kotlin.jvm.internal.h.f(delegate, "delegate");
        this.f5345e = delegate;
    }

    @Override // ed.k0
    public final k0 a() {
        return this.f5345e.a();
    }

    @Override // ed.k0
    public final k0 b() {
        return this.f5345e.b();
    }

    @Override // ed.k0
    public final long c() {
        return this.f5345e.c();
    }

    @Override // ed.k0
    public final k0 d(long j10) {
        return this.f5345e.d(j10);
    }

    @Override // ed.k0
    public final boolean e() {
        return this.f5345e.e();
    }

    @Override // ed.k0
    public final void f() throws IOException {
        this.f5345e.f();
    }

    @Override // ed.k0
    public final k0 g(long j10, TimeUnit unit) {
        kotlin.jvm.internal.h.f(unit, "unit");
        return this.f5345e.g(j10, unit);
    }
}
