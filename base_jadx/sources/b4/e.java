package b4;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public abstract class e extends l4.a implements d {
    public static d asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.flags.IFlagProvider");
        return iInterfaceQueryLocalInterface instanceof d ? (d) iInterfaceQueryLocalInterface : new f(iBinder);
    }
}
