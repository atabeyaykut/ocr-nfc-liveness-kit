package t4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import n3.d;
import r3.e;
import r3.h;

/* loaded from: classes.dex */
public final class c extends h<a> {
    public c(Context context, Looper looper, e eVar, d.a aVar, d.b bVar) {
        super(context, looper, 51, eVar, aVar, bVar);
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
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
        return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new b(iBinder);
    }

    @Override // r3.c
    public final String x() {
        return "com.google.android.gms.phenotype.internal.IPhenotypeService";
    }

    @Override // r3.c
    public final String y() {
        return "com.google.android.gms.phenotype.service.START";
    }
}
