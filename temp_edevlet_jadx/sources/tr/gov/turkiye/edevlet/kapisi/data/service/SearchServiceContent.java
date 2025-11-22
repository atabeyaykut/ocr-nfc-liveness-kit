package tr.gov.turkiye.edevlet.kapisi.data.service;

import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b0\b\u0086\b\u0018\u00002\u00020\u0001B\u0099\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0015J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010\u001bJ\t\u0010/\u001a\u00020\u0011HÆ\u0003J\t\u00100\u001a\u00020\u0011HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\u0003HÆ\u0003J\t\u00105\u001a\u00020\u0003HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0003HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J¾\u0001\u0010;\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00112\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010<J\u0013\u0010=\u001a\u00020\u00112\b\u0010>\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010?\u001a\u00020\u000fHÖ\u0001J\t\u0010@\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0017R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0017\"\u0004\b\u001f\u0010\u0019R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0017R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0017R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0017R\u0016\u0010\u0010\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010#R\u0016\u0010\u0012\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010#R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0017R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0017R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0017R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0017R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u0017R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u0017R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0017¨\u0006A"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;", "", "serviceName", "", "serviceCode", "institutionName", "institutionCode", "institutionType", "serviceFolderName", "serviceURL", "serviceFolderNameEng", "serviceNameEng", "iconName", "url", "baseUrlCode", "", "isConceptService", "", "isNativePage", "iconUrl", "baseUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Ljava/lang/String;)V", "getBaseUrl", "()Ljava/lang/String;", "setBaseUrl", "(Ljava/lang/String;)V", "getBaseUrlCode", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getIconName", "getIconUrl", "setIconUrl", "getInstitutionCode", "getInstitutionName", "getInstitutionType", "()Z", "getServiceCode", "getServiceFolderName", "getServiceFolderNameEng", "getServiceName", "getServiceNameEng", "getServiceURL", "getUrl", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Ljava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;", "equals", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class SearchServiceContent {
    private String baseUrl;

    @k(name = "serviceDomainType")
    private final Integer baseUrlCode;

    @k(name = "iconName")
    private final String iconName;
    private String iconUrl;

    @k(name = "kurumKodu")
    private final String institutionCode;

    @k(name = "kurumAdi")
    private final String institutionName;

    @k(name = "kurumTipi")
    private final String institutionType;

    @k(name = "isConcept")
    private final boolean isConceptService;

    @k(name = "isNativePage")
    private final boolean isNativePage;

    @k(name = "hizmetKodu")
    private final String serviceCode;

    @k(name = "mobilHizmetKlasoru")
    private final String serviceFolderName;

    @k(name = "engFolder")
    private final String serviceFolderNameEng;

    @k(name = "hizmetAdi")
    private final String serviceName;

    @k(name = "engHeader")
    private final String serviceNameEng;

    @k(name = "mobilHizmetURL")
    private final String serviceURL;

    @k(name = "url")
    private final String url;

    public SearchServiceContent(String serviceName, String serviceCode, String institutionName, String institutionCode, String str, String serviceFolderName, String serviceURL, String str2, String str3, String str4, String str5, Integer num, boolean z10, boolean z11, String str6, String str7) {
        h.f(serviceName, "serviceName");
        h.f(serviceCode, "serviceCode");
        h.f(institutionName, "institutionName");
        h.f(institutionCode, "institutionCode");
        h.f(serviceFolderName, "serviceFolderName");
        h.f(serviceURL, "serviceURL");
        this.serviceName = serviceName;
        this.serviceCode = serviceCode;
        this.institutionName = institutionName;
        this.institutionCode = institutionCode;
        this.institutionType = str;
        this.serviceFolderName = serviceFolderName;
        this.serviceURL = serviceURL;
        this.serviceFolderNameEng = str2;
        this.serviceNameEng = str3;
        this.iconName = str4;
        this.url = str5;
        this.baseUrlCode = num;
        this.isConceptService = z10;
        this.isNativePage = z11;
        this.iconUrl = str6;
        this.baseUrl = str7;
    }

    public /* synthetic */ SearchServiceContent(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, Integer num, boolean z10, boolean z11, String str12, String str13, int r37, d dVar) {
        this(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, num, (r37 & 4096) != 0 ? false : z10, (r37 & 8192) != 0 ? false : z11, str12, str13);
    }

    /* renamed from: component1, reason: from getter */
    public final String getServiceName() {
        return this.serviceName;
    }

    /* renamed from: component10, reason: from getter */
    public final String getIconName() {
        return this.iconName;
    }

    /* renamed from: component11, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* renamed from: component12, reason: from getter */
    public final Integer getBaseUrlCode() {
        return this.baseUrlCode;
    }

    /* renamed from: component13, reason: from getter */
    public final boolean getIsConceptService() {
        return this.isConceptService;
    }

    /* renamed from: component14, reason: from getter */
    public final boolean getIsNativePage() {
        return this.isNativePage;
    }

    /* renamed from: component15, reason: from getter */
    public final String getIconUrl() {
        return this.iconUrl;
    }

    /* renamed from: component16, reason: from getter */
    public final String getBaseUrl() {
        return this.baseUrl;
    }

    /* renamed from: component2, reason: from getter */
    public final String getServiceCode() {
        return this.serviceCode;
    }

    /* renamed from: component3, reason: from getter */
    public final String getInstitutionName() {
        return this.institutionName;
    }

    /* renamed from: component4, reason: from getter */
    public final String getInstitutionCode() {
        return this.institutionCode;
    }

    /* renamed from: component5, reason: from getter */
    public final String getInstitutionType() {
        return this.institutionType;
    }

    /* renamed from: component6, reason: from getter */
    public final String getServiceFolderName() {
        return this.serviceFolderName;
    }

    /* renamed from: component7, reason: from getter */
    public final String getServiceURL() {
        return this.serviceURL;
    }

    /* renamed from: component8, reason: from getter */
    public final String getServiceFolderNameEng() {
        return this.serviceFolderNameEng;
    }

    /* renamed from: component9, reason: from getter */
    public final String getServiceNameEng() {
        return this.serviceNameEng;
    }

    public final SearchServiceContent copy(String serviceName, String serviceCode, String institutionName, String institutionCode, String institutionType, String serviceFolderName, String serviceURL, String serviceFolderNameEng, String serviceNameEng, String iconName, String url, Integer baseUrlCode, boolean isConceptService, boolean isNativePage, String iconUrl, String baseUrl) {
        h.f(serviceName, "serviceName");
        h.f(serviceCode, "serviceCode");
        h.f(institutionName, "institutionName");
        h.f(institutionCode, "institutionCode");
        h.f(serviceFolderName, "serviceFolderName");
        h.f(serviceURL, "serviceURL");
        return new SearchServiceContent(serviceName, serviceCode, institutionName, institutionCode, institutionType, serviceFolderName, serviceURL, serviceFolderNameEng, serviceNameEng, iconName, url, baseUrlCode, isConceptService, isNativePage, iconUrl, baseUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchServiceContent)) {
            return false;
        }
        SearchServiceContent searchServiceContent = (SearchServiceContent) other;
        return h.a(this.serviceName, searchServiceContent.serviceName) && h.a(this.serviceCode, searchServiceContent.serviceCode) && h.a(this.institutionName, searchServiceContent.institutionName) && h.a(this.institutionCode, searchServiceContent.institutionCode) && h.a(this.institutionType, searchServiceContent.institutionType) && h.a(this.serviceFolderName, searchServiceContent.serviceFolderName) && h.a(this.serviceURL, searchServiceContent.serviceURL) && h.a(this.serviceFolderNameEng, searchServiceContent.serviceFolderNameEng) && h.a(this.serviceNameEng, searchServiceContent.serviceNameEng) && h.a(this.iconName, searchServiceContent.iconName) && h.a(this.url, searchServiceContent.url) && h.a(this.baseUrlCode, searchServiceContent.baseUrlCode) && this.isConceptService == searchServiceContent.isConceptService && this.isNativePage == searchServiceContent.isNativePage && h.a(this.iconUrl, searchServiceContent.iconUrl) && h.a(this.baseUrl, searchServiceContent.baseUrl);
    }

    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final Integer getBaseUrlCode() {
        return this.baseUrlCode;
    }

    public final String getIconName() {
        return this.iconName;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final String getInstitutionCode() {
        return this.institutionCode;
    }

    public final String getInstitutionName() {
        return this.institutionName;
    }

    public final String getInstitutionType() {
        return this.institutionType;
    }

    public final String getServiceCode() {
        return this.serviceCode;
    }

    public final String getServiceFolderName() {
        return this.serviceFolderName;
    }

    public final String getServiceFolderNameEng() {
        return this.serviceFolderNameEng;
    }

    public final String getServiceName() {
        return this.serviceName;
    }

    public final String getServiceNameEng() {
        return this.serviceNameEng;
    }

    public final String getServiceURL() {
        return this.serviceURL;
    }

    public final String getUrl() {
        return this.url;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int r02 = a.a(this.institutionCode, a.a(this.institutionName, a.a(this.serviceCode, this.serviceName.hashCode() * 31, 31), 31), 31);
        String str = this.institutionType;
        int r03 = a.a(this.serviceURL, a.a(this.serviceFolderName, (r02 + (str == null ? 0 : str.hashCode())) * 31, 31), 31);
        String str2 = this.serviceFolderNameEng;
        int r04 = (r03 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.serviceNameEng;
        int r05 = (r04 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.iconName;
        int r06 = (r05 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.url;
        int r07 = (r06 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num = this.baseUrlCode;
        int r08 = (r07 + (num == null ? 0 : num.hashCode())) * 31;
        boolean z10 = this.isConceptService;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        int r09 = (r08 + r12) * 31;
        boolean z11 = this.isNativePage;
        int r010 = (r09 + (z11 ? 1 : z11 ? 1 : 0)) * 31;
        String str6 = this.iconUrl;
        int r011 = (r010 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.baseUrl;
        return r011 + (str7 != null ? str7.hashCode() : 0);
    }

    public final boolean isConceptService() {
        return this.isConceptService;
    }

    public final boolean isNativePage() {
        return this.isNativePage;
    }

    public final void setBaseUrl(String str) {
        this.baseUrl = str;
    }

    public final void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("SearchServiceContent(serviceName=");
        sb2.append(this.serviceName);
        sb2.append(", serviceCode=");
        sb2.append(this.serviceCode);
        sb2.append(", institutionName=");
        sb2.append(this.institutionName);
        sb2.append(", institutionCode=");
        sb2.append(this.institutionCode);
        sb2.append(", institutionType=");
        sb2.append(this.institutionType);
        sb2.append(", serviceFolderName=");
        sb2.append(this.serviceFolderName);
        sb2.append(", serviceURL=");
        sb2.append(this.serviceURL);
        sb2.append(", serviceFolderNameEng=");
        sb2.append(this.serviceFolderNameEng);
        sb2.append(", serviceNameEng=");
        sb2.append(this.serviceNameEng);
        sb2.append(", iconName=");
        sb2.append(this.iconName);
        sb2.append(", url=");
        sb2.append(this.url);
        sb2.append(", baseUrlCode=");
        sb2.append(this.baseUrlCode);
        sb2.append(", isConceptService=");
        sb2.append(this.isConceptService);
        sb2.append(", isNativePage=");
        sb2.append(this.isNativePage);
        sb2.append(", iconUrl=");
        sb2.append(this.iconUrl);
        sb2.append(", baseUrl=");
        return android.support.v4.media.a.h(sb2, this.baseUrl, ')');
    }
}
