package tr.gov.turkiye.edevlet.kapisi.data.service;

import io.realm.internal.n;
import io.realm.l2;
import io.realm.s0;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b$\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b+\u0010,R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0004\u001a\u0004\b\u0011\u0010\u0006\"\u0004\b\u0012\u0010\bR$\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u000b\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR$\u0010\u0016\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u000b\u001a\u0004\b\u0017\u0010\r\"\u0004\b\u0018\u0010\u000fR$\u0010\u0019\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u000b\u001a\u0004\b\u001a\u0010\r\"\u0004\b\u001b\u0010\u000fR$\u0010\u001c\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u000b\u001a\u0004\b\u001d\u0010\r\"\u0004\b\u001e\u0010\u000fR$\u0010\u001f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u000b\u001a\u0004\b \u0010\r\"\u0004\b!\u0010\u000fR$\u0010\"\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u000b\u001a\u0004\b#\u0010\r\"\u0004\b$\u0010\u000fR$\u0010%\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\u0004\u001a\u0004\b&\u0010\u0006\"\u0004\b'\u0010\bR$\u0010(\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b(\u0010\u0004\u001a\u0004\b)\u0010\u0006\"\u0004\b*\u0010\b¨\u0006-"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;", "Lio/realm/s0;", "", "serviceCode", "Ljava/lang/Integer;", "getServiceCode", "()Ljava/lang/Integer;", "setServiceCode", "(Ljava/lang/Integer;)V", "", "serviceName", "Ljava/lang/String;", "getServiceName", "()Ljava/lang/String;", "setServiceName", "(Ljava/lang/String;)V", "institutionCode", "getInstitutionCode", "setInstitutionCode", "institutionName", "getInstitutionName", "setInstitutionName", "configPath", "getConfigPath", "setConfigPath", "link", "getLink", "setLink", "explanation", "getExplanation", "setExplanation", "iconName", "getIconName", "setIconName", "baseUrl", "getBaseUrl", "setBaseUrl", "baseUrlCode", "getBaseUrlCode", "setBaseUrlCode", "serviceInsertion", "getServiceInsertion", "setServiceInsertion", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class ConceptServiceModelRealm implements s0, l2 {
    private String baseUrl;
    private Integer baseUrlCode;
    private String configPath;
    private String explanation;
    private String iconName;
    private Integer institutionCode;
    private String institutionName;
    private String link;
    private Integer serviceCode;
    private Integer serviceInsertion;
    private String serviceName;

    /* JADX WARN: Multi-variable type inference failed */
    public ConceptServiceModelRealm() {
        if (this instanceof n) {
            ((n) this).a();
        }
    }

    public final String getBaseUrl() {
        return getBaseUrl();
    }

    public final Integer getBaseUrlCode() {
        return getBaseUrlCode();
    }

    public final String getConfigPath() {
        return getConfigPath();
    }

    public final String getExplanation() {
        return getExplanation();
    }

    public final String getIconName() {
        return getIconName();
    }

    public final Integer getInstitutionCode() {
        return getInstitutionCode();
    }

    public final String getInstitutionName() {
        return getInstitutionName();
    }

    public final String getLink() {
        return getLink();
    }

    public final Integer getServiceCode() {
        return getServiceCode();
    }

    public final Integer getServiceInsertion() {
        return getServiceInsertion();
    }

    public final String getServiceName() {
        return getServiceName();
    }

    /* renamed from: realmGet$baseUrl, reason: from getter */
    public String getBaseUrl() {
        return this.baseUrl;
    }

    /* renamed from: realmGet$baseUrlCode, reason: from getter */
    public Integer getBaseUrlCode() {
        return this.baseUrlCode;
    }

    /* renamed from: realmGet$configPath, reason: from getter */
    public String getConfigPath() {
        return this.configPath;
    }

    /* renamed from: realmGet$explanation, reason: from getter */
    public String getExplanation() {
        return this.explanation;
    }

    /* renamed from: realmGet$iconName, reason: from getter */
    public String getIconName() {
        return this.iconName;
    }

    /* renamed from: realmGet$institutionCode, reason: from getter */
    public Integer getInstitutionCode() {
        return this.institutionCode;
    }

    /* renamed from: realmGet$institutionName, reason: from getter */
    public String getInstitutionName() {
        return this.institutionName;
    }

    /* renamed from: realmGet$link, reason: from getter */
    public String getLink() {
        return this.link;
    }

    /* renamed from: realmGet$serviceCode, reason: from getter */
    public Integer getServiceCode() {
        return this.serviceCode;
    }

    /* renamed from: realmGet$serviceInsertion, reason: from getter */
    public Integer getServiceInsertion() {
        return this.serviceInsertion;
    }

    /* renamed from: realmGet$serviceName, reason: from getter */
    public String getServiceName() {
        return this.serviceName;
    }

    public void realmSet$baseUrl(String str) {
        this.baseUrl = str;
    }

    public void realmSet$baseUrlCode(Integer num) {
        this.baseUrlCode = num;
    }

    public void realmSet$configPath(String str) {
        this.configPath = str;
    }

    public void realmSet$explanation(String str) {
        this.explanation = str;
    }

    public void realmSet$iconName(String str) {
        this.iconName = str;
    }

    public void realmSet$institutionCode(Integer num) {
        this.institutionCode = num;
    }

    public void realmSet$institutionName(String str) {
        this.institutionName = str;
    }

    public void realmSet$link(String str) {
        this.link = str;
    }

    public void realmSet$serviceCode(Integer num) {
        this.serviceCode = num;
    }

    public void realmSet$serviceInsertion(Integer num) {
        this.serviceInsertion = num;
    }

    public void realmSet$serviceName(String str) {
        this.serviceName = str;
    }

    public final void setBaseUrl(String str) {
        realmSet$baseUrl(str);
    }

    public final void setBaseUrlCode(Integer num) {
        realmSet$baseUrlCode(num);
    }

    public final void setConfigPath(String str) {
        realmSet$configPath(str);
    }

    public final void setExplanation(String str) {
        realmSet$explanation(str);
    }

    public final void setIconName(String str) {
        realmSet$iconName(str);
    }

    public final void setInstitutionCode(Integer num) {
        realmSet$institutionCode(num);
    }

    public final void setInstitutionName(String str) {
        realmSet$institutionName(str);
    }

    public final void setLink(String str) {
        realmSet$link(str);
    }

    public final void setServiceCode(Integer num) {
        realmSet$serviceCode(num);
    }

    public final void setServiceInsertion(Integer num) {
        realmSet$serviceInsertion(num);
    }

    public final void setServiceName(String str) {
        realmSet$serviceName(str);
    }
}
