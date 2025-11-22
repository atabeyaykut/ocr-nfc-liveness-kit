package z3;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class j implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f19812a;

    public j(x4.i iVar) {
        this.f19812a = iVar;
    }

    @Override // z3.k
    public final void a() {
        x4.h hVar = (x4.h) this.f19812a.f19793a;
        hVar.getClass();
        try {
            hVar.f19143b.onResume();
        } catch (RemoteException e10) {
            throw new z4.g(e10);
        }
    }

    @Override // z3.k
    public final int b() {
        return 5;
    }
}
