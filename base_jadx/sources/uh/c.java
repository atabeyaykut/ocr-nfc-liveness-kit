package uh;

import io.realm.q0;
import kotlin.jvm.internal.h;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy;

/* loaded from: classes3.dex */
public final class c implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<q0<AccidentReportPolicy>>> f18166a;

    /* renamed from: b, reason: collision with root package name */
    public final q0<AccidentReportPolicy> f18167b;

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(r0.b<? extends Result<q0<AccidentReportPolicy>>> carListState, q0<AccidentReportPolicy> carList) {
        h.f(carListState, "carListState");
        h.f(carList, "carList");
        this.f18166a = carListState;
        this.f18167b = carList;
    }

    public /* synthetic */ c(r0.b bVar, q0 q0Var, int r32, kotlin.jvm.internal.d dVar) {
        this((r32 & 1) != 0 ? d1.f13733b : bVar, (r32 & 2) != 0 ? new q0() : q0Var);
    }

    public static c copy$default(c cVar, r0.b carListState, q0 carList, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            carListState = cVar.f18166a;
        }
        if ((r32 & 2) != 0) {
            carList = cVar.f18167b;
        }
        cVar.getClass();
        h.f(carListState, "carListState");
        h.f(carList, "carList");
        return new c(carListState, carList);
    }

    public final r0.b<Result<q0<AccidentReportPolicy>>> component1() {
        return this.f18166a;
    }

    public final q0<AccidentReportPolicy> component2() {
        return this.f18167b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return h.a(this.f18166a, cVar.f18166a) && h.a(this.f18167b, cVar.f18167b);
    }

    public final int hashCode() {
        return this.f18167b.hashCode() + (this.f18166a.hashCode() * 31);
    }

    public final String toString() {
        return "MobileAccidentPolicyState(carListState=" + this.f18166a + ", carList=" + this.f18167b + ')';
    }
}
