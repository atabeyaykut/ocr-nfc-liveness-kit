package ch;

import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DashPointSaveModel;

/* loaded from: classes3.dex */
public final class k implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<DashPointSaveModel>> f2444a;

    /* renamed from: b, reason: collision with root package name */
    public final DashPointSaveModel f2445b;

    /* JADX WARN: Multi-variable type inference failed */
    public k() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public k(r0.b<? extends Result<DashPointSaveModel>> dashPointSaveState, DashPointSaveModel dashPointSaveData) {
        kotlin.jvm.internal.h.f(dashPointSaveState, "dashPointSaveState");
        kotlin.jvm.internal.h.f(dashPointSaveData, "dashPointSaveData");
        this.f2444a = dashPointSaveState;
        this.f2445b = dashPointSaveData;
    }

    public /* synthetic */ k(r0.b bVar, DashPointSaveModel dashPointSaveModel, int r10, kotlin.jvm.internal.d dVar) {
        this((r10 & 1) != 0 ? d1.f13733b : bVar, (r10 & 2) != 0 ? new DashPointSaveModel(null, 0, 0, false, 15, null) : dashPointSaveModel);
    }

    public static k copy$default(k kVar, r0.b dashPointSaveState, DashPointSaveModel dashPointSaveData, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            dashPointSaveState = kVar.f2444a;
        }
        if ((r32 & 2) != 0) {
            dashPointSaveData = kVar.f2445b;
        }
        kVar.getClass();
        kotlin.jvm.internal.h.f(dashPointSaveState, "dashPointSaveState");
        kotlin.jvm.internal.h.f(dashPointSaveData, "dashPointSaveData");
        return new k(dashPointSaveState, dashPointSaveData);
    }

    public final r0.b<Result<DashPointSaveModel>> component1() {
        return this.f2444a;
    }

    public final DashPointSaveModel component2() {
        return this.f2445b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return kotlin.jvm.internal.h.a(this.f2444a, kVar.f2444a) && kotlin.jvm.internal.h.a(this.f2445b, kVar.f2445b);
    }

    public final int hashCode() {
        return this.f2445b.hashCode() + (this.f2444a.hashCode() * 31);
    }

    public final String toString() {
        return "MobileAccidentDashPointState(dashPointSaveState=" + this.f2444a + ", dashPointSaveData=" + this.f2445b + ')';
    }
}
