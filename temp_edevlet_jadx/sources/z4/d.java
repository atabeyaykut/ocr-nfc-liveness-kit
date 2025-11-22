package z4;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.maps.model.LatLng;
import r3.r;

/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public final n4.d f19823a;

    public d(n4.d dVar) {
        r.i(dVar);
        this.f19823a = dVar;
    }

    @NonNull
    public final LatLng a() {
        try {
            return this.f19823a.m();
        } catch (RemoteException e10) {
            throw new g(e10);
        }
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        try {
            return this.f19823a.j0(((d) obj).f19823a);
        } catch (RemoteException e10) {
            throw new g(e10);
        }
    }

    public final int hashCode() {
        try {
            return this.f19823a.l();
        } catch (RemoteException e10) {
            throw new g(e10);
        }
    }
}
