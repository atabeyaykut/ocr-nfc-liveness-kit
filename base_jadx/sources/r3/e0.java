package r3;

import r3.c;

/* loaded from: classes.dex */
public final class e0 implements c.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o3.c f13955a;

    public e0(o3.c cVar) {
        this.f13955a = cVar;
    }

    @Override // r3.c.a
    public final void a() {
        this.f13955a.onConnected(null);
    }

    @Override // r3.c.a
    public final void onConnectionSuspended(int r22) {
        this.f13955a.onConnectionSuspended(r22);
    }
}
