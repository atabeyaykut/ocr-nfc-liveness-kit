package b4;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final class f implements d, IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f1140a;

    public f(IBinder iBinder) {
        this.f1140a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f1140a;
    }
}
