package o3;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import java.util.Map;
import n3.a;

/* loaded from: classes.dex */
public final class t0 extends w0 {

    /* renamed from: b, reason: collision with root package name */
    public final com.google.android.gms.common.api.internal.a f11188b;

    public t0(int r12, com.google.android.gms.common.api.internal.a aVar) {
        super(r12);
        this.f11188b = aVar;
    }

    @Override // o3.w0
    public final void a(@NonNull Status status) {
        try {
            this.f11188b.j(status);
        } catch (IllegalStateException e10) {
            Log.w("ApiCallRunner", "Exception reporting failure", e10);
        }
    }

    @Override // o3.w0
    public final void b(@NonNull RuntimeException runtimeException) {
        try {
            this.f11188b.j(new Status(10, androidx.camera.core.impl.utils.f.g(runtimeException.getClass().getSimpleName(), ": ", runtimeException.getLocalizedMessage())));
        } catch (IllegalStateException e10) {
            Log.w("ApiCallRunner", "Exception reporting failure", e10);
        }
    }

    @Override // o3.w0
    public final void c(a0 a0Var) throws DeadObjectException {
        try {
            com.google.android.gms.common.api.internal.a aVar = this.f11188b;
            a.e eVar = a0Var.f11072b;
            aVar.getClass();
            try {
                try {
                    aVar.i(eVar);
                } catch (RemoteException e10) {
                    aVar.j(new Status(1, 8, e10.getLocalizedMessage(), null, null));
                }
            } catch (DeadObjectException e11) {
                aVar.j(new Status(1, 8, e11.getLocalizedMessage(), null, null));
                throw e11;
            }
        } catch (RuntimeException e12) {
            b(e12);
        }
    }

    @Override // o3.w0
    public final void d(@NonNull q qVar, boolean z10) {
        Map map = qVar.f11183a;
        Boolean boolValueOf = Boolean.valueOf(z10);
        com.google.android.gms.common.api.internal.a aVar = this.f11188b;
        map.put(aVar, boolValueOf);
        aVar.a(new o(qVar, aVar));
    }
}
