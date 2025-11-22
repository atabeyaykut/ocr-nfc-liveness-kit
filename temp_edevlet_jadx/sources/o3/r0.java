package o3;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class r0 extends g0 {

    /* renamed from: b, reason: collision with root package name */
    public final h5.l f11187b;

    public r0(h5.l lVar) {
        super(4);
        this.f11187b = lVar;
    }

    @Override // o3.w0
    public final void a(@NonNull Status status) {
        this.f11187b.c(new n3.b(status));
    }

    @Override // o3.w0
    public final void b(@NonNull RuntimeException runtimeException) {
        this.f11187b.c(runtimeException);
    }

    @Override // o3.w0
    public final void c(a0 a0Var) throws DeadObjectException {
        try {
            h(a0Var);
        } catch (DeadObjectException e10) {
            a(w0.e(e10));
            throw e10;
        } catch (RemoteException e11) {
            a(w0.e(e11));
        } catch (RuntimeException e12) {
            this.f11187b.c(e12);
        }
    }

    public abstract void h(a0 a0Var) throws RemoteException;
}
