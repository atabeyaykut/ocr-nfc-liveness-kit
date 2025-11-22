package ed;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class k0 {

    /* renamed from: d, reason: collision with root package name */
    public static final a f5333d = new a();

    /* renamed from: a, reason: collision with root package name */
    public boolean f5334a;

    /* renamed from: b, reason: collision with root package name */
    public long f5335b;

    /* renamed from: c, reason: collision with root package name */
    public long f5336c;

    public static final class a extends k0 {
        @Override // ed.k0
        public final k0 d(long j10) {
            return this;
        }

        @Override // ed.k0
        public final void f() {
        }

        @Override // ed.k0
        public final k0 g(long j10, TimeUnit unit) {
            kotlin.jvm.internal.h.f(unit, "unit");
            return this;
        }
    }

    public k0 a() {
        this.f5334a = false;
        return this;
    }

    public k0 b() {
        this.f5336c = 0L;
        return this;
    }

    public long c() {
        if (this.f5334a) {
            return this.f5335b;
        }
        throw new IllegalStateException("No deadline".toString());
    }

    public k0 d(long j10) {
        this.f5334a = true;
        this.f5335b = j10;
        return this;
    }

    public boolean e() {
        return this.f5334a;
    }

    public void f() throws IOException {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.f5334a && this.f5335b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public k0 g(long j10, TimeUnit unit) {
        kotlin.jvm.internal.h.f(unit, "unit");
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "timeout < 0: ").toString());
        }
        this.f5336c = unit.toNanos(j10);
        return this;
    }
}
