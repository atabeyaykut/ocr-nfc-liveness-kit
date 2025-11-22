package f4;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public class a implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f5518a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5519b;

    public a(IBinder iBinder, String str) {
        this.f5518a = iBinder;
        this.f5519b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f5518a;
    }
}
