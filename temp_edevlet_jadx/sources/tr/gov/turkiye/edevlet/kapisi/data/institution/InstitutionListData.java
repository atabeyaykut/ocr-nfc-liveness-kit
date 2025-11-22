package tr.gov.turkiye.edevlet.kapisi.data.institution;

import android.support.v4.media.a;
import androidx.camera.camera2.internal.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\tHÆ\u0003J7\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020\tHÖ\u0001R\u001e\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016¨\u0006#"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;", "", "resultCode", "", "institutionList", "", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;", "kod", "baseUrl", "", "(ILjava/util/List;ILjava/lang/String;)V", "getBaseUrl", "()Ljava/lang/String;", "setBaseUrl", "(Ljava/lang/String;)V", "getInstitutionList", "()Ljava/util/List;", "setInstitutionList", "(Ljava/util/List;)V", "getKod", "()I", "setKod", "(I)V", "getResultCode", "setResultCode", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class InstitutionListData {

    @k(name = "baseUrl")
    private String baseUrl;

    @k(name = "content")
    private List<InstitutionListItem> institutionList;

    @k(name = "kod")
    private int kod;

    @k(name = "resultCode")
    private int resultCode;

    public InstitutionListData(int r22, List<InstitutionListItem> institutionList, int r42, String baseUrl) {
        h.f(institutionList, "institutionList");
        h.f(baseUrl, "baseUrl");
        this.resultCode = r22;
        this.institutionList = institutionList;
        this.kod = r42;
        this.baseUrl = baseUrl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ InstitutionListData copy$default(InstitutionListData institutionListData, int r12, List list, int r32, String str, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            r12 = institutionListData.resultCode;
        }
        if ((r52 & 2) != 0) {
            list = institutionListData.institutionList;
        }
        if ((r52 & 4) != 0) {
            r32 = institutionListData.kod;
        }
        if ((r52 & 8) != 0) {
            str = institutionListData.baseUrl;
        }
        return institutionListData.copy(r12, list, r32, str);
    }

    /* renamed from: component1, reason: from getter */
    public final int getResultCode() {
        return this.resultCode;
    }

    public final List<InstitutionListItem> component2() {
        return this.institutionList;
    }

    /* renamed from: component3, reason: from getter */
    public final int getKod() {
        return this.kod;
    }

    /* renamed from: component4, reason: from getter */
    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final InstitutionListData copy(int resultCode, List<InstitutionListItem> institutionList, int kod, String baseUrl) {
        h.f(institutionList, "institutionList");
        h.f(baseUrl, "baseUrl");
        return new InstitutionListData(resultCode, institutionList, kod, baseUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InstitutionListData)) {
            return false;
        }
        InstitutionListData institutionListData = (InstitutionListData) other;
        return this.resultCode == institutionListData.resultCode && h.a(this.institutionList, institutionListData.institutionList) && this.kod == institutionListData.kod && h.a(this.baseUrl, institutionListData.baseUrl);
    }

    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final List<InstitutionListItem> getInstitutionList() {
        return this.institutionList;
    }

    public final int getKod() {
        return this.kod;
    }

    public final int getResultCode() {
        return this.resultCode;
    }

    public int hashCode() {
        return this.baseUrl.hashCode() + ((c.c(this.institutionList, this.resultCode * 31, 31) + this.kod) * 31);
    }

    public final void setBaseUrl(String str) {
        h.f(str, "<set-?>");
        this.baseUrl = str;
    }

    public final void setInstitutionList(List<InstitutionListItem> list) {
        h.f(list, "<set-?>");
        this.institutionList = list;
    }

    public final void setKod(int r12) {
        this.kod = r12;
    }

    public final void setResultCode(int r12) {
        this.resultCode = r12;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("InstitutionListData(resultCode=");
        sb2.append(this.resultCode);
        sb2.append(", institutionList=");
        sb2.append(this.institutionList);
        sb2.append(", kod=");
        sb2.append(this.kod);
        sb2.append(", baseUrl=");
        return a.h(sb2, this.baseUrl, ')');
    }
}
