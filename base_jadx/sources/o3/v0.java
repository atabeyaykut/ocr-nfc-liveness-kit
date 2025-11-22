package o3;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import o3.h;

/* loaded from: classes.dex */
public final class v0 extends r0 {

    /* renamed from: c, reason: collision with root package name */
    public final h.a f11194c;

    public v0(h.a aVar, h5.l lVar) {
        super(lVar);
        this.f11194c = aVar;
    }

    @Override // o3.w0
    public final /* bridge */ /* synthetic */ void d(@NonNull q qVar, boolean z10) {
    }

    @Override // o3.g0
    public final boolean f(a0 a0Var) {
        if (((m0) a0Var.f.get(this.f11194c)) == null) {
            return false;
        }
        throw null;
    }

    @Override // o3.g0
    @Nullable
    public final m3.d[] g(a0 a0Var) {
        if (((m0) a0Var.f.get(this.f11194c)) == null) {
            return null;
        }
        throw null;
    }

    @Override // o3.r0
    public final void h(a0 a0Var) throws RemoteException {
        if (((m0) a0Var.f.remove(this.f11194c)) != null) {
            throw null;
        }
        this.f11187b.d(Boolean.FALSE);
    }
}
