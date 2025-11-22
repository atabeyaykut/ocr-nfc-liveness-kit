package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveMap;", "", "locationSaveSubData", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveSubData;", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveSubData;)V", "getLocationSaveSubData", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveSubData;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class LocationSaveMap {

    @k(name = "data")
    private final LocationSaveSubData locationSaveSubData;

    public LocationSaveMap(LocationSaveSubData locationSaveSubData) {
        h.f(locationSaveSubData, "locationSaveSubData");
        this.locationSaveSubData = locationSaveSubData;
    }

    public static /* synthetic */ LocationSaveMap copy$default(LocationSaveMap locationSaveMap, LocationSaveSubData locationSaveSubData, int r22, Object obj) {
        if ((r22 & 1) != 0) {
            locationSaveSubData = locationSaveMap.locationSaveSubData;
        }
        return locationSaveMap.copy(locationSaveSubData);
    }

    /* renamed from: component1, reason: from getter */
    public final LocationSaveSubData getLocationSaveSubData() {
        return this.locationSaveSubData;
    }

    public final LocationSaveMap copy(LocationSaveSubData locationSaveSubData) {
        h.f(locationSaveSubData, "locationSaveSubData");
        return new LocationSaveMap(locationSaveSubData);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof LocationSaveMap) && h.a(this.locationSaveSubData, ((LocationSaveMap) other).locationSaveSubData);
    }

    public final LocationSaveSubData getLocationSaveSubData() {
        return this.locationSaveSubData;
    }

    public int hashCode() {
        return this.locationSaveSubData.hashCode();
    }

    public String toString() {
        return "LocationSaveMap(locationSaveSubData=" + this.locationSaveSubData + ')';
    }
}
