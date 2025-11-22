package m4;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class k extends j0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h5.l f10006a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w4.k f10007b;

    public k(h5.l lVar, o oVar) {
        this.f10006a = lVar;
        this.f10007b = oVar;
    }

    @Override // m4.k0
    public final void N(g0 g0Var) {
        o3.n.a(g0Var.f10000a, null, this.f10006a);
    }

    @Override // m4.k0
    public final void e() throws RemoteException {
        this.f10007b.k();
    }
}
