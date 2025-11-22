package z3;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class i implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f19811a;

    public i(x4.i iVar) {
        this.f19811a = iVar;
    }

    @Override // z3.k
    public final void a() {
        x4.h hVar = (x4.h) this.f19811a.f19793a;
        hVar.getClass();
        try {
            hVar.f19143b.onStart();
        } catch (RemoteException e10) {
            throw new z4.g(e10);
        }
    }

    @Override // z3.k
    public final int b() {
        return 4;
    }
}
