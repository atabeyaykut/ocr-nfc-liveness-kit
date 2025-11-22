package tr.gov.turkiye.edevlet.kapisi.data.institution;

import io.realm.internal.n;
import io.realm.n1;
import io.realm.s0;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b+\u0010,R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R$\u0010\u0016\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u000e\u001a\u0004\b\u0017\u0010\u0010\"\u0004\b\u0018\u0010\u0012R$\u0010\u0019\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u000e\u001a\u0004\b\u001a\u0010\u0010\"\u0004\b\u001b\u0010\u0012R$\u0010\u001c\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u000e\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b\u001e\u0010\u0012R$\u0010\u001f\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u000e\u001a\u0004\b \u0010\u0010\"\u0004\b!\u0010\u0012R$\u0010\"\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u000e\u001a\u0004\b#\u0010\u0010\"\u0004\b$\u0010\u0012R\"\u0010&\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b&\u0010(\"\u0004\b)\u0010*¨\u0006-"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;", "Lio/realm/s0;", "", "contactId", "I", "getContactId", "()I", "setContactId", "(I)V", "institutionCode", "getInstitutionCode", "setInstitutionCode", "", "contactAddress", "Ljava/lang/String;", "getContactAddress", "()Ljava/lang/String;", "setContactAddress", "(Ljava/lang/String;)V", "contactEmail", "getContactEmail", "setContactEmail", "contactName", "getContactName", "setContactName", "contactWebsite", "getContactWebsite", "setContactWebsite", "contactPhone", "getContactPhone", "setContactPhone", "contactLongitude", "getContactLongitude", "setContactLongitude", "contactLatitude", "getContactLatitude", "setContactLatitude", "", "isMainInstitution", "Z", "()Z", "setMainInstitution", "(Z)V", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class InstitutionContactModelRealm implements s0, n1 {
    private String contactAddress;
    private String contactEmail;
    private int contactId;
    private String contactLatitude;
    private String contactLongitude;
    private String contactName;
    private String contactPhone;
    private String contactWebsite;
    private int institutionCode;
    private boolean isMainInstitution;

    /* JADX WARN: Multi-variable type inference failed */
    public InstitutionContactModelRealm() {
        if (this instanceof n) {
            ((n) this).a();
        }
        realmSet$contactAddress("");
        realmSet$contactEmail("");
        realmSet$contactName("");
        realmSet$contactWebsite("");
        realmSet$contactPhone("");
        realmSet$contactLongitude("");
        realmSet$contactLatitude("");
    }

    public final String getContactAddress() {
        return getContactAddress();
    }

    public final String getContactEmail() {
        return getContactEmail();
    }

    public final int getContactId() {
        return getContactId();
    }

    public final String getContactLatitude() {
        return getContactLatitude();
    }

    public final String getContactLongitude() {
        return getContactLongitude();
    }

    public final String getContactName() {
        return getContactName();
    }

    public final String getContactPhone() {
        return getContactPhone();
    }

    public final String getContactWebsite() {
        return getContactWebsite();
    }

    public final int getInstitutionCode() {
        return getInstitutionCode();
    }

    public final boolean isMainInstitution() {
        return getIsMainInstitution();
    }

    /* renamed from: realmGet$contactAddress, reason: from getter */
    public String getContactAddress() {
        return this.contactAddress;
    }

    /* renamed from: realmGet$contactEmail, reason: from getter */
    public String getContactEmail() {
        return this.contactEmail;
    }

    /* renamed from: realmGet$contactId, reason: from getter */
    public int getContactId() {
        return this.contactId;
    }

    /* renamed from: realmGet$contactLatitude, reason: from getter */
    public String getContactLatitude() {
        return this.contactLatitude;
    }

    /* renamed from: realmGet$contactLongitude, reason: from getter */
    public String getContactLongitude() {
        return this.contactLongitude;
    }

    /* renamed from: realmGet$contactName, reason: from getter */
    public String getContactName() {
        return this.contactName;
    }

    /* renamed from: realmGet$contactPhone, reason: from getter */
    public String getContactPhone() {
        return this.contactPhone;
    }

    /* renamed from: realmGet$contactWebsite, reason: from getter */
    public String getContactWebsite() {
        return this.contactWebsite;
    }

    /* renamed from: realmGet$institutionCode, reason: from getter */
    public int getInstitutionCode() {
        return this.institutionCode;
    }

    /* renamed from: realmGet$isMainInstitution, reason: from getter */
    public boolean getIsMainInstitution() {
        return this.isMainInstitution;
    }

    public void realmSet$contactAddress(String str) {
        this.contactAddress = str;
    }

    public void realmSet$contactEmail(String str) {
        this.contactEmail = str;
    }

    public void realmSet$contactId(int r12) {
        this.contactId = r12;
    }

    public void realmSet$contactLatitude(String str) {
        this.contactLatitude = str;
    }

    public void realmSet$contactLongitude(String str) {
        this.contactLongitude = str;
    }

    public void realmSet$contactName(String str) {
        this.contactName = str;
    }

    public void realmSet$contactPhone(String str) {
        this.contactPhone = str;
    }

    public void realmSet$contactWebsite(String str) {
        this.contactWebsite = str;
    }

    public void realmSet$institutionCode(int r12) {
        this.institutionCode = r12;
    }

    public void realmSet$isMainInstitution(boolean z10) {
        this.isMainInstitution = z10;
    }

    public final void setContactAddress(String str) {
        realmSet$contactAddress(str);
    }

    public final void setContactEmail(String str) {
        realmSet$contactEmail(str);
    }

    public final void setContactId(int r12) {
        realmSet$contactId(r12);
    }

    public final void setContactLatitude(String str) {
        realmSet$contactLatitude(str);
    }

    public final void setContactLongitude(String str) {
        realmSet$contactLongitude(str);
    }

    public final void setContactName(String str) {
        realmSet$contactName(str);
    }

    public final void setContactPhone(String str) {
        realmSet$contactPhone(str);
    }

    public final void setContactWebsite(String str) {
        realmSet$contactWebsite(str);
    }

    public final void setInstitutionCode(int r12) {
        realmSet$institutionCode(r12);
    }

    public final void setMainInstitution(boolean z10) {
        realmSet$isMainInstitution(z10);
    }
}
