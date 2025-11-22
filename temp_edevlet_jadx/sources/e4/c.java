package e4;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final class c implements b, IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f5106a;

    public c(IBinder iBinder) {
        this.f5106a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f5106a;
    }
}
