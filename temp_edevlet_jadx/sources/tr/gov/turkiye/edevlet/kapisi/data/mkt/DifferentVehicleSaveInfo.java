package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003¢\u0006\u0002\u0010\u0012J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\tHÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\u0093\u0001\u00100\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u0003HÆ\u0001J\u0013\u00101\u001a\u00020\t2\b\u00102\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00103\u001a\u000204HÖ\u0001J\t\u00105\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0014R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u0016\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0014R\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0014R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0014R\u0016\u0010\u0011\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0014¨\u00066"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveInfo;", "", "chasisNumber", "", "createDate", "documentSerialCode", "documentSerialNumber", "id", "ownerDifferentFromDriver", "", "ownerIdentityNumber", "ownerIdentityType", "plateCityCode", "plateNumber", "policies", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicies;", "registryDate", "updateDate", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicies;Ljava/lang/String;Ljava/lang/String;)V", "getChasisNumber", "()Ljava/lang/String;", "getCreateDate", "getDocumentSerialCode", "getDocumentSerialNumber", "getId", "getOwnerDifferentFromDriver", "()Z", "getOwnerIdentityNumber", "getOwnerIdentityType", "getPlateCityCode", "getPlateNumber", "getPolicies", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicies;", "getRegistryDate", "getUpdateDate", "component1", "component10", "component11", "component12", "component13", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class DifferentVehicleSaveInfo {

    @k(name = "chasisNumber")
    private final String chasisNumber;

    @k(name = "createDate")
    private final String createDate;

    @k(name = "documentSerialCode")
    private final String documentSerialCode;

    @k(name = "documentSerialNumber")
    private final String documentSerialNumber;

    @k(name = "id")
    private final String id;

    @k(name = "ownerDifferentFromDriver")
    private final boolean ownerDifferentFromDriver;

    @k(name = "ownerIdentityNumber")
    private final String ownerIdentityNumber;

    @k(name = "ownerIdentityType")
    private final String ownerIdentityType;

    @k(name = "plateCityCode")
    private final String plateCityCode;

    @k(name = "plateNumber")
    private final String plateNumber;

    @k(name = "policies")
    private final DifferentVehiclePolicies policies;

    @k(name = "registryDate")
    private final String registryDate;

    @k(name = "updateDate")
    private final String updateDate;

    public DifferentVehicleSaveInfo(String chasisNumber, String createDate, String str, String str2, String id2, boolean z10, String ownerIdentityNumber, String ownerIdentityType, String plateCityCode, String plateNumber, DifferentVehiclePolicies differentVehiclePolicies, String str3, String updateDate) {
        h.f(chasisNumber, "chasisNumber");
        h.f(createDate, "createDate");
        h.f(id2, "id");
        h.f(ownerIdentityNumber, "ownerIdentityNumber");
        h.f(ownerIdentityType, "ownerIdentityType");
        h.f(plateCityCode, "plateCityCode");
        h.f(plateNumber, "plateNumber");
        h.f(updateDate, "updateDate");
        this.chasisNumber = chasisNumber;
        this.createDate = createDate;
        this.documentSerialCode = str;
        this.documentSerialNumber = str2;
        this.id = id2;
        this.ownerDifferentFromDriver = z10;
        this.ownerIdentityNumber = ownerIdentityNumber;
        this.ownerIdentityType = ownerIdentityType;
        this.plateCityCode = plateCityCode;
        this.plateNumber = plateNumber;
        this.policies = differentVehiclePolicies;
        this.registryDate = str3;
        this.updateDate = updateDate;
    }

    public /* synthetic */ DifferentVehicleSaveInfo(String str, String str2, String str3, String str4, String str5, boolean z10, String str6, String str7, String str8, String str9, DifferentVehiclePolicies differentVehiclePolicies, String str10, String str11, int r29, d dVar) {
        this(str, str2, str3, str4, str5, (r29 & 32) != 0 ? false : z10, str6, str7, str8, str9, differentVehiclePolicies, str10, str11);
    }

    /* renamed from: component1, reason: from getter */
    public final String getChasisNumber() {
        return this.chasisNumber;
    }

    /* renamed from: component10, reason: from getter */
    public final String getPlateNumber() {
        return this.plateNumber;
    }

    /* renamed from: component11, reason: from getter */
    public final DifferentVehiclePolicies getPolicies() {
        return this.policies;
    }

    /* renamed from: component12, reason: from getter */
    public final String getRegistryDate() {
        return this.registryDate;
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
    public final String getDocumentSerialCode() {
        return this.documentSerialCode;
    }

    /* renamed from: component4, reason: from getter */
    public final String getDocumentSerialNumber() {
        return this.documentSerialNumber;
    }

    /* renamed from: component5, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getOwnerDifferentFromDriver() {
        return this.ownerDifferentFromDriver;
    }

    /* renamed from: component7, reason: from getter */
    public final String getOwnerIdentityNumber() {
        return this.ownerIdentityNumber;
    }

    /* renamed from: component8, reason: from getter */
    public final String getOwnerIdentityType() {
        return this.ownerIdentityType;
    }

    /* renamed from: component9, reason: from getter */
    public final String getPlateCityCode() {
        return this.plateCityCode;
    }

    public final DifferentVehicleSaveInfo copy(String chasisNumber, String createDate, String documentSerialCode, String documentSerialNumber, String id2, boolean ownerDifferentFromDriver, String ownerIdentityNumber, String ownerIdentityType, String plateCityCode, String plateNumber, DifferentVehiclePolicies policies, String registryDate, String updateDate) {
        h.f(chasisNumber, "chasisNumber");
        h.f(createDate, "createDate");
        h.f(id2, "id");
        h.f(ownerIdentityNumber, "ownerIdentityNumber");
        h.f(ownerIdentityType, "ownerIdentityType");
        h.f(plateCityCode, "plateCityCode");
        h.f(plateNumber, "plateNumber");
        h.f(updateDate, "updateDate");
        return new DifferentVehicleSaveInfo(chasisNumber, createDate, documentSerialCode, documentSerialNumber, id2, ownerDifferentFromDriver, ownerIdentityNumber, ownerIdentityType, plateCityCode, plateNumber, policies, registryDate, updateDate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DifferentVehicleSaveInfo)) {
            return false;
        }
        DifferentVehicleSaveInfo differentVehicleSaveInfo = (DifferentVehicleSaveInfo) other;
        return h.a(this.chasisNumber, differentVehicleSaveInfo.chasisNumber) && h.a(this.createDate, differentVehicleSaveInfo.createDate) && h.a(this.documentSerialCode, differentVehicleSaveInfo.documentSerialCode) && h.a(this.documentSerialNumber, differentVehicleSaveInfo.documentSerialNumber) && h.a(this.id, differentVehicleSaveInfo.id) && this.ownerDifferentFromDriver == differentVehicleSaveInfo.ownerDifferentFromDriver && h.a(this.ownerIdentityNumber, differentVehicleSaveInfo.ownerIdentityNumber) && h.a(this.ownerIdentityType, differentVehicleSaveInfo.ownerIdentityType) && h.a(this.plateCityCode, differentVehicleSaveInfo.plateCityCode) && h.a(this.plateNumber, differentVehicleSaveInfo.plateNumber) && h.a(this.policies, differentVehicleSaveInfo.policies) && h.a(this.registryDate, differentVehicleSaveInfo.registryDate) && h.a(this.updateDate, differentVehicleSaveInfo.updateDate);
    }

    public final String getChasisNumber() {
        return this.chasisNumber;
    }

    public final String getCreateDate() {
        return this.createDate;
    }

    public final String getDocumentSerialCode() {
        return this.documentSerialCode;
    }

    public final String getDocumentSerialNumber() {
        return this.documentSerialNumber;
    }

    public final String getId() {
        return this.id;
    }

    public final boolean getOwnerDifferentFromDriver() {
        return this.ownerDifferentFromDriver;
    }

    public final String getOwnerIdentityNumber() {
        return this.ownerIdentityNumber;
    }

    public final String getOwnerIdentityType() {
        return this.ownerIdentityType;
    }

    public final String getPlateCityCode() {
        return this.plateCityCode;
    }

    public final String getPlateNumber() {
        return this.plateNumber;
    }

    public final DifferentVehiclePolicies getPolicies() {
        return this.policies;
    }

    public final String getRegistryDate() {
        return this.registryDate;
    }

    public final String getUpdateDate() {
        return this.updateDate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int r02 = a.a(this.createDate, this.chasisNumber.hashCode() * 31, 31);
        String str = this.documentSerialCode;
        int r03 = (r02 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.documentSerialNumber;
        int r04 = a.a(this.id, (r03 + (str2 == null ? 0 : str2.hashCode())) * 31, 31);
        boolean z10 = this.ownerDifferentFromDriver;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        int r05 = a.a(this.plateNumber, a.a(this.plateCityCode, a.a(this.ownerIdentityType, a.a(this.ownerIdentityNumber, (r04 + r12) * 31, 31), 31), 31), 31);
        DifferentVehiclePolicies differentVehiclePolicies = this.policies;
        int r06 = (r05 + (differentVehiclePolicies == null ? 0 : differentVehiclePolicies.hashCode())) * 31;
        String str3 = this.registryDate;
        return this.updateDate.hashCode() + ((r06 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("DifferentVehicleSaveInfo(chasisNumber=");
        sb2.append(this.chasisNumber);
        sb2.append(", createDate=");
        sb2.append(this.createDate);
        sb2.append(", documentSerialCode=");
        sb2.append(this.documentSerialCode);
        sb2.append(", documentSerialNumber=");
        sb2.append(this.documentSerialNumber);
        sb2.append(", id=");
        sb2.append(this.id);
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
