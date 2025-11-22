package z3;

import android.os.IBinder;
import android.os.IInterface;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public interface b extends IInterface {

    public static abstract class a extends j4.b implements b {
        public a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        @NonNull
        public static b x0(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return iInterfaceQueryLocalInterface instanceof b ? (b) iInterfaceQueryLocalInterface : new l(iBinder);
        }
    }
}
