package dh;

import org.bouncycastle.asn1.eac.CertificateBody;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DriverSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleListModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleSaveModel;

/* loaded from: classes3.dex */
public final class e implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<VehicleListModel>> f4936a;

    /* renamed from: b, reason: collision with root package name */
    public final r0.b<Result<DriverSaveModel>> f4937b;

    /* renamed from: c, reason: collision with root package name */
    public final r0.b<Result<VehicleSaveModel>> f4938c;

    /* renamed from: d, reason: collision with root package name */
    public final String f4939d;

    /* renamed from: e, reason: collision with root package name */
    public final VehicleListModel f4940e;
    public final DriverSaveModel f;

    /* renamed from: g, reason: collision with root package name */
    public final VehicleSaveModel f4941g;

    public e() {
        this(null, null, null, null, null, null, null, CertificateBody.profileType, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(r0.b<? extends Result<VehicleListModel>> carListState, r0.b<? extends Result<DriverSaveModel>> saveDriverState, r0.b<? extends Result<VehicleSaveModel>> saveVehicleState, String operationType, VehicleListModel carList, DriverSaveModel saveDriverResponse, VehicleSaveModel saveVehicleResponse) {
        kotlin.jvm.internal.h.f(carListState, "carListState");
        kotlin.jvm.internal.h.f(saveDriverState, "saveDriverState");
        kotlin.jvm.internal.h.f(saveVehicleState, "saveVehicleState");
        kotlin.jvm.internal.h.f(operationType, "operationType");
        kotlin.jvm.internal.h.f(carList, "carList");
        kotlin.jvm.internal.h.f(saveDriverResponse, "saveDriverResponse");
        kotlin.jvm.internal.h.f(saveVehicleResponse, "saveVehicleResponse");
        this.f4936a = carListState;
        this.f4937b = saveDriverState;
        this.f4938c = saveVehicleState;
        this.f4939d = operationType;
        this.f4940e = carList;
        this.f = saveDriverResponse;
        this.f4941g = saveVehicleResponse;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ e(r0.b bVar, r0.b bVar2, r0.b bVar3, String str, VehicleListModel vehicleListModel, DriverSaveModel driverSaveModel, VehicleSaveModel vehicleSaveModel, int r21, kotlin.jvm.internal.d dVar) {
        int r02 = r21 & 1;
        r0.b bVar4 = d1.f13733b;
        this(r02 != 0 ? bVar4 : bVar, (r21 & 2) != 0 ? bVar4 : bVar2, (r21 & 4) == 0 ? bVar3 : bVar4, (r21 & 8) != 0 ? "SaveDriver" : str, (r21 & 16) != 0 ? new VehicleListModel(null, 0, 0, false, 15, null) : vehicleListModel, (r21 & 32) != 0 ? new DriverSaveModel(null, 0, 0, false, 15, null) : driverSaveModel, (r21 & 64) != 0 ? new VehicleSaveModel(null, 0, 0, false, 15, null) : vehicleSaveModel);
    }

    public static e copy$default(e eVar, r0.b carListState, r0.b bVar, r0.b bVar2, String str, VehicleListModel vehicleListModel, DriverSaveModel driverSaveModel, VehicleSaveModel vehicleSaveModel, int r13, Object obj) {
        if ((r13 & 1) != 0) {
            carListState = eVar.f4936a;
        }
        if ((r13 & 2) != 0) {
            bVar = eVar.f4937b;
        }
        r0.b saveDriverState = bVar;
        if ((r13 & 4) != 0) {
            bVar2 = eVar.f4938c;
        }
        r0.b saveVehicleState = bVar2;
        if ((r13 & 8) != 0) {
            str = eVar.f4939d;
        }
        String operationType = str;
        if ((r13 & 16) != 0) {
            vehicleListModel = eVar.f4940e;
        }
        VehicleListModel carList = vehicleListModel;
        if ((r13 & 32) != 0) {
            driverSaveModel = eVar.f;
        }
        DriverSaveModel saveDriverResponse = driverSaveModel;
        if ((r13 & 64) != 0) {
            vehicleSaveModel = eVar.f4941g;
        }
        VehicleSaveModel saveVehicleResponse = vehicleSaveModel;
        eVar.getClass();
        kotlin.jvm.internal.h.f(carListState, "carListState");
        kotlin.jvm.internal.h.f(saveDriverState, "saveDriverState");
        kotlin.jvm.internal.h.f(saveVehicleState, "saveVehicleState");
        kotlin.jvm.internal.h.f(operationType, "operationType");
        kotlin.jvm.internal.h.f(carList, "carList");
        kotlin.jvm.internal.h.f(saveDriverResponse, "saveDriverResponse");
        kotlin.jvm.internal.h.f(saveVehicleResponse, "saveVehicleResponse");
        return new e(carListState, saveDriverState, saveVehicleState, operationType, carList, saveDriverResponse, saveVehicleResponse);
    }

    public final r0.b<Result<VehicleListModel>> component1() {
        return this.f4936a;
    }

    public final r0.b<Result<DriverSaveModel>> component2() {
        return this.f4937b;
    }

    public final r0.b<Result<VehicleSaveModel>> component3() {
        return this.f4938c;
    }

    public final String component4() {
        return this.f4939d;
    }

    public final VehicleListModel component5() {
        return this.f4940e;
    }

    public final DriverSaveModel component6() {
        return this.f;
    }

    public final VehicleSaveModel component7() {
        return this.f4941g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return kotlin.jvm.internal.h.a(this.f4936a, eVar.f4936a) && kotlin.jvm.internal.h.a(this.f4937b, eVar.f4937b) && kotlin.jvm.internal.h.a(this.f4938c, eVar.f4938c) && kotlin.jvm.internal.h.a(this.f4939d, eVar.f4939d) && kotlin.jvm.internal.h.a(this.f4940e, eVar.f4940e) && kotlin.jvm.internal.h.a(this.f, eVar.f) && kotlin.jvm.internal.h.a(this.f4941g, eVar.f4941g);
    }

    public final int hashCode() {
        return this.f4941g.hashCode() + ((this.f.hashCode() + ((this.f4940e.hashCode() + androidx.room.util.a.a(this.f4939d, androidx.browser.browseractions.b.d(this.f4938c, androidx.browser.browseractions.b.d(this.f4937b, this.f4936a.hashCode() * 31, 31), 31), 31)) * 31)) * 31);
    }

    public final String toString() {
        return "MobileAccidentDriverState(carListState=" + this.f4936a + ", saveDriverState=" + this.f4937b + ", saveVehicleState=" + this.f4938c + ", operationType=" + this.f4939d + ", carList=" + this.f4940e + ", saveDriverResponse=" + this.f + ", saveVehicleResponse=" + this.f4941g + ')';
    }
}
