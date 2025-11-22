package rc;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class y extends a0 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ed.h f14607b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ t f14608c;

    public y(t tVar, ed.h hVar) {
        this.f14607b = hVar;
        this.f14608c = tVar;
    }

    @Override // rc.a0
    public final long a() {
        return this.f14607b.r();
    }

    @Override // rc.a0
    public final t b() {
        return this.f14608c;
    }

    @Override // rc.a0
    public final void c(ed.f fVar) throws IOException {
        fVar.C(this.f14607b);
    }
}
