package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveMap;", "", "photoSaveInfo", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;)V", "getPhotoSaveInfo", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class PhotoSaveMap {

    @k(name = "map")
    private final PhotoSaveInfo photoSaveInfo;

    public PhotoSaveMap(PhotoSaveInfo photoSaveInfo) {
        h.f(photoSaveInfo, "photoSaveInfo");
        this.photoSaveInfo = photoSaveInfo;
    }

    public static /* synthetic */ PhotoSaveMap copy$default(PhotoSaveMap photoSaveMap, PhotoSaveInfo photoSaveInfo, int r22, Object obj) {
        if ((r22 & 1) != 0) {
            photoSaveInfo = photoSaveMap.photoSaveInfo;
        }
        return photoSaveMap.copy(photoSaveInfo);
    }

    /* renamed from: component1, reason: from getter */
    public final PhotoSaveInfo getPhotoSaveInfo() {
        return this.photoSaveInfo;
    }

    public final PhotoSaveMap copy(PhotoSaveInfo photoSaveInfo) {
        h.f(photoSaveInfo, "photoSaveInfo");
        return new PhotoSaveMap(photoSaveInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PhotoSaveMap) && h.a(this.photoSaveInfo, ((PhotoSaveMap) other).photoSaveInfo);
    }

    public final PhotoSaveInfo getPhotoSaveInfo() {
        return this.photoSaveInfo;
    }

    public int hashCode() {
        return this.photoSaveInfo.hashCode();
    }

    public String toString() {
        return "PhotoSaveMap(photoSaveInfo=" + this.photoSaveInfo + ')';
    }
}
