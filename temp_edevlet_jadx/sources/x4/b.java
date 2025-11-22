package x4;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.maps.model.LatLng;
import r3.r;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static y4.a f19134a;

    @NonNull
    public static a a(@NonNull LatLng latLng) {
        if (latLng == null) {
            throw new NullPointerException("latLng must not be null");
        }
        try {
            y4.a aVar = f19134a;
            r.j(aVar, "CameraUpdateFactory is not initialized");
            return new a(aVar.v(latLng));
        } catch (RemoteException e10) {
            throw new z4.g(e10);
        }
    }
}
