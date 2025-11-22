package tr.gov.turkiye.edevlet.kapisi.data.institution;

import androidx.camera.camera2.internal.c;
import androidx.room.util.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModel;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bs\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0006\u0012\u0006\u0010\u0011\u001a\u00020\n¢\u0006\u0002\u0010\u0012J\u0010\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00100\u0006HÆ\u0003J\t\u0010'\u001a\u00020\nHÆ\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\t\u0010+\u001a\u00020\nHÆ\u0003J\t\u0010,\u001a\u00020\nHÆ\u0003J\u0010\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0092\u0001\u00100\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00062\b\b\u0002\u0010\u0011\u001a\u00020\nHÆ\u0001¢\u0006\u0002\u00101J\u0013\u00102\u001a\u0002032\b\u00104\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00105\u001a\u00020\u0003HÖ\u0001J\t\u00106\u001a\u00020\nHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0016\u0010\u0014R\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001aR\u0016\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001aR\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b!\u0010\u0014R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\"\u0010\u0014R\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0018R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b$\u0010\u0014¨\u00067"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;", "", "categoryCode", "", "cityCode", "contactList", "", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;", "institutionCode", "institutionName", "", "institutionType", "sectionCode", "serviceCount", "totalCount", "serviceList", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;", "iconName", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;)V", "getCategoryCode", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCityCode", "getContactList", "()Ljava/util/List;", "getIconName", "()Ljava/lang/String;", "setIconName", "(Ljava/lang/String;)V", "getInstitutionCode", "()I", "getInstitutionName", "getInstitutionType", "getSectionCode", "getServiceCount", "getServiceList", "getTotalCount", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class InstitutionDetailContent {

    @k(name = "categoryCode")
    private final Integer categoryCode;

    @k(name = "cityCode")
    private final Integer cityCode;

    @k(name = "contactList")
    private final List<InstitutionDetailContact> contactList;

    @k(name = "iconName")
    private String iconName;

    @k(name = "institutionCode")
    private final int institutionCode;

    @k(name = "institutionName")
    private final String institutionName;

    @k(name = "institutionType")
    private final String institutionType;

    @k(name = "sectionCode")
    private final Integer sectionCode;

    @k(name = "serviceCount")
    private final Integer serviceCount;

    @k(name = "serviceList")
    private final List<ServiceModel> serviceList;

    @k(name = "totalCount")
    private final Integer totalCount;

    public InstitutionDetailContent(Integer num, Integer num2, List<InstitutionDetailContact> contactList, int r52, String institutionName, String institutionType, Integer num3, Integer num4, Integer num5, List<ServiceModel> serviceList, String iconName) {
        h.f(contactList, "contactList");
        h.f(institutionName, "institutionName");
        h.f(institutionType, "institutionType");
        h.f(serviceList, "serviceList");
        h.f(iconName, "iconName");
        this.categoryCode = num;
        this.cityCode = num2;
        this.contactList = contactList;
        this.institutionCode = r52;
        this.institutionName = institutionName;
        this.institutionType = institutionType;
        this.sectionCode = num3;
        this.serviceCount = num4;
        this.totalCount = num5;
        this.serviceList = serviceList;
        this.iconName = iconName;
    }

    /* renamed from: component1, reason: from getter */
    public final Integer getCategoryCode() {
        return this.categoryCode;
    }

    public final List<ServiceModel> component10() {
        return this.serviceList;
    }

    /* renamed from: component11, reason: from getter */
    public final String getIconName() {
        return this.iconName;
    }

    /* renamed from: component2, reason: from getter */
    public final Integer getCityCode() {
        return this.cityCode;
    }

    public final List<InstitutionDetailContact> component3() {
        return this.contactList;
    }

    /* renamed from: component4, reason: from getter */
    public final int getInstitutionCode() {
        return this.institutionCode;
    }

    /* renamed from: component5, reason: from getter */
    public final String getInstitutionName() {
        return this.institutionName;
    }

    /* renamed from: component6, reason: from getter */
    public final String getInstitutionType() {
        return this.institutionType;
    }

    /* renamed from: component7, reason: from getter */
    public final Integer getSectionCode() {
        return this.sectionCode;
    }

    /* renamed from: component8, reason: from getter */
    public final Integer getServiceCount() {
        return this.serviceCount;
    }

    /* renamed from: component9, reason: from getter */
    public final Integer getTotalCount() {
        return this.totalCount;
    }

    public final InstitutionDetailContent copy(Integer categoryCode, Integer cityCode, List<InstitutionDetailContact> contactList, int institutionCode, String institutionName, String institutionType, Integer sectionCode, Integer serviceCount, Integer totalCount, List<ServiceModel> serviceList, String iconName) {
        h.f(contactList, "contactList");
        h.f(institutionName, "institutionName");
        h.f(institutionType, "institutionType");
        h.f(serviceList, "serviceList");
        h.f(iconName, "iconName");
        return new InstitutionDetailContent(categoryCode, cityCode, contactList, institutionCode, institutionName, institutionType, sectionCode, serviceCount, totalCount, serviceList, iconName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InstitutionDetailContent)) {
            return false;
        }
        InstitutionDetailContent institutionDetailContent = (InstitutionDetailContent) other;
        return h.a(this.categoryCode, institutionDetailContent.categoryCode) && h.a(this.cityCode, institutionDetailContent.cityCode) && h.a(this.contactList, institutionDetailContent.contactList) && this.institutionCode == institutionDetailContent.institutionCode && h.a(this.institutionName, institutionDetailContent.institutionName) && h.a(this.institutionType, institutionDetailContent.institutionType) && h.a(this.sectionCode, institutionDetailContent.sectionCode) && h.a(this.serviceCount, institutionDetailContent.serviceCount) && h.a(this.totalCount, institutionDetailContent.totalCount) && h.a(this.serviceList, institutionDetailContent.serviceList) && h.a(this.iconName, institutionDetailContent.iconName);
    }

    public final Integer getCategoryCode() {
        return this.categoryCode;
    }

    public final Integer getCityCode() {
        return this.cityCode;
    }

    public final List<InstitutionDetailContact> getContactList() {
        return this.contactList;
    }

    public final String getIconName() {
        return this.iconName;
    }

    public final int getInstitutionCode() {
        return this.institutionCode;
    }

    public final String getInstitutionName() {
        return this.institutionName;
    }

    public final String getInstitutionType() {
        return this.institutionType;
    }

    public final Integer getSectionCode() {
        return this.sectionCode;
    }

    public final Integer getServiceCount() {
        return this.serviceCount;
    }

    public final List<ServiceModel> getServiceList() {
        return this.serviceList;
    }

    public final Integer getTotalCount() {
        return this.totalCount;
    }

    public int hashCode() {
        Integer num = this.categoryCode;
        int r02 = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.cityCode;
        int r03 = a.a(this.institutionType, a.a(this.institutionName, (c.c(this.contactList, (r02 + (num2 == null ? 0 : num2.hashCode())) * 31, 31) + this.institutionCode) * 31, 31), 31);
        Integer num3 = this.sectionCode;
        int r04 = (r03 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.serviceCount;
        int r05 = (r04 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.totalCount;
        return this.iconName.hashCode() + c.c(this.serviceList, (r05 + (num5 != null ? num5.hashCode() : 0)) * 31, 31);
    }

    public final void setIconName(String str) {
        h.f(str, "<set-?>");
        this.iconName = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("InstitutionDetailContent(categoryCode=");
        sb2.append(this.categoryCode);
        sb2.append(", cityCode=");
        sb2.append(this.cityCode);
        sb2.append(", contactList=");
        sb2.append(this.contactList);
        sb2.append(", institutionCode=");
        sb2.append(this.institutionCode);
        sb2.append(", institutionName=");
        sb2.append(this.institutionName);
        sb2.append(", institutionType=");
        sb2.append(this.institutionType);
        sb2.append(", sectionCode=");
        sb2.append(this.sectionCode);
        sb2.append(", serviceCount=");
        sb2.append(this.serviceCount);
        sb2.append(", totalCount=");
        sb2.append(this.totalCount);
        sb2.append(", serviceList=");
        sb2.append(this.serviceList);
        sb2.append(", iconName=");
        return android.support.v4.media.a.h(sb2, this.iconName, ')');
    }
}
