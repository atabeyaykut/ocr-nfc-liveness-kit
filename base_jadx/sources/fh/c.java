package fh;

import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DifferentVehicleSaveModel;

/* loaded from: classes3.dex */
public final class c implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<DifferentVehicleSaveModel>> f5682a;

    /* renamed from: b, reason: collision with root package name */
    public final DifferentVehicleSaveModel f5683b;

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(r0.b<? extends Result<DifferentVehicleSaveModel>> saveDifferentVehicleState, DifferentVehicleSaveModel saveDifferentVehicleResponse) {
        kotlin.jvm.internal.h.f(saveDifferentVehicleState, "saveDifferentVehicleState");
        kotlin.jvm.internal.h.f(saveDifferentVehicleResponse, "saveDifferentVehicleResponse");
        this.f5682a = saveDifferentVehicleState;
        this.f5683b = saveDifferentVehicleResponse;
    }

    public /* synthetic */ c(r0.b bVar, DifferentVehicleSaveModel differentVehicleSaveModel, int r10, kotlin.jvm.internal.d dVar) {
        this((r10 & 1) != 0 ? d1.f13733b : bVar, (r10 & 2) != 0 ? new DifferentVehicleSaveModel(null, 0, 0, false, 15, null) : differentVehicleSaveModel);
    }

    public static c copy$default(c cVar, r0.b saveDifferentVehicleState, DifferentVehicleSaveModel saveDifferentVehicleResponse, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            saveDifferentVehicleState = cVar.f5682a;
        }
        if ((r32 & 2) != 0) {
            saveDifferentVehicleResponse = cVar.f5683b;
        }
        cVar.getClass();
        kotlin.jvm.internal.h.f(saveDifferentVehicleState, "saveDifferentVehicleState");
        kotlin.jvm.internal.h.f(saveDifferentVehicleResponse, "saveDifferentVehicleResponse");
        return new c(saveDifferentVehicleState, saveDifferentVehicleResponse);
    }

    public final r0.b<Result<DifferentVehicleSaveModel>> component1() {
        return this.f5682a;
    }

    public final DifferentVehicleSaveModel component2() {
        return this.f5683b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return kotlin.jvm.internal.h.a(this.f5682a, cVar.f5682a) && kotlin.jvm.internal.h.a(this.f5683b, cVar.f5683b);
    }

    public final int hashCode() {
        return this.f5683b.hashCode() + (this.f5682a.hashCode() * 31);
    }

    public final String toString() {
        return "MobileAccidentDifferentVehicleState(saveDifferentVehicleState=" + this.f5682a + ", saveDifferentVehicleResponse=" + this.f5683b + ')';
    }
}
