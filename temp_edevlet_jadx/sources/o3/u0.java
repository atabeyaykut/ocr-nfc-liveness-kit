package o3;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import java.util.Map;

/* loaded from: classes.dex */
public final class u0 extends g0 {

    /* renamed from: b, reason: collision with root package name */
    public final m f11190b;

    /* renamed from: c, reason: collision with root package name */
    public final h5.l f11191c;

    /* renamed from: d, reason: collision with root package name */
    public final c5.v f11192d;

    public u0(int r12, m mVar, h5.l lVar, c5.v vVar) {
        super(r12);
        this.f11191c = lVar;
        this.f11190b = mVar;
        this.f11192d = vVar;
        if (r12 == 2 && mVar.f11163b) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // o3.w0
    public final void a(@NonNull Status status) {
        this.f11192d.getClass();
        this.f11191c.c(r3.b.a(status));
    }

    @Override // o3.w0
    public final void b(@NonNull RuntimeException runtimeException) {
        this.f11191c.c(runtimeException);
    }

    @Override // o3.w0
    public final void c(a0 a0Var) throws DeadObjectException {
        h5.l lVar = this.f11191c;
        try {
            this.f11190b.a(a0Var.f11072b, lVar);
        } catch (DeadObjectException e10) {
            throw e10;
        } catch (RemoteException e11) {
            a(w0.e(e11));
        } catch (RuntimeException e12) {
            lVar.c(e12);
        }
    }

    @Override // o3.w0
    public final void d(@NonNull q qVar, boolean z10) {
        Map map = qVar.f11184b;
        Boolean boolValueOf = Boolean.valueOf(z10);
        h5.l lVar = this.f11191c;
        map.put(lVar, boolValueOf);
        lVar.f6841a.b(new p(qVar, lVar));
    }

    @Override // o3.g0
    public final boolean f(a0 a0Var) {
        return this.f11190b.f11163b;
    }

    @Override // o3.g0
    @Nullable
    public final m3.d[] g(a0 a0Var) {
        return this.f11190b.f11162a;
    }
}
