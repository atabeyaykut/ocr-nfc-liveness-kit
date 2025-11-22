package tr.gov.turkiye.edevlet.kapisi.data.institution;

import androidx.room.util.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceBaseUrl;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\u000bJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J7\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001J\t\u0010!\u001a\u00020\u0007HÖ\u0001R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\""}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;", "", "resultCode", "", "institutionDetailContent", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;", "baseUrl", "", "baseUrls", "", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;", "(ILtr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;Ljava/lang/String;Ljava/util/List;)V", "getBaseUrl", "()Ljava/lang/String;", "setBaseUrl", "(Ljava/lang/String;)V", "getBaseUrls", "()Ljava/util/List;", "getInstitutionDetailContent", "()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;", "getResultCode", "()I", "setResultCode", "(I)V", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class InstitutionDetailData {

    @k(name = "baseUrl")
    private String baseUrl;

    @k(name = "serviceDomainURLs")
    private final List<ServiceBaseUrl> baseUrls;

    @k(name = "content")
    private final InstitutionDetailContent institutionDetailContent;

    @k(name = "resultCode")
    private int resultCode;

    public InstitutionDetailData(int r22, InstitutionDetailContent institutionDetailContent, String baseUrl, List<ServiceBaseUrl> baseUrls) {
        h.f(institutionDetailContent, "institutionDetailContent");
        h.f(baseUrl, "baseUrl");
        h.f(baseUrls, "baseUrls");
        this.resultCode = r22;
        this.institutionDetailContent = institutionDetailContent;
        this.baseUrl = baseUrl;
        this.baseUrls = baseUrls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ InstitutionDetailData copy$default(InstitutionDetailData institutionDetailData, int r12, InstitutionDetailContent institutionDetailContent, String str, List list, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            r12 = institutionDetailData.resultCode;
        }
        if ((r52 & 2) != 0) {
            institutionDetailContent = institutionDetailData.institutionDetailContent;
        }
        if ((r52 & 4) != 0) {
            str = institutionDetailData.baseUrl;
        }
        if ((r52 & 8) != 0) {
            list = institutionDetailData.baseUrls;
        }
        return institutionDetailData.copy(r12, institutionDetailContent, str, list);
    }

    /* renamed from: component1, reason: from getter */
    public final int getResultCode() {
        return this.resultCode;
    }

    /* renamed from: component2, reason: from getter */
    public final InstitutionDetailContent getInstitutionDetailContent() {
        return this.institutionDetailContent;
    }

    /* renamed from: component3, reason: from getter */
    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final List<ServiceBaseUrl> component4() {
        return this.baseUrls;
    }

    public final InstitutionDetailData copy(int resultCode, InstitutionDetailContent institutionDetailContent, String baseUrl, List<ServiceBaseUrl> baseUrls) {
        h.f(institutionDetailContent, "institutionDetailContent");
        h.f(baseUrl, "baseUrl");
        h.f(baseUrls, "baseUrls");
        return new InstitutionDetailData(resultCode, institutionDetailContent, baseUrl, baseUrls);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InstitutionDetailData)) {
            return false;
        }
        InstitutionDetailData institutionDetailData = (InstitutionDetailData) other;
        return this.resultCode == institutionDetailData.resultCode && h.a(this.institutionDetailContent, institutionDetailData.institutionDetailContent) && h.a(this.baseUrl, institutionDetailData.baseUrl) && h.a(this.baseUrls, institutionDetailData.baseUrls);
    }

    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final List<ServiceBaseUrl> getBaseUrls() {
        return this.baseUrls;
    }

    public final InstitutionDetailContent getInstitutionDetailContent() {
        return this.institutionDetailContent;
    }

    public final int getResultCode() {
        return this.resultCode;
    }

    public int hashCode() {
        return this.baseUrls.hashCode() + a.a(this.baseUrl, (this.institutionDetailContent.hashCode() + (this.resultCode * 31)) * 31, 31);
    }

    public final void setBaseUrl(String str) {
        h.f(str, "<set-?>");
        this.baseUrl = str;
    }

    public final void setResultCode(int r12) {
        this.resultCode = r12;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("InstitutionDetailData(resultCode=");
        sb2.append(this.resultCode);
        sb2.append(", institutionDetailContent=");
        sb2.append(this.institutionDetailContent);
        sb2.append(", baseUrl=");
        sb2.append(this.baseUrl);
        sb2.append(", baseUrls=");
        return android.support.v4.media.a.j(sb2, this.baseUrls, ')');
    }
}
