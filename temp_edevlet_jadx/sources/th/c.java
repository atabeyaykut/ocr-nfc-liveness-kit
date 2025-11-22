package th;

import kotlin.jvm.internal.h;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CheckClarificationModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.TwoFactorModel;

/* loaded from: classes3.dex */
public final class c implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<TwoFactorModel>> f15734a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f15735b;

    /* renamed from: c, reason: collision with root package name */
    public final TwoFactorModel f15736c;

    /* renamed from: d, reason: collision with root package name */
    public final r0.b<Result<CheckClarificationModel>> f15737d;

    /* renamed from: e, reason: collision with root package name */
    public final CheckClarificationModel f15738e;

    public c() {
        this(null, false, null, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(r0.b<? extends Result<TwoFactorModel>> twoFactorStatusState, boolean z10, TwoFactorModel twoFactorStatus, r0.b<? extends Result<CheckClarificationModel>> clarificationControlState, CheckClarificationModel clarificationControl) {
        h.f(twoFactorStatusState, "twoFactorStatusState");
        h.f(twoFactorStatus, "twoFactorStatus");
        h.f(clarificationControlState, "clarificationControlState");
        h.f(clarificationControl, "clarificationControl");
        this.f15734a = twoFactorStatusState;
        this.f15735b = z10;
        this.f15736c = twoFactorStatus;
        this.f15737d = clarificationControlState;
        this.f15738e = clarificationControl;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ c(r0.b bVar, boolean z10, TwoFactorModel twoFactorModel, r0.b bVar2, CheckClarificationModel checkClarificationModel, int r17, kotlin.jvm.internal.d dVar) {
        int r02 = r17 & 1;
        r0.b bVar3 = d1.f13733b;
        this(r02 != 0 ? bVar3 : bVar, (r17 & 2) != 0 ? false : z10, (r17 & 4) != 0 ? new TwoFactorModel(null, 0, false, 7, null) : twoFactorModel, (r17 & 8) == 0 ? bVar2 : bVar3, (r17 & 16) != 0 ? new CheckClarificationModel(null, 0, 0, false, 15, null) : checkClarificationModel);
    }

    public static c copy$default(c cVar, r0.b twoFactorStatusState, boolean z10, TwoFactorModel twoFactorModel, r0.b bVar, CheckClarificationModel checkClarificationModel, int r92, Object obj) {
        if ((r92 & 1) != 0) {
            twoFactorStatusState = cVar.f15734a;
        }
        if ((r92 & 2) != 0) {
            z10 = cVar.f15735b;
        }
        boolean z11 = z10;
        if ((r92 & 4) != 0) {
            twoFactorModel = cVar.f15736c;
        }
        TwoFactorModel twoFactorStatus = twoFactorModel;
        if ((r92 & 8) != 0) {
            bVar = cVar.f15737d;
        }
        r0.b clarificationControlState = bVar;
        if ((r92 & 16) != 0) {
            checkClarificationModel = cVar.f15738e;
        }
        CheckClarificationModel clarificationControl = checkClarificationModel;
        cVar.getClass();
        h.f(twoFactorStatusState, "twoFactorStatusState");
        h.f(twoFactorStatus, "twoFactorStatus");
        h.f(clarificationControlState, "clarificationControlState");
        h.f(clarificationControl, "clarificationControl");
        return new c(twoFactorStatusState, z11, twoFactorStatus, clarificationControlState, clarificationControl);
    }

    public final r0.b<Result<TwoFactorModel>> component1() {
        return this.f15734a;
    }

    public final boolean component2() {
        return this.f15735b;
    }

    public final TwoFactorModel component3() {
        return this.f15736c;
    }

    public final r0.b<Result<CheckClarificationModel>> component4() {
        return this.f15737d;
    }

    public final CheckClarificationModel component5() {
        return this.f15738e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return h.a(this.f15734a, cVar.f15734a) && this.f15735b == cVar.f15735b && h.a(this.f15736c, cVar.f15736c) && h.a(this.f15737d, cVar.f15737d) && h.a(this.f15738e, cVar.f15738e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = this.f15734a.hashCode() * 31;
        boolean z10 = this.f15735b;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return this.f15738e.hashCode() + androidx.browser.browseractions.b.d(this.f15737d, (this.f15736c.hashCode() + ((r02 + r12) * 31)) * 31, 31);
    }

    public final String toString() {
        return "MobileAccidentOnboardingState(twoFactorStatusState=" + this.f15734a + ", isTwoFactorCall=" + this.f15735b + ", twoFactorStatus=" + this.f15736c + ", clarificationControlState=" + this.f15737d + ", clarificationControl=" + this.f15738e + ')';
    }
}
