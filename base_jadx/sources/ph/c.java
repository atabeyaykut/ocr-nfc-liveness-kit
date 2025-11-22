package ph;

import kotlin.jvm.internal.h;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlConfirmationRequestModel;

/* loaded from: classes3.dex */
public final class c implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<ControlConfirmationRequestModel>> f13240a;

    /* renamed from: b, reason: collision with root package name */
    public final ControlConfirmationRequestModel f13241b;

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(r0.b<? extends Result<ControlConfirmationRequestModel>> controlConfirmationResult, ControlConfirmationRequestModel controlConfirmationData) {
        h.f(controlConfirmationResult, "controlConfirmationResult");
        h.f(controlConfirmationData, "controlConfirmationData");
        this.f13240a = controlConfirmationResult;
        this.f13241b = controlConfirmationData;
    }

    public /* synthetic */ c(r0.b bVar, ControlConfirmationRequestModel controlConfirmationRequestModel, int r10, kotlin.jvm.internal.d dVar) {
        this((r10 & 1) != 0 ? d1.f13733b : bVar, (r10 & 2) != 0 ? new ControlConfirmationRequestModel(null, 0, 0, false, 15, null) : controlConfirmationRequestModel);
    }

    public static c copy$default(c cVar, r0.b controlConfirmationResult, ControlConfirmationRequestModel controlConfirmationData, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            controlConfirmationResult = cVar.f13240a;
        }
        if ((r32 & 2) != 0) {
            controlConfirmationData = cVar.f13241b;
        }
        cVar.getClass();
        h.f(controlConfirmationResult, "controlConfirmationResult");
        h.f(controlConfirmationData, "controlConfirmationData");
        return new c(controlConfirmationResult, controlConfirmationData);
    }

    public final r0.b<Result<ControlConfirmationRequestModel>> component1() {
        return this.f13240a;
    }

    public final ControlConfirmationRequestModel component2() {
        return this.f13241b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return h.a(this.f13240a, cVar.f13240a) && h.a(this.f13241b, cVar.f13241b);
    }

    public final int hashCode() {
        return this.f13241b.hashCode() + (this.f13240a.hashCode() * 31);
    }

    public final String toString() {
        return "MobileAccidentWaitingApprovalState(controlConfirmationResult=" + this.f13240a + ", controlConfirmationData=" + this.f13241b + ')';
    }
}
