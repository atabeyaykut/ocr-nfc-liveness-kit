package y4;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment;

/* loaded from: classes.dex */
public abstract class e extends n4.e {
    public e() {
        super("com.google.android.gms.maps.internal.IOnMapClickListener");
    }

    @Override // n4.e
    public final boolean w0(int r82, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (r82 != 1) {
            return false;
        }
        Parcelable.Creator<LatLng> creator = LatLng.CREATOR;
        int r12 = n4.f.f10563a;
        LatLng latLng = parcel.readInt() == 0 ? null : creator.createFromParcel(parcel);
        n4.f.a(parcel);
        kh.b bVar = (kh.b) ((x4.k) this).f19148a;
        bVar.getClass();
        da.m<Object>[] mVarArr = MobileAccidentMapFragment.f17338m;
        MobileAccidentMapFragment this$0 = bVar.f8934a;
        kotlin.jvm.internal.h.f(this$0, "this$0");
        z4.b circle = bVar.f8935b;
        kotlin.jvm.internal.h.f(circle, "$circle");
        x4.c googleMap = bVar.f8936c;
        kotlin.jvm.internal.h.f(googleMap, "$googleMap");
        z4.c circleOptions = bVar.f8937d;
        kotlin.jvm.internal.h.f(circleOptions, "$circleOptions");
        kotlin.jvm.internal.h.f(latLng, "latLng");
        z4.e eVar = new z4.e();
        Context context = this$0.f17342d;
        kotlin.jvm.internal.h.c(context);
        eVar.f19827d = MobileAccidentMapFragment.E(context);
        eVar.f19829g = true;
        eVar.E(latLng);
        if (MobileAccidentMapFragment.F(latLng, circle)) {
            try {
                googleMap.f19135a.clear();
                this$0.f17346j = String.valueOf(latLng.f4188a);
                this$0.f17347k = String.valueOf(latLng.f4189b);
                googleMap.c(x4.b.a(latLng));
                googleMap.a(circleOptions);
                googleMap.b(eVar);
            } catch (RemoteException e10) {
                throw new z4.g(e10);
            }
        } else {
            this$0.G(R.string.mkt_location_circle_warning);
        }
        parcel2.writeNoException();
        return true;
    }
}
