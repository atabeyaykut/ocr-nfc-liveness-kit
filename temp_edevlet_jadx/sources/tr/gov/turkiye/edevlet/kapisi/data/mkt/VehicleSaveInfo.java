package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.camera.camera2.internal.c;
import androidx.room.util.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0003¢\u0006\u0002\u0010\u0013J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\u000f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006HÆ\u0003J\u000f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006HÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\nHÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\u0003HÆ\u0003J\t\u00101\u001a\u00020\u0003HÆ\u0003J\u009f\u0001\u00102\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00010\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u0003HÆ\u0001J\u0013\u00103\u001a\u00020\n2\b\u00104\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00105\u001a\u000206HÖ\u0001J\t\u00107\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0015R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0015R\u0016\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0015R\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0015R\u0016\u0010\u000e\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0015R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0018R\u0016\u0010\u0012\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0015¨\u00068"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveInfo;", "", "chasisNumber", "", "createDate", "documentSerialCode", "", "documentSerialNumber", "id", "ownerDifferentFromDriver", "", "ownerIdentityNumber", "ownerIdentityType", "plateCityCode", "plateNumber", "policies", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Policies;", "registryDate", "updateDate", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Policies;Ljava/util/List;Ljava/lang/String;)V", "getChasisNumber", "()Ljava/lang/String;", "getCreateDate", "getDocumentSerialCode", "()Ljava/util/List;", "getDocumentSerialNumber", "getId", "getOwnerDifferentFromDriver", "()Z", "getOwnerIdentityNumber", "getOwnerIdentityType", "getPlateCityCode", "getPlateNumber", "getPolicies", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Policies;", "getRegistryDate", "getUpdateDate", "component1", "component10", "component11", "component12", "component13", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class VehicleSaveInfo {

    @k(name = "chasisNumber")
    private final String chasisNumber;

    @k(name = "createDate")
    private final String createDate;

    @k(name = "documentSerialCode")
    private final List<Object> documentSerialCode;

    @k(name = "documentSerialNumber")
    private final List<Object> documentSerialNumber;

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
    private final Policies policies;

    @k(name = "registryDate")
    private final List<Object> registryDate;

    @k(name = "updateDate")
    private final String updateDate;

    public VehicleSaveInfo(String chasisNumber, String createDate, List<? extends Object> documentSerialCode, List<? extends Object> documentSerialNumber, String id2, boolean z10, String ownerIdentityNumber, String ownerIdentityType, String plateCityCode, String plateNumber, Policies policies, List<? extends Object> registryDate, String updateDate) {
        h.f(chasisNumber, "chasisNumber");
        h.f(createDate, "createDate");
        h.f(documentSerialCode, "documentSerialCode");
        h.f(documentSerialNumber, "documentSerialNumber");
        h.f(id2, "id");
        h.f(ownerIdentityNumber, "ownerIdentityNumber");
        h.f(ownerIdentityType, "ownerIdentityType");
        h.f(plateCityCode, "plateCityCode");
        h.f(plateNumber, "plateNumber");
        h.f(registryDate, "registryDate");
        h.f(updateDate, "updateDate");
        this.chasisNumber = chasisNumber;
        this.createDate = createDate;
        this.documentSerialCode = documentSerialCode;
        this.documentSerialNumber = documentSerialNumber;
        this.id = id2;
        this.ownerDifferentFromDriver = z10;
        this.ownerIdentityNumber = ownerIdentityNumber;
        this.ownerIdentityType = ownerIdentityType;
        this.plateCityCode = plateCityCode;
        this.plateNumber = plateNumber;
        this.policies = policies;
        this.registryDate = registryDate;
        this.updateDate = updateDate;
    }

    public /* synthetic */ VehicleSaveInfo(String str, String str2, List list, List list2, String str3, boolean z10, String str4, String str5, String str6, String str7, Policies policies, List list3, String str8, int r29, d dVar) {
        this(str, str2, list, list2, str3, (r29 & 32) != 0 ? false : z10, str4, str5, str6, str7, policies, list3, str8);
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
    public final Policies getPolicies() {
        return this.policies;
    }

    public final List<Object> component12() {
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

    public final List<Object> component3() {
        return this.documentSerialCode;
    }

    public final List<Object> component4() {
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

    public final VehicleSaveInfo copy(String chasisNumber, String createDate, List<? extends Object> documentSerialCode, List<? extends Object> documentSerialNumber, String id2, boolean ownerDifferentFromDriver, String ownerIdentityNumber, String ownerIdentityType, String plateCityCode, String plateNumber, Policies policies, List<? extends Object> registryDate, String updateDate) {
        h.f(chasisNumber, "chasisNumber");
        h.f(createDate, "createDate");
        h.f(documentSerialCode, "documentSerialCode");
        h.f(documentSerialNumber, "documentSerialNumber");
        h.f(id2, "id");
        h.f(ownerIdentityNumber, "ownerIdentityNumber");
        h.f(ownerIdentityType, "ownerIdentityType");
        h.f(plateCityCode, "plateCityCode");
        h.f(plateNumber, "plateNumber");
        h.f(registryDate, "registryDate");
        h.f(updateDate, "updateDate");
        return new VehicleSaveInfo(chasisNumber, createDate, documentSerialCode, documentSerialNumber, id2, ownerDifferentFromDriver, ownerIdentityNumber, ownerIdentityType, plateCityCode, plateNumber, policies, registryDate, updateDate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VehicleSaveInfo)) {
            return false;
        }
        VehicleSaveInfo vehicleSaveInfo = (VehicleSaveInfo) other;
        return h.a(this.chasisNumber, vehicleSaveInfo.chasisNumber) && h.a(this.createDate, vehicleSaveInfo.createDate) && h.a(this.documentSerialCode, vehicleSaveInfo.documentSerialCode) && h.a(this.documentSerialNumber, vehicleSaveInfo.documentSerialNumber) && h.a(this.id, vehicleSaveInfo.id) && this.ownerDifferentFromDriver == vehicleSaveInfo.ownerDifferentFromDriver && h.a(this.ownerIdentityNumber, vehicleSaveInfo.ownerIdentityNumber) && h.a(this.ownerIdentityType, vehicleSaveInfo.ownerIdentityType) && h.a(this.plateCityCode, vehicleSaveInfo.plateCityCode) && h.a(this.plateNumber, vehicleSaveInfo.plateNumber) && h.a(this.policies, vehicleSaveInfo.policies) && h.a(this.registryDate, vehicleSaveInfo.registryDate) && h.a(this.updateDate, vehicleSaveInfo.updateDate);
    }

    public final String getChasisNumber() {
        return this.chasisNumber;
    }

    public final String getCreateDate() {
        return this.createDate;
    }

    public final List<Object> getDocumentSerialCode() {
        return this.documentSerialCode;
    }

    public final List<Object> getDocumentSerialNumber() {
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

    public final Policies getPolicies() {
        return this.policies;
    }

    public final List<Object> getRegistryDate() {
        return this.registryDate;
    }

    public final String getUpdateDate() {
        return this.updateDate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int r02 = a.a(this.id, c.c(this.documentSerialNumber, c.c(this.documentSerialCode, a.a(this.createDate, this.chasisNumber.hashCode() * 31, 31), 31), 31), 31);
        boolean z10 = this.ownerDifferentFromDriver;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        int r03 = a.a(this.plateNumber, a.a(this.plateCityCode, a.a(this.ownerIdentityType, a.a(this.ownerIdentityNumber, (r02 + r12) * 31, 31), 31), 31), 31);
        Policies policies = this.policies;
        return this.updateDate.hashCode() + c.c(this.registryDate, (r03 + (policies == null ? 0 : policies.hashCode())) * 31, 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("VehicleSaveInfo(chasisNumber=");
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
