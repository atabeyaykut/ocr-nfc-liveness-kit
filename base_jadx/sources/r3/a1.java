package r3;

import androidx.annotation.BinderThread;

/* loaded from: classes.dex */
public final class a1 extends n0 {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ c f13909g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public a1(c cVar, int r32) {
        super(cVar, r32, null);
        this.f13909g = cVar;
    }

    @Override // r3.n0
    public final void e(m3.b bVar) {
        c cVar = this.f13909g;
        cVar.getClass();
        cVar.f13926j.a(bVar);
        System.currentTimeMillis();
    }

    @Override // r3.n0
    public final boolean f() {
        this.f13909g.f13926j.a(m3.b.f9924e);
        return true;
    }
}
