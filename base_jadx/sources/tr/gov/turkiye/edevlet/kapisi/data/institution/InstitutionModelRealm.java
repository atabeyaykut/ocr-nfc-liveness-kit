package tr.gov.turkiye.edevlet.kapisi.data.institution;

import io.realm.internal.n;
import io.realm.p1;
import io.realm.q0;
import io.realm.s0;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b4\u00105R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0004\u001a\u0004\b\u0014\u0010\u0006\"\u0004\b\u0015\u0010\bR\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0004\u001a\u0004\b\u001a\u0010\u0006\"\u0004\b\u001b\u0010\bR\"\u0010\u001c\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0004\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\bR(\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R(\u0010(\u001a\b\u0012\u0004\u0012\u00020'0\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010\"\u001a\u0004\b)\u0010$\"\u0004\b*\u0010&R\"\u0010,\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b,\u0010.\"\u0004\b/\u00100R\"\u00101\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010\u000e\u001a\u0004\b2\u0010\u0010\"\u0004\b3\u0010\u0012¨\u00066"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;", "Lio/realm/s0;", "", "institutionId", "I", "getInstitutionId", "()I", "setInstitutionId", "(I)V", "institutionCode", "getInstitutionCode", "setInstitutionCode", "", "institutionName", "Ljava/lang/String;", "getInstitutionName", "()Ljava/lang/String;", "setInstitutionName", "(Ljava/lang/String;)V", "serviceCount", "getServiceCount", "setServiceCount", "sectionCode", "getSectionCode", "setSectionCode", "cityCode", "getCityCode", "setCityCode", "categoryCode", "getCategoryCode", "setCategoryCode", "Lio/realm/q0;", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "serviceList", "Lio/realm/q0;", "getServiceList", "()Lio/realm/q0;", "setServiceList", "(Lio/realm/q0;)V", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;", "contactList", "getContactList", "setContactList", "", "isOpened", "Z", "()Z", "setOpened", "(Z)V", "iconName", "getIconName", "setIconName", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class InstitutionModelRealm implements s0, p1 {
    private int categoryCode;
    private int cityCode;
    private q0<InstitutionContactModelRealm> contactList;
    private String iconName;
    private int institutionCode;
    private int institutionId;
    private String institutionName;
    private boolean isOpened;
    private int sectionCode;
    private int serviceCount;
    private q0<ServiceModelRealm> serviceList;

    /* JADX WARN: Multi-variable type inference failed */
    public InstitutionModelRealm() {
        if (this instanceof n) {
            ((n) this).a();
        }
        realmSet$institutionName("");
        realmSet$serviceList(new q0());
        realmSet$contactList(new q0());
        realmSet$iconName("");
    }

    public final int getCategoryCode() {
        return getCategoryCode();
    }

    public final int getCityCode() {
        return getCityCode();
    }

    public final q0<InstitutionContactModelRealm> getContactList() {
        return getContactList();
    }

    public final String getIconName() {
        return getIconName();
    }

    public final int getInstitutionCode() {
        return getInstitutionCode();
    }

    public final int getInstitutionId() {
        return getInstitutionId();
    }

    public final String getInstitutionName() {
        return getInstitutionName();
    }

    public final int getSectionCode() {
        return getSectionCode();
    }

    public final int getServiceCount() {
        return getServiceCount();
    }

    public final q0<ServiceModelRealm> getServiceList() {
        return getServiceList();
    }

    public final boolean isOpened() {
        return getIsOpened();
    }

    /* renamed from: realmGet$categoryCode, reason: from getter */
    public int getCategoryCode() {
        return this.categoryCode;
    }

    /* renamed from: realmGet$cityCode, reason: from getter */
    public int getCityCode() {
        return this.cityCode;
    }

    /* renamed from: realmGet$contactList, reason: from getter */
    public q0 getContactList() {
        return this.contactList;
    }

    /* renamed from: realmGet$iconName, reason: from getter */
    public String getIconName() {
        return this.iconName;
    }

    /* renamed from: realmGet$institutionCode, reason: from getter */
    public int getInstitutionCode() {
        return this.institutionCode;
    }

    /* renamed from: realmGet$institutionId, reason: from getter */
    public int getInstitutionId() {
        return this.institutionId;
    }

    /* renamed from: realmGet$institutionName, reason: from getter */
    public String getInstitutionName() {
        return this.institutionName;
    }

    /* renamed from: realmGet$isOpened, reason: from getter */
    public boolean getIsOpened() {
        return this.isOpened;
    }

    /* renamed from: realmGet$sectionCode, reason: from getter */
    public int getSectionCode() {
        return this.sectionCode;
    }

    /* renamed from: realmGet$serviceCount, reason: from getter */
    public int getServiceCount() {
        return this.serviceCount;
    }

    /* renamed from: realmGet$serviceList, reason: from getter */
    public q0 getServiceList() {
        return this.serviceList;
    }

    public void realmSet$categoryCode(int r12) {
        this.categoryCode = r12;
    }

    public void realmSet$cityCode(int r12) {
        this.cityCode = r12;
    }

    public void realmSet$contactList(q0 q0Var) {
        this.contactList = q0Var;
    }

    public void realmSet$iconName(String str) {
        this.iconName = str;
    }

    public void realmSet$institutionCode(int r12) {
        this.institutionCode = r12;
    }

    public void realmSet$institutionId(int r12) {
        this.institutionId = r12;
    }

    public void realmSet$institutionName(String str) {
        this.institutionName = str;
    }

    public void realmSet$isOpened(boolean z10) {
        this.isOpened = z10;
    }

    public void realmSet$sectionCode(int r12) {
        this.sectionCode = r12;
    }

    public void realmSet$serviceCount(int r12) {
        this.serviceCount = r12;
    }

    public void realmSet$serviceList(q0 q0Var) {
        this.serviceList = q0Var;
    }

    public final void setCategoryCode(int r12) {
        realmSet$categoryCode(r12);
    }

    public final void setCityCode(int r12) {
        realmSet$cityCode(r12);
    }

    public final void setContactList(q0<InstitutionContactModelRealm> q0Var) {
        h.f(q0Var, "<set-?>");
        realmSet$contactList(q0Var);
    }

    public final void setIconName(String str) {
        h.f(str, "<set-?>");
        realmSet$iconName(str);
    }

    public final void setInstitutionCode(int r12) {
        realmSet$institutionCode(r12);
    }

    public final void setInstitutionId(int r12) {
        realmSet$institutionId(r12);
    }

    public final void setInstitutionName(String str) {
        h.f(str, "<set-?>");
        realmSet$institutionName(str);
    }

    public final void setOpened(boolean z10) {
        realmSet$isOpened(z10);
    }

    public final void setSectionCode(int r12) {
        realmSet$sectionCode(r12);
    }

    public final void setServiceCount(int r12) {
        realmSet$serviceCount(r12);
    }

    public final void setServiceList(q0<ServiceModelRealm> q0Var) {
        h.f(q0Var, "<set-?>");
        realmSet$serviceList(q0Var);
    }
}
