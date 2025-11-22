package eh;

import androidx.annotation.Nullable;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleInfo;
import x9.l;

/* loaded from: classes3.dex */
public interface c {
    c carItem(VehicleInfo vehicleInfo);

    /* renamed from: id */
    c mo398id(@Nullable CharSequence charSequence);

    c selectCar(l<? super VehicleInfo, m> lVar);

    c selectedCarPlateNumber(String str);

    c unselectCar(l<? super VehicleInfo, m> lVar);
}
