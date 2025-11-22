package n4;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public abstract class c extends e implements d {
    public static d x0(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        return iInterfaceQueryLocalInterface instanceof d ? (d) iInterfaceQueryLocalInterface : new b(iBinder);
    }
}
