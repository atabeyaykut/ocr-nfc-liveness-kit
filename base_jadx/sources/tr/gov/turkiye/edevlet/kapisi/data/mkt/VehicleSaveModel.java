package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.browser.browseractions.b;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\bHÆ\u0003J3\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0014\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\nR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;", "", "vehicleSaveData", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveData;", "isQueueService", "", "login", "isSuccess", "", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveData;IIZ)V", "()I", "()Z", "getLogin", "getVehicleSaveData", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveData;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class VehicleSaveModel {

    @k(name = "kuyrukMu")
    private final int isQueueService;

    @k(name = "return")
    private final boolean isSuccess;

    @k(name = "login")
    private final int login;

    @k(name = "data")
    private final VehicleSaveData vehicleSaveData;

    public VehicleSaveModel() {
        this(null, 0, 0, false, 15, null);
    }

    public VehicleSaveModel(VehicleSaveData vehicleSaveData, int r22, int r32, boolean z10) {
        this.vehicleSaveData = vehicleSaveData;
        this.isQueueService = r22;
        this.login = r32;
        this.isSuccess = z10;
    }

    public /* synthetic */ VehicleSaveModel(VehicleSaveData vehicleSaveData, int r32, int r42, boolean z10, int r6, d dVar) {
        this((r6 & 1) != 0 ? null : vehicleSaveData, (r6 & 2) != 0 ? 0 : r32, (r6 & 4) != 0 ? 0 : r42, (r6 & 8) != 0 ? false : z10);
    }

    public static /* synthetic */ VehicleSaveModel copy$default(VehicleSaveModel vehicleSaveModel, VehicleSaveData vehicleSaveData, int r22, int r32, boolean z10, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            vehicleSaveData = vehicleSaveModel.vehicleSaveData;
        }
        if ((r52 & 2) != 0) {
            r22 = vehicleSaveModel.isQueueService;
        }
        if ((r52 & 4) != 0) {
            r32 = vehicleSaveModel.login;
        }
        if ((r52 & 8) != 0) {
            z10 = vehicleSaveModel.isSuccess;
        }
        return vehicleSaveModel.copy(vehicleSaveData, r22, r32, z10);
    }

    /* renamed from: component1, reason: from getter */
    public final VehicleSaveData getVehicleSaveData() {
        return this.vehicleSaveData;
    }

    /* renamed from: component2, reason: from getter */
    public final int getIsQueueService() {
        return this.isQueueService;
    }

    /* renamed from: component3, reason: from getter */
    public final int getLogin() {
        return this.login;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final VehicleSaveModel copy(VehicleSaveData vehicleSaveData, int isQueueService, int login, boolean isSuccess) {
        return new VehicleSaveModel(vehicleSaveData, isQueueService, login, isSuccess);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VehicleSaveModel)) {
            return false;
        }
        VehicleSaveModel vehicleSaveModel = (VehicleSaveModel) other;
        return h.a(this.vehicleSaveData, vehicleSaveModel.vehicleSaveData) && this.isQueueService == vehicleSaveModel.isQueueService && this.login == vehicleSaveModel.login && this.isSuccess == vehicleSaveModel.isSuccess;
    }

    public final int getLogin() {
        return this.login;
    }

    public final VehicleSaveData getVehicleSaveData() {
        return this.vehicleSaveData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        VehicleSaveData vehicleSaveData = this.vehicleSaveData;
        int r02 = (((((vehicleSaveData == null ? 0 : vehicleSaveData.hashCode()) * 31) + this.isQueueService) * 31) + this.login) * 31;
        boolean z10 = this.isSuccess;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return r02 + r12;
    }

    public final int isQueueService() {
        return this.isQueueService;
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("VehicleSaveModel(vehicleSaveData=");
        sb2.append(this.vehicleSaveData);
        sb2.append(", isQueueService=");
        sb2.append(this.isQueueService);
        sb2.append(", login=");
        sb2.append(this.login);
        sb2.append(", isSuccess=");
        return b.f(sb2, this.isSuccess, ')');
    }
}
