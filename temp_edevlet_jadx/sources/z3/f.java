package z3;

import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class f implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Bundle f19802a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a f19803b;

    public f(x4.i iVar, Bundle bundle) {
        this.f19803b = iVar;
        this.f19802a = bundle;
    }

    @Override // z3.k
    public final void a() {
        c cVar = this.f19803b.f19793a;
        Bundle bundle = this.f19802a;
        x4.h hVar = (x4.h) cVar;
        hVar.getClass();
        try {
            Bundle bundle2 = new Bundle();
            y4.i.b(bundle, bundle2);
            Bundle arguments = hVar.f19142a.getArguments();
            if (arguments != null && arguments.containsKey("MapOptions")) {
                y4.i.c(bundle2, "MapOptions", arguments.getParcelable("MapOptions"));
            }
            hVar.f19143b.u0(bundle2);
            y4.i.b(bundle2, bundle);
        } catch (RemoteException e10) {
            throw new z4.g(e10);
        }
    }

    @Override // z3.k
    public final int b() {
        return 1;
    }
}
