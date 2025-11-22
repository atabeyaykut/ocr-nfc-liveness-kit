package t3;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import h4.f;
import o3.j;
import r3.e;
import r3.h;
import r3.w;

/* loaded from: classes.dex */
public final class d extends h {
    public final w B;

    public d(Context context, Looper looper, e eVar, w wVar, o3.c cVar, j jVar) {
        super(context, looper, 270, eVar, cVar, jVar);
        this.B = wVar;
    }

    @Override // r3.c
    public final int l() {
        return 203400000;
    }

    @Override // r3.c
    @Nullable
    public final /* synthetic */ IInterface q(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new a(iBinder);
    }

    @Override // r3.c
    public final m3.d[] s() {
        return f.f6836b;
    }

    @Override // r3.c
    public final Bundle u() {
        w wVar = this.B;
        wVar.getClass();
        Bundle bundle = new Bundle();
        String str = wVar.f14055a;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }

    @Override // r3.c
    @NonNull
    public final String x() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // r3.c
    @NonNull
    public final String y() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // r3.c
    public final boolean z() {
        return true;
    }
}
