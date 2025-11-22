package kotlinx.coroutines.scheduling;

import nc.y;

/* loaded from: classes2.dex */
public final class k extends y {

    /* renamed from: a, reason: collision with root package name */
    public static final k f9221a = new k();

    @Override // nc.y
    public final void dispatch(p9.f fVar, Runnable runnable) {
        c cVar = c.f9209b;
        cVar.f9211a.b(runnable, j.f9220g, false);
    }

    @Override // nc.y
    public final void dispatchYield(p9.f fVar, Runnable runnable) {
        c cVar = c.f9209b;
        cVar.f9211a.b(runnable, j.f9220g, true);
    }
}
