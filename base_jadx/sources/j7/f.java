package j7;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class f extends u<AtomicLong> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f8288a;

    public f(u uVar) {
        this.f8288a = uVar;
    }

    @Override // j7.u
    public final AtomicLong a(q7.a aVar) throws IOException {
        return new AtomicLong(((Number) this.f8288a.a(aVar)).longValue());
    }

    @Override // j7.u
    public final void b(q7.b bVar, AtomicLong atomicLong) throws IOException {
        this.f8288a.b(bVar, Long.valueOf(atomicLong.get()));
    }
}
