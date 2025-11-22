package g4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import n3.d;

/* loaded from: classes.dex */
public final class f extends r3.h<c> {
    public f(Context context, Looper looper, r3.e eVar, d.a aVar, d.b bVar) {
        super(context, looper, 126, eVar, aVar, bVar);
    }

    @Override // r3.c
    public final int l() {
        return 12451000;
    }

    @Override // r3.c
    public final /* synthetic */ IInterface q(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
        return iInterfaceQueryLocalInterface instanceof c ? (c) iInterfaceQueryLocalInterface : new d(iBinder);
    }

    @Override // r3.c
    public final String x() {
        return "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService";
    }

    @Override // r3.c
    public final String y() {
        return "com.google.android.gms.auth.api.phone.service.SmsRetrieverApiService.START";
    }
}
