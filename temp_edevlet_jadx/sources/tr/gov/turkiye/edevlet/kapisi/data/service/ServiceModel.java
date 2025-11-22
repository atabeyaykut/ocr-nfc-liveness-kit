package tr.gov.turkiye.edevlet.kapisi.data.service;

import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b!\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u000eJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0010J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\bHÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\bHÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003Jt\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010,\u001a\u00020\bHÖ\u0001J\t\u0010-\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\r\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0013R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0013R\u0016\u0010\u000b\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017R\u0016\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0013¨\u0006."}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;", "", "configPath", "", "explanation", "question", "iconName", "institutionCode", "", "institutionName", "link", "serviceCode", "serviceName", "baseUrlCode", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V", "getBaseUrlCode", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getConfigPath", "()Ljava/lang/String;", "getExplanation", "getIconName", "getInstitutionCode", "()I", "getInstitutionName", "getLink", "getQuestion", "getServiceCode", "getServiceName", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ServiceModel {

    @k(name = "serviceDomainType")
    private final Integer baseUrlCode;

    @k(name = "configPath")
    private final String configPath;

    @k(name = "explanation")
    private final String explanation;

    @k(name = "iconName")
    private final String iconName;

    @k(name = "institutionCode")
    private final int institutionCode;

    @k(name = "institutionName")
    private final String institutionName;

    @k(name = "link")
    private final String link;

    @k(name = "question")
    private final String question;

    @k(name = "serviceCode")
    private final int serviceCode;

    @k(name = "serviceName")
    private final String serviceName;

    public ServiceModel(String configPath, String explanation, String question, String iconName, int r6, String institutionName, String link, int r92, String serviceName, Integer num) {
        h.f(configPath, "configPath");
        h.f(explanation, "explanation");
        h.f(question, "question");
        h.f(iconName, "iconName");
        h.f(institutionName, "institutionName");
        h.f(link, "link");
        h.f(serviceName, "serviceName");
        this.configPath = configPath;
        this.explanation = explanation;
        this.question = question;
        this.iconName = iconName;
        this.institutionCode = r6;
        this.institutionName = institutionName;
        this.link = link;
        this.serviceCode = r92;
        this.serviceName = serviceName;
        this.baseUrlCode = num;
    }

    /* renamed from: component1, reason: from getter */
    public final String getConfigPath() {
        return this.configPath;
    }

    /* renamed from: component10, reason: from getter */
    public final Integer getBaseUrlCode() {
        return this.baseUrlCode;
    }

    /* renamed from: component2, reason: from getter */
    public final String getExplanation() {
        return this.explanation;
    }

    /* renamed from: component3, reason: from getter */
    public final String getQuestion() {
        return this.question;
    }

    /* renamed from: component4, reason: from getter */
    public final String getIconName() {
        return this.iconName;
    }

    /* renamed from: component5, reason: from getter */
    public final int getInstitutionCode() {
        return this.institutionCode;
    }

    /* renamed from: component6, reason: from getter */
    public final String getInstitutionName() {
        return this.institutionName;
    }

    /* renamed from: component7, reason: from getter */
    public final String getLink() {
        return this.link;
    }

    /* renamed from: component8, reason: from getter */
    public final int getServiceCode() {
        return this.serviceCode;
    }

    /* renamed from: component9, reason: from getter */
    public final String getServiceName() {
        return this.serviceName;
    }

    public final ServiceModel copy(String configPath, String explanation, String question, String iconName, int institutionCode, String institutionName, String link, int serviceCode, String serviceName, Integer baseUrlCode) {
        h.f(configPath, "configPath");
        h.f(explanation, "explanation");
        h.f(question, "question");
        h.f(iconName, "iconName");
        h.f(institutionName, "institutionName");
        h.f(link, "link");
        h.f(serviceName, "serviceName");
        return new ServiceModel(configPath, explanation, question, iconName, institutionCode, institutionName, link, serviceCode, serviceName, baseUrlCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ServiceModel)) {
            return false;
        }
        ServiceModel serviceModel = (ServiceModel) other;
        return h.a(this.configPath, serviceModel.configPath) && h.a(this.explanation, serviceModel.explanation) && h.a(this.question, serviceModel.question) && h.a(this.iconName, serviceModel.iconName) && this.institutionCode == serviceModel.institutionCode && h.a(this.institutionName, serviceModel.institutionName) && h.a(this.link, serviceModel.link) && this.serviceCode == serviceModel.serviceCode && h.a(this.serviceName, serviceModel.serviceName) && h.a(this.baseUrlCode, serviceModel.baseUrlCode);
    }

    public final Integer getBaseUrlCode() {
        return this.baseUrlCode;
    }

    public final String getConfigPath() {
        return this.configPath;
    }

    public final String getExplanation() {
        return this.explanation;
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

    public final String getLink() {
        return this.link;
    }

    public final String getQuestion() {
        return this.question;
    }

    public final int getServiceCode() {
        return this.serviceCode;
    }

    public final String getServiceName() {
        return this.serviceName;
    }

    public int hashCode() {
        int r02 = a.a(this.serviceName, (a.a(this.link, a.a(this.institutionName, (a.a(this.iconName, a.a(this.question, a.a(this.explanation, this.configPath.hashCode() * 31, 31), 31), 31) + this.institutionCode) * 31, 31), 31) + this.serviceCode) * 31, 31);
        Integer num = this.baseUrlCode;
        return r02 + (num == null ? 0 : num.hashCode());
    }

    public String toString() {
        return "ServiceModel(configPath=" + this.configPath + ", explanation=" + this.explanation + ", question=" + this.question + ", iconName=" + this.iconName + ", institutionCode=" + this.institutionCode + ", institutionName=" + this.institutionName + ", link=" + this.link + ", serviceCode=" + this.serviceCode + ", serviceName=" + this.serviceName + ", baseUrlCode=" + this.baseUrlCode + ')';
    }
}
