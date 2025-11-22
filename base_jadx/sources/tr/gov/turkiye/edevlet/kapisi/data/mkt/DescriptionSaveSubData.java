package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveSubData;", "", "descriptionSaveInfo", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveInfo;", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveInfo;)V", "getDescriptionSaveInfo", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveInfo;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class DescriptionSaveSubData {

    @k(name = "map")
    private final DescriptionSaveInfo descriptionSaveInfo;

    public DescriptionSaveSubData(DescriptionSaveInfo descriptionSaveInfo) {
        h.f(descriptionSaveInfo, "descriptionSaveInfo");
        this.descriptionSaveInfo = descriptionSaveInfo;
    }

    public static /* synthetic */ DescriptionSaveSubData copy$default(DescriptionSaveSubData descriptionSaveSubData, DescriptionSaveInfo descriptionSaveInfo, int r22, Object obj) {
        if ((r22 & 1) != 0) {
            descriptionSaveInfo = descriptionSaveSubData.descriptionSaveInfo;
        }
        return descriptionSaveSubData.copy(descriptionSaveInfo);
    }

    /* renamed from: component1, reason: from getter */
    public final DescriptionSaveInfo getDescriptionSaveInfo() {
        return this.descriptionSaveInfo;
    }

    public final DescriptionSaveSubData copy(DescriptionSaveInfo descriptionSaveInfo) {
        h.f(descriptionSaveInfo, "descriptionSaveInfo");
        return new DescriptionSaveSubData(descriptionSaveInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof DescriptionSaveSubData) && h.a(this.descriptionSaveInfo, ((DescriptionSaveSubData) other).descriptionSaveInfo);
    }

    public final DescriptionSaveInfo getDescriptionSaveInfo() {
        return this.descriptionSaveInfo;
    }

    public int hashCode() {
        return this.descriptionSaveInfo.hashCode();
    }

    public String toString() {
        return "DescriptionSaveSubData(descriptionSaveInfo=" + this.descriptionSaveInfo + ')';
    }
}
