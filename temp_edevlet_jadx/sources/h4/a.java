package h4;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public class a implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f6832a;

    /* renamed from: b, reason: collision with root package name */
    public final String f6833b;

    public a(IBinder iBinder, String str) {
        this.f6832a = iBinder;
        this.f6833b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f6832a;
    }
}
