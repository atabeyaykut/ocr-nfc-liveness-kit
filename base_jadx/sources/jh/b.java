package jh;

import kotlin.jvm.internal.h;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DriverLicenceModel;

/* loaded from: classes3.dex */
public final class b implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<DriverLicenceModel>> f8519a;

    /* renamed from: b, reason: collision with root package name */
    public final DriverLicenceModel f8520b;

    /* JADX WARN: Multi-variable type inference failed */
    public b() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(r0.b<? extends Result<DriverLicenceModel>> introductionState, DriverLicenceModel introductionModel) {
        h.f(introductionState, "introductionState");
        h.f(introductionModel, "introductionModel");
        this.f8519a = introductionState;
        this.f8520b = introductionModel;
    }

    public /* synthetic */ b(r0.b bVar, DriverLicenceModel driverLicenceModel, int r10, kotlin.jvm.internal.d dVar) {
        this((r10 & 1) != 0 ? d1.f13733b : bVar, (r10 & 2) != 0 ? new DriverLicenceModel(null, 0, 0, false, 15, null) : driverLicenceModel);
    }

    public static b copy$default(b bVar, r0.b introductionState, DriverLicenceModel introductionModel, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            introductionState = bVar.f8519a;
        }
        if ((r32 & 2) != 0) {
            introductionModel = bVar.f8520b;
        }
        bVar.getClass();
        h.f(introductionState, "introductionState");
        h.f(introductionModel, "introductionModel");
        return new b(introductionState, introductionModel);
    }

    public final r0.b<Result<DriverLicenceModel>> component1() {
        return this.f8519a;
    }

    public final DriverLicenceModel component2() {
        return this.f8520b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return h.a(this.f8519a, bVar.f8519a) && h.a(this.f8520b, bVar.f8520b);
    }

    public final int hashCode() {
        return this.f8520b.hashCode() + (this.f8519a.hashCode() * 31);
    }

    public final String toString() {
        return "MobileAccidentIntroductionState(introductionState=" + this.f8519a + ", introductionModel=" + this.f8520b + ')';
    }
}
