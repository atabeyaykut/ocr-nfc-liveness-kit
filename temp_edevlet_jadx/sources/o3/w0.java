package o3;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class w0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f11197a;

    public w0(int r12) {
        this.f11197a = r12;
    }

    public static /* bridge */ /* synthetic */ Status e(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    public abstract void a(@NonNull Status status);

    public abstract void b(@NonNull RuntimeException runtimeException);

    public abstract void c(a0 a0Var) throws DeadObjectException;

    public abstract void d(@NonNull q qVar, boolean z10);
}
