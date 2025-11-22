package eg;

/* loaded from: classes3.dex */
public final class t {

    @l8.k(name = "chasisNumber")
    private final String chasisNumber;

    @l8.k(name = "createDate")
    private final String createDate;

    @l8.k(name = "documentSerialCode")
    private final Object documentSerialCode;

    @l8.k(name = "documentSerialNumber")
    private final Object documentSerialNumber;

    /* renamed from: id, reason: collision with root package name */
    @l8.k(name = "id")
    private final String f5374id;

    @l8.k(name = "ownerDifferentFromDriver")
    private final boolean ownerDifferentFromDriver;

    @l8.k(name = "ownerIdentityNumber")
    private final String ownerIdentityNumber;

    @l8.k(name = "ownerIdentityType")
    private final String ownerIdentityType;

    @l8.k(name = "plateCityCode")
    private final String plateCityCode;

    @l8.k(name = "plateNumber")
    private final String plateNumber;

    @l8.k(name = "policies")
    private final e policies;

    @l8.k(name = "registryDate")
    private final Object registryDate;

    @l8.k(name = "updateDate")
    private final String updateDate;

    public t(String chasisNumber, String createDate, Object obj, Object obj2, String id2, boolean z10, String ownerIdentityNumber, String ownerIdentityType, String plateCityCode, String plateNumber, e policies, Object obj3, String str) {
        kotlin.jvm.internal.h.f(chasisNumber, "chasisNumber");
        kotlin.jvm.internal.h.f(createDate, "createDate");
        kotlin.jvm.internal.h.f(id2, "id");
        kotlin.jvm.internal.h.f(ownerIdentityNumber, "ownerIdentityNumber");
        kotlin.jvm.internal.h.f(ownerIdentityType, "ownerIdentityType");
        kotlin.jvm.internal.h.f(plateCityCode, "plateCityCode");
        kotlin.jvm.internal.h.f(plateNumber, "plateNumber");
        kotlin.jvm.internal.h.f(policies, "policies");
        this.chasisNumber = chasisNumber;
        this.createDate = createDate;
        this.documentSerialCode = obj;
        this.documentSerialNumber = obj2;
        this.f5374id = id2;
        this.ownerDifferentFromDriver = z10;
        this.ownerIdentityNumber = ownerIdentityNumber;
        this.ownerIdentityType = ownerIdentityType;
        this.plateCityCode = plateCityCode;
        this.plateNumber = plateNumber;
        this.policies = policies;
        this.registryDate = obj3;
        this.updateDate = str;
    }

    public final String a() {
        return this.plateCityCode;
    }

    public final String b() {
        return this.plateNumber;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return kotlin.jvm.internal.h.a(this.chasisNumber, tVar.chasisNumber) && kotlin.jvm.internal.h.a(this.createDate, tVar.createDate) && kotlin.jvm.internal.h.a(this.documentSerialCode, tVar.documentSerialCode) && kotlin.jvm.internal.h.a(this.documentSerialNumber, tVar.documentSerialNumber) && kotlin.jvm.internal.h.a(this.f5374id, tVar.f5374id) && this.ownerDifferentFromDriver == tVar.ownerDifferentFromDriver && kotlin.jvm.internal.h.a(this.ownerIdentityNumber, tVar.ownerIdentityNumber) && kotlin.jvm.internal.h.a(this.ownerIdentityType, tVar.ownerIdentityType) && kotlin.jvm.internal.h.a(this.plateCityCode, tVar.plateCityCode) && kotlin.jvm.internal.h.a(this.plateNumber, tVar.plateNumber) && kotlin.jvm.internal.h.a(this.policies, tVar.policies) && kotlin.jvm.internal.h.a(this.registryDate, tVar.registryDate) && kotlin.jvm.internal.h.a(this.updateDate, tVar.updateDate);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = androidx.room.util.a.a(this.createDate, this.chasisNumber.hashCode() * 31, 31);
        Object obj = this.documentSerialCode;
        int r03 = (r02 + (obj == null ? 0 : obj.hashCode())) * 31;
        Object obj2 = this.documentSerialNumber;
        int r04 = androidx.room.util.a.a(this.f5374id, (r03 + (obj2 == null ? 0 : obj2.hashCode())) * 31, 31);
        boolean z10 = this.ownerDifferentFromDriver;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        int r13 = (this.policies.hashCode() + androidx.room.util.a.a(this.plateNumber, androidx.room.util.a.a(this.plateCityCode, androidx.room.util.a.a(this.ownerIdentityType, androidx.room.util.a.a(this.ownerIdentityNumber, (r04 + r12) * 31, 31), 31), 31), 31)) * 31;
        Object obj3 = this.registryDate;
        int r14 = (r13 + (obj3 == null ? 0 : obj3.hashCode())) * 31;
        String str = this.updateDate;
        return r14 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ReportVehicleInfo(chasisNumber=");
        sb2.append(this.chasisNumber);
        sb2.append(", createDate=");
        sb2.append(this.createDate);
        sb2.append(", documentSerialCode=");
        sb2.append(this.documentSerialCode);
        sb2.append(", documentSerialNumber=");
        sb2.append(this.documentSerialNumber);
        sb2.append(", id=");
        sb2.append(this.f5374id);
        sb2.append(", ownerDifferentFromDriver=");
        sb2.append(this.ownerDifferentFromDriver);
        sb2.append(", ownerIdentityNumber=");
        sb2.append(this.ownerIdentityNumber);
        sb2.append(", ownerIdentityType=");
        sb2.append(this.ownerIdentityType);
        sb2.append(", plateCityCode=");
        sb2.append(this.plateCityCode);
        sb2.append(", plateNumber=");
        sb2.append(this.plateNumber);
        sb2.append(", policies=");
        sb2.append(this.policies);
        sb2.append(", registryDate=");
        sb2.append(this.registryDate);
        sb2.append(", updateDate=");
        return android.support.v4.media.a.h(sb2, this.updateDate, ')');
    }
}
