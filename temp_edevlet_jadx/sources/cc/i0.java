package cc;

import bc.c;

/* loaded from: classes2.dex */
public final class i0 extends u1 {

    /* renamed from: b, reason: collision with root package name */
    public final bc.l f2321b;

    /* renamed from: c, reason: collision with root package name */
    public final x9.a<e0> f2322c;

    /* renamed from: d, reason: collision with root package name */
    public final bc.i<e0> f2323d;

    /* JADX WARN: Multi-variable type inference failed */
    public i0(bc.l storageManager, x9.a<? extends e0> aVar) {
        kotlin.jvm.internal.h.f(storageManager, "storageManager");
        this.f2321b = storageManager;
        this.f2322c = aVar;
        this.f2323d = storageManager.d(aVar);
    }

    @Override // cc.e0
    /* renamed from: O0 */
    public final e0 R0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new i0(this.f2321b, new h0(kotlinTypeRefiner, this));
    }

    @Override // cc.u1
    public final e0 Q0() {
        return this.f2323d.invoke();
    }

    @Override // cc.u1
    public final boolean R0() {
        c.f fVar = (c.f) this.f2323d;
        return (fVar.f1200c == c.l.NOT_COMPUTED || fVar.f1200c == c.l.COMPUTING) ? false : true;
    }
}
