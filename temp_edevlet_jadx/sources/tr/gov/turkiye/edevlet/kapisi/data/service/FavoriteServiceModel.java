package tr.gov.turkiye.edevlet.kapisi.data.service;

import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\rJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0007HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u000fJj\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010%J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0007HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u0016\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0016R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012¨\u0006+"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;", "", "configPath", "", "explanation", "iconName", "institutionCode", "", "institutionName", "link", "serviceCode", "serviceName", "baseUrlCode", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V", "getBaseUrlCode", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getConfigPath", "()Ljava/lang/String;", "getExplanation", "getIconName", "getInstitutionCode", "()I", "getInstitutionName", "getLink", "getServiceCode", "getServiceName", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class FavoriteServiceModel {

    @k(name = "serviceDomainType")
    private final Integer baseUrlCode;

    @k(name = "configPath")
    private final String configPath;

    @k(name = "aciklama")
    private final String explanation;

    @k(name = "iconName")
    private final String iconName;

    @k(name = "kurumKodu")
    private final int institutionCode;

    @k(name = "kurumAdi")
    private final String institutionName;

    @k(name = "link")
    private final String link;

    @k(name = "hizmetKodu")
    private final int serviceCode;

    @k(name = "hizmetAdi")
    private final String serviceName;

    public FavoriteServiceModel(String configPath, String explanation, String iconName, int r52, String institutionName, String link, int r82, String serviceName, Integer num) {
        h.f(configPath, "configPath");
        h.f(explanation, "explanation");
        h.f(iconName, "iconName");
        h.f(institutionName, "institutionName");
        h.f(link, "link");
        h.f(serviceName, "serviceName");
        this.configPath = configPath;
        this.explanation = explanation;
        this.iconName = iconName;
        this.institutionCode = r52;
        this.institutionName = institutionName;
        this.link = link;
        this.serviceCode = r82;
        this.serviceName = serviceName;
        this.baseUrlCode = num;
    }

    /* renamed from: component1, reason: from getter */
    public final String getConfigPath() {
        return this.configPath;
    }

    /* renamed from: component2, reason: from getter */
    public final String getExplanation() {
        return this.explanation;
    }

    /* renamed from: component3, reason: from getter */
    public final String getIconName() {
        return this.iconName;
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
    public final String getLink() {
        return this.link;
    }

    /* renamed from: component7, reason: from getter */
    public final int getServiceCode() {
        return this.serviceCode;
    }

    /* renamed from: component8, reason: from getter */
    public final String getServiceName() {
        return this.serviceName;
    }

    /* renamed from: component9, reason: from getter */
    public final Integer getBaseUrlCode() {
        return this.baseUrlCode;
    }

    public final FavoriteServiceModel copy(String configPath, String explanation, String iconName, int institutionCode, String institutionName, String link, int serviceCode, String serviceName, Integer baseUrlCode) {
        h.f(configPath, "configPath");
        h.f(explanation, "explanation");
        h.f(iconName, "iconName");
        h.f(institutionName, "institutionName");
        h.f(link, "link");
        h.f(serviceName, "serviceName");
        return new FavoriteServiceModel(configPath, explanation, iconName, institutionCode, institutionName, link, serviceCode, serviceName, baseUrlCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FavoriteServiceModel)) {
            return false;
        }
        FavoriteServiceModel favoriteServiceModel = (FavoriteServiceModel) other;
        return h.a(this.configPath, favoriteServiceModel.configPath) && h.a(this.explanation, favoriteServiceModel.explanation) && h.a(this.iconName, favoriteServiceModel.iconName) && this.institutionCode == favoriteServiceModel.institutionCode && h.a(this.institutionName, favoriteServiceModel.institutionName) && h.a(this.link, favoriteServiceModel.link) && this.serviceCode == favoriteServiceModel.serviceCode && h.a(this.serviceName, favoriteServiceModel.serviceName) && h.a(this.baseUrlCode, favoriteServiceModel.baseUrlCode);
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

    public final int getServiceCode() {
        return this.serviceCode;
    }

    public final String getServiceName() {
        return this.serviceName;
    }

    public int hashCode() {
        int r02 = a.a(this.serviceName, (a.a(this.link, a.a(this.institutionName, (a.a(this.iconName, a.a(this.explanation, this.configPath.hashCode() * 31, 31), 31) + this.institutionCode) * 31, 31), 31) + this.serviceCode) * 31, 31);
        Integer num = this.baseUrlCode;
        return r02 + (num == null ? 0 : num.hashCode());
    }

    public String toString() {
        return "FavoriteServiceModel(configPath=" + this.configPath + ", explanation=" + this.explanation + ", iconName=" + this.iconName + ", institutionCode=" + this.institutionCode + ", institutionName=" + this.institutionName + ", link=" + this.link + ", serviceCode=" + this.serviceCode + ", serviceName=" + this.serviceName + ", baseUrlCode=" + this.baseUrlCode + ')';
    }
}
