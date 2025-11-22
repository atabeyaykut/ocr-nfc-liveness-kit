package com.google.android.gms.internal.clearcut;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import n3.d;

/* loaded from: classes.dex */
public final class i4 extends r3.h<k4> {
    public i4(Context context, Looper looper, r3.e eVar, d.a aVar, d.b bVar) {
        super(context, looper, 40, eVar, aVar, bVar);
    }

    @Override // r3.c
    public final int l() {
        return 11925000;
    }

    @Override // r3.c
    public final /* synthetic */ IInterface q(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
        return iInterfaceQueryLocalInterface instanceof k4 ? (k4) iInterfaceQueryLocalInterface : new l4(iBinder);
    }

    @Override // r3.c
    public final String x() {
        return "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
    }

    @Override // r3.c
    public final String y() {
        return "com.google.android.gms.clearcut.service.START";
    }
}
