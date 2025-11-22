package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.camera.camera2.internal.c;
import androidx.room.util.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b%\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0081\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00010\n\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003¢\u0006\u0002\u0010\u0011J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00010\nHÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\u000f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00010\nHÆ\u0003J\u000f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00010\nHÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\u009f\u0001\u0010.\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00010\n2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00010\n2\b\b\u0002\u0010\f\u001a\u00020\u00032\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\n2\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u0003HÆ\u0001J\u0013\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00102\u001a\u000203HÖ\u0001J\t\u00104\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0016\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0013R\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001aR\u0016\u0010\u000e\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0013R\u0016\u0010\u000f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0013R\u0016\u0010\u0010\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0013¨\u00065"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;", "", "birthDate", "", "createDate", "emailAddress", "id", "identityNumber", "identityType", "licenseIssueDate", "", "licenseSerialNumber", "name", "nationality", "phoneNumber", "surname", "updateDate", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBirthDate", "()Ljava/lang/String;", "getCreateDate", "getEmailAddress", "getId", "getIdentityNumber", "getIdentityType", "getLicenseIssueDate", "()Ljava/util/List;", "getLicenseSerialNumber", "getName", "getNationality", "getPhoneNumber", "getSurname", "getUpdateDate", "component1", "component10", "component11", "component12", "component13", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class DriverSaveInfo {

    @k(name = "birthDate")
    private final String birthDate;

    @k(name = "createDate")
    private final String createDate;

    @k(name = "emailAddress")
    private final String emailAddress;

    @k(name = "id")
    private final String id;

    @k(name = "identityNumber")
    private final String identityNumber;

    @k(name = "identityType")
    private final String identityType;

    @k(name = "licenseIssueDate")
    private final List<Object> licenseIssueDate;

    @k(name = "licenseSerialNumber")
    private final List<Object> licenseSerialNumber;

    @k(name = "name")
    private final String name;

    @k(name = "nationality")
    private final List<Object> nationality;

    @k(name = "phoneNumber")
    private final String phoneNumber;

    @k(name = "surname")
    private final String surname;

    @k(name = "updateDate")
    private final String updateDate;

    public DriverSaveInfo(String birthDate, String createDate, String str, String id2, String identityNumber, String identityType, List<? extends Object> licenseIssueDate, List<? extends Object> licenseSerialNumber, String name, List<? extends Object> nationality, String phoneNumber, String surname, String updateDate) {
        h.f(birthDate, "birthDate");
        h.f(createDate, "createDate");
        h.f(id2, "id");
        h.f(identityNumber, "identityNumber");
        h.f(identityType, "identityType");
        h.f(licenseIssueDate, "licenseIssueDate");
        h.f(licenseSerialNumber, "licenseSerialNumber");
        h.f(name, "name");
        h.f(nationality, "nationality");
        h.f(phoneNumber, "phoneNumber");
        h.f(surname, "surname");
        h.f(updateDate, "updateDate");
        this.birthDate = birthDate;
        this.createDate = createDate;
        this.emailAddress = str;
        this.id = id2;
        this.identityNumber = identityNumber;
        this.identityType = identityType;
        this.licenseIssueDate = licenseIssueDate;
        this.licenseSerialNumber = licenseSerialNumber;
        this.name = name;
        this.nationality = nationality;
        this.phoneNumber = phoneNumber;
        this.surname = surname;
        this.updateDate = updateDate;
    }

    /* renamed from: component1, reason: from getter */
    public final String getBirthDate() {
        return this.birthDate;
    }

    public final List<Object> component10() {
        return this.nationality;
    }

    /* renamed from: component11, reason: from getter */
    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    /* renamed from: component12, reason: from getter */
    public final String getSurname() {
        return this.surname;
    }

    /* renamed from: component13, reason: from getter */
    public final String getUpdateDate() {
        return this.updateDate;
    }

    /* renamed from: component2, reason: from getter */
    public final String getCreateDate() {
        return this.createDate;
    }

    /* renamed from: component3, reason: from getter */
    public final String getEmailAddress() {
        return this.emailAddress;
    }

    /* renamed from: component4, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* renamed from: component5, reason: from getter */
    public final String getIdentityNumber() {
        return this.identityNumber;
    }

    /* renamed from: component6, reason: from getter */
    public final String getIdentityType() {
        return this.identityType;
    }

    public final List<Object> component7() {
        return this.licenseIssueDate;
    }

    public final List<Object> component8() {
        return this.licenseSerialNumber;
    }

    /* renamed from: component9, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final DriverSaveInfo copy(String birthDate, String createDate, String emailAddress, String id2, String identityNumber, String identityType, List<? extends Object> licenseIssueDate, List<? extends Object> licenseSerialNumber, String name, List<? extends Object> nationality, String phoneNumber, String surname, String updateDate) {
        h.f(birthDate, "birthDate");
        h.f(createDate, "createDate");
        h.f(id2, "id");
        h.f(identityNumber, "identityNumber");
        h.f(identityType, "identityType");
        h.f(licenseIssueDate, "licenseIssueDate");
        h.f(licenseSerialNumber, "licenseSerialNumber");
        h.f(name, "name");
        h.f(nationality, "nationality");
        h.f(phoneNumber, "phoneNumber");
        h.f(surname, "surname");
        h.f(updateDate, "updateDate");
        return new DriverSaveInfo(birthDate, createDate, emailAddress, id2, identityNumber, identityType, licenseIssueDate, licenseSerialNumber, name, nationality, phoneNumber, surname, updateDate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DriverSaveInfo)) {
            return false;
        }
        DriverSaveInfo driverSaveInfo = (DriverSaveInfo) other;
        return h.a(this.birthDate, driverSaveInfo.birthDate) && h.a(this.createDate, driverSaveInfo.createDate) && h.a(this.emailAddress, driverSaveInfo.emailAddress) && h.a(this.id, driverSaveInfo.id) && h.a(this.identityNumber, driverSaveInfo.identityNumber) && h.a(this.identityType, driverSaveInfo.identityType) && h.a(this.licenseIssueDate, driverSaveInfo.licenseIssueDate) && h.a(this.licenseSerialNumber, driverSaveInfo.licenseSerialNumber) && h.a(this.name, driverSaveInfo.name) && h.a(this.nationality, driverSaveInfo.nationality) && h.a(this.phoneNumber, driverSaveInfo.phoneNumber) && h.a(this.surname, driverSaveInfo.surname) && h.a(this.updateDate, driverSaveInfo.updateDate);
    }

    public final String getBirthDate() {
        return this.birthDate;
    }

    public final String getCreateDate() {
        return this.createDate;
    }

    public final String getEmailAddress() {
        return this.emailAddress;
    }

    public final String getId() {
        return this.id;
    }

    public final String getIdentityNumber() {
        return this.identityNumber;
    }

    public final String getIdentityType() {
        return this.identityType;
    }

    public final List<Object> getLicenseIssueDate() {
        return this.licenseIssueDate;
    }

    public final List<Object> getLicenseSerialNumber() {
        return this.licenseSerialNumber;
    }

    public final String getName() {
        return this.name;
    }

    public final List<Object> getNationality() {
        return this.nationality;
    }

    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    public final String getSurname() {
        return this.surname;
    }

    public final String getUpdateDate() {
        return this.updateDate;
    }

    public int hashCode() {
        int r02 = a.a(this.createDate, this.birthDate.hashCode() * 31, 31);
        String str = this.emailAddress;
        return this.updateDate.hashCode() + a.a(this.surname, a.a(this.phoneNumber, c.c(this.nationality, a.a(this.name, c.c(this.licenseSerialNumber, c.c(this.licenseIssueDate, a.a(this.identityType, a.a(this.identityNumber, a.a(this.id, (r02 + (str == null ? 0 : str.hashCode())) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("DriverSaveInfo(birthDate=");
        sb2.append(this.birthDate);
        sb2.append(", createDate=");
        sb2.append(this.createDate);
        sb2.append(", emailAddress=");
        sb2.append(this.emailAddress);
        sb2.append(", id=");
        sb2.append(this.id);
        sb2.append(", identityNumber=");
        sb2.append(this.identityNumber);
        sb2.append(", identityType=");
        sb2.append(this.identityType);
        sb2.append(", licenseIssueDate=");
        sb2.append(this.licenseIssueDate);
        sb2.append(", licenseSerialNumber=");
        sb2.append(this.licenseSerialNumber);
        sb2.append(", name=");
        sb2.append(this.name);
        sb2.append(", nationality=");
        sb2.append(this.nationality);
        sb2.append(", phoneNumber=");
        sb2.append(this.phoneNumber);
        sb2.append(", surname=");
        sb2.append(this.surname);
        sb2.append(", updateDate=");
        return android.support.v4.media.a.h(sb2, this.updateDate, ')');
    }
}
