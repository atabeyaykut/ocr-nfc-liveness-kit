package kh;

import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.LocationSaveModel;

/* loaded from: classes3.dex */
public final class d implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<LocationSaveModel>> f8948a;

    /* renamed from: b, reason: collision with root package name */
    public final LocationSaveModel f8949b;

    /* JADX WARN: Multi-variable type inference failed */
    public d() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(r0.b<? extends Result<LocationSaveModel>> locationSaveState, LocationSaveModel locationSaveData) {
        kotlin.jvm.internal.h.f(locationSaveState, "locationSaveState");
        kotlin.jvm.internal.h.f(locationSaveData, "locationSaveData");
        this.f8948a = locationSaveState;
        this.f8949b = locationSaveData;
    }

    public /* synthetic */ d(r0.b bVar, LocationSaveModel locationSaveModel, int r10, kotlin.jvm.internal.d dVar) {
        this((r10 & 1) != 0 ? d1.f13733b : bVar, (r10 & 2) != 0 ? new LocationSaveModel(null, 0, 0, false, 15, null) : locationSaveModel);
    }

    public static d copy$default(d dVar, r0.b locationSaveState, LocationSaveModel locationSaveData, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            locationSaveState = dVar.f8948a;
        }
        if ((r32 & 2) != 0) {
            locationSaveData = dVar.f8949b;
        }
        dVar.getClass();
        kotlin.jvm.internal.h.f(locationSaveState, "locationSaveState");
        kotlin.jvm.internal.h.f(locationSaveData, "locationSaveData");
        return new d(locationSaveState, locationSaveData);
    }

    public final r0.b<Result<LocationSaveModel>> component1() {
        return this.f8948a;
    }

    public final LocationSaveModel component2() {
        return this.f8949b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return kotlin.jvm.internal.h.a(this.f8948a, dVar.f8948a) && kotlin.jvm.internal.h.a(this.f8949b, dVar.f8949b);
    }

    public final int hashCode() {
        return this.f8949b.hashCode() + (this.f8948a.hashCode() * 31);
    }

    public final String toString() {
        return "MobileAccidentMapState(locationSaveState=" + this.f8948a + ", locationSaveData=" + this.f8949b + ')';
    }
}
