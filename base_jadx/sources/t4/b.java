package t4;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final class b implements a, IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f15641a;

    public b(IBinder iBinder) {
        this.f15641a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f15641a;
    }
}
