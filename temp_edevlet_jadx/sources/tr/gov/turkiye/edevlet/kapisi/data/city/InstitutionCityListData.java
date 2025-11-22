package tr.gov.turkiye.edevlet.kapisi.data.city;

import android.support.v4.media.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R$\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;", "", "resultCode", "", "cityListContent", "", "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;", "(ILjava/util/List;)V", "getCityListContent", "()Ljava/util/List;", "setCityListContent", "(Ljava/util/List;)V", "getResultCode", "()I", "setResultCode", "(I)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class InstitutionCityListData {

    @k(name = "content")
    private List<InstitutionCityListContent> cityListContent;

    @k(name = "resultCode")
    private int resultCode;

    public InstitutionCityListData(int r22, List<InstitutionCityListContent> cityListContent) {
        h.f(cityListContent, "cityListContent");
        this.resultCode = r22;
        this.cityListContent = cityListContent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ InstitutionCityListData copy$default(InstitutionCityListData institutionCityListData, int r12, List list, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            r12 = institutionCityListData.resultCode;
        }
        if ((r32 & 2) != 0) {
            list = institutionCityListData.cityListContent;
        }
        return institutionCityListData.copy(r12, list);
    }

    /* renamed from: component1, reason: from getter */
    public final int getResultCode() {
        return this.resultCode;
    }

    public final List<InstitutionCityListContent> component2() {
        return this.cityListContent;
    }

    public final InstitutionCityListData copy(int resultCode, List<InstitutionCityListContent> cityListContent) {
        h.f(cityListContent, "cityListContent");
        return new InstitutionCityListData(resultCode, cityListContent);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InstitutionCityListData)) {
            return false;
        }
        InstitutionCityListData institutionCityListData = (InstitutionCityListData) other;
        return this.resultCode == institutionCityListData.resultCode && h.a(this.cityListContent, institutionCityListData.cityListContent);
    }

    public final List<InstitutionCityListContent> getCityListContent() {
        return this.cityListContent;
    }

    public final int getResultCode() {
        return this.resultCode;
    }

    public int hashCode() {
        return this.cityListContent.hashCode() + (this.resultCode * 31);
    }

    public final void setCityListContent(List<InstitutionCityListContent> list) {
        h.f(list, "<set-?>");
        this.cityListContent = list;
    }

    public final void setResultCode(int r12) {
        this.resultCode = r12;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("InstitutionCityListData(resultCode=");
        sb2.append(this.resultCode);
        sb2.append(", cityListContent=");
        return a.j(sb2, this.cityListContent, ')');
    }
}
