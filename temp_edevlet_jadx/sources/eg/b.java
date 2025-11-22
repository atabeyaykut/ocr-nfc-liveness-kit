package eg;

import java.util.List;

/* loaded from: classes3.dex */
public final class b {

    @l8.k(name = "birthDate")
    private final String birthDate;

    @l8.k(name = "createDate")
    private final String createDate;

    @l8.k(name = "emailAddress")
    private final String emailAddress;

    /* renamed from: id, reason: collision with root package name */
    @l8.k(name = "id")
    private final String f5369id;

    @l8.k(name = "identityNumber")
    private final String identityNumber;

    @l8.k(name = "identityType")
    private final String identityType;

    @l8.k(name = "licenseIssueDate")
    private final Object licenseIssueDate;

    @l8.k(name = "licenseSerialNumber")
    private final Object licenseSerialNumber;

    @l8.k(name = "name")
    private final String name;

    @l8.k(name = "nationality")
    private final List<Object> nationality;

    @l8.k(name = "phoneNumber")
    private final String phoneNumber;

    @l8.k(name = "surname")
    private final String surname;

    @l8.k(name = "updateDate")
    private final String updateDate;

    public b(String birthDate, String createDate, String emailAddress, String id2, String identityNumber, String identityType, Object obj, Object obj2, String name, List<? extends Object> nationality, String phoneNumber, String surname, String updateDate) {
        kotlin.jvm.internal.h.f(birthDate, "birthDate");
        kotlin.jvm.internal.h.f(createDate, "createDate");
        kotlin.jvm.internal.h.f(emailAddress, "emailAddress");
        kotlin.jvm.internal.h.f(id2, "id");
        kotlin.jvm.internal.h.f(identityNumber, "identityNumber");
        kotlin.jvm.internal.h.f(identityType, "identityType");
        kotlin.jvm.internal.h.f(name, "name");
        kotlin.jvm.internal.h.f(nationality, "nationality");
        kotlin.jvm.internal.h.f(phoneNumber, "phoneNumber");
        kotlin.jvm.internal.h.f(surname, "surname");
        kotlin.jvm.internal.h.f(updateDate, "updateDate");
        this.birthDate = birthDate;
        this.createDate = createDate;
        this.emailAddress = emailAddress;
        this.f5369id = id2;
        this.identityNumber = identityNumber;
        this.identityType = identityType;
        this.licenseIssueDate = obj;
        this.licenseSerialNumber = obj2;
        this.name = name;
        this.nationality = nationality;
        this.phoneNumber = phoneNumber;
        this.surname = surname;
        this.updateDate = updateDate;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return kotlin.jvm.internal.h.a(this.birthDate, bVar.birthDate) && kotlin.jvm.internal.h.a(this.createDate, bVar.createDate) && kotlin.jvm.internal.h.a(this.emailAddress, bVar.emailAddress) && kotlin.jvm.internal.h.a(this.f5369id, bVar.f5369id) && kotlin.jvm.internal.h.a(this.identityNumber, bVar.identityNumber) && kotlin.jvm.internal.h.a(this.identityType, bVar.identityType) && kotlin.jvm.internal.h.a(this.licenseIssueDate, bVar.licenseIssueDate) && kotlin.jvm.internal.h.a(this.licenseSerialNumber, bVar.licenseSerialNumber) && kotlin.jvm.internal.h.a(this.name, bVar.name) && kotlin.jvm.internal.h.a(this.nationality, bVar.nationality) && kotlin.jvm.internal.h.a(this.phoneNumber, bVar.phoneNumber) && kotlin.jvm.internal.h.a(this.surname, bVar.surname) && kotlin.jvm.internal.h.a(this.updateDate, bVar.updateDate);
    }

    public final int hashCode() {
        int r02 = androidx.room.util.a.a(this.identityType, androidx.room.util.a.a(this.identityNumber, androidx.room.util.a.a(this.f5369id, androidx.room.util.a.a(this.emailAddress, androidx.room.util.a.a(this.createDate, this.birthDate.hashCode() * 31, 31), 31), 31), 31), 31);
        Object obj = this.licenseIssueDate;
        int r03 = (r02 + (obj == null ? 0 : obj.hashCode())) * 31;
        Object obj2 = this.licenseSerialNumber;
        return this.updateDate.hashCode() + androidx.room.util.a.a(this.surname, androidx.room.util.a.a(this.phoneNumber, androidx.camera.camera2.internal.c.c(this.nationality, androidx.room.util.a.a(this.name, (r03 + (obj2 != null ? obj2.hashCode() : 0)) * 31, 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("DriverInfo(birthDate=");
        sb2.append(this.birthDate);
        sb2.append(", createDate=");
        sb2.append(this.createDate);
        sb2.append(", emailAddress=");
        sb2.append(this.emailAddress);
        sb2.append(", id=");
        sb2.append(this.f5369id);
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
