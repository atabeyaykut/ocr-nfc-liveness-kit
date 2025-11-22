package yg;

import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AgreementModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CheckClarificationModel;

/* loaded from: classes3.dex */
public final class c implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<AgreementModel>> f19701a;

    /* renamed from: b, reason: collision with root package name */
    public final r0.b<Result<CheckClarificationModel>> f19702b;

    /* renamed from: c, reason: collision with root package name */
    public final AgreementModel f19703c;

    /* renamed from: d, reason: collision with root package name */
    public final CheckClarificationModel f19704d;

    public c() {
        this(null, null, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(r0.b<? extends Result<AgreementModel>> agreementState, r0.b<? extends Result<CheckClarificationModel>> confirmationState, AgreementModel agreementText, CheckClarificationModel confirmationResponse) {
        kotlin.jvm.internal.h.f(agreementState, "agreementState");
        kotlin.jvm.internal.h.f(confirmationState, "confirmationState");
        kotlin.jvm.internal.h.f(agreementText, "agreementText");
        kotlin.jvm.internal.h.f(confirmationResponse, "confirmationResponse");
        this.f19701a = agreementState;
        this.f19702b = confirmationState;
        this.f19703c = agreementText;
        this.f19704d = confirmationResponse;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ c(r0.b bVar, r0.b bVar2, AgreementModel agreementModel, CheckClarificationModel checkClarificationModel, int r12, kotlin.jvm.internal.d dVar) {
        int r13 = r12 & 1;
        d1 d1Var = d1.f13733b;
        this(r13 != 0 ? d1Var : bVar, (r12 & 2) != 0 ? d1Var : bVar2, (r12 & 4) != 0 ? new AgreementModel(null, 0, 0, false, 15, null) : agreementModel, (r12 & 8) != 0 ? new CheckClarificationModel(null, 0, 0, false, 15, null) : checkClarificationModel);
    }

    public static c copy$default(c cVar, r0.b agreementState, r0.b confirmationState, AgreementModel agreementText, CheckClarificationModel confirmationResponse, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            agreementState = cVar.f19701a;
        }
        if ((r52 & 2) != 0) {
            confirmationState = cVar.f19702b;
        }
        if ((r52 & 4) != 0) {
            agreementText = cVar.f19703c;
        }
        if ((r52 & 8) != 0) {
            confirmationResponse = cVar.f19704d;
        }
        cVar.getClass();
        kotlin.jvm.internal.h.f(agreementState, "agreementState");
        kotlin.jvm.internal.h.f(confirmationState, "confirmationState");
        kotlin.jvm.internal.h.f(agreementText, "agreementText");
        kotlin.jvm.internal.h.f(confirmationResponse, "confirmationResponse");
        return new c(agreementState, confirmationState, agreementText, confirmationResponse);
    }

    public final r0.b<Result<AgreementModel>> component1() {
        return this.f19701a;
    }

    public final r0.b<Result<CheckClarificationModel>> component2() {
        return this.f19702b;
    }

    public final AgreementModel component3() {
        return this.f19703c;
    }

    public final CheckClarificationModel component4() {
        return this.f19704d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return kotlin.jvm.internal.h.a(this.f19701a, cVar.f19701a) && kotlin.jvm.internal.h.a(this.f19702b, cVar.f19702b) && kotlin.jvm.internal.h.a(this.f19703c, cVar.f19703c) && kotlin.jvm.internal.h.a(this.f19704d, cVar.f19704d);
    }

    public final int hashCode() {
        return this.f19704d.hashCode() + ((this.f19703c.hashCode() + androidx.browser.browseractions.b.d(this.f19702b, this.f19701a.hashCode() * 31, 31)) * 31);
    }

    public final String toString() {
        return "MobileAccidentAgreementState(agreementState=" + this.f19701a + ", confirmationState=" + this.f19702b + ", agreementText=" + this.f19703c + ", confirmationResponse=" + this.f19704d + ')';
    }
}
