package nh;

import kotlin.jvm.internal.h;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRDraftModel;

/* loaded from: classes3.dex */
public final class b implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<ScanQRDraftModel>> f11006a;

    /* renamed from: b, reason: collision with root package name */
    public final ScanQRDraftModel f11007b;

    /* JADX WARN: Multi-variable type inference failed */
    public b() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(r0.b<? extends Result<ScanQRDraftModel>> scanQRDraftState, ScanQRDraftModel scanQRDraftResult) {
        h.f(scanQRDraftState, "scanQRDraftState");
        h.f(scanQRDraftResult, "scanQRDraftResult");
        this.f11006a = scanQRDraftState;
        this.f11007b = scanQRDraftResult;
    }

    public /* synthetic */ b(r0.b bVar, ScanQRDraftModel scanQRDraftModel, int r10, kotlin.jvm.internal.d dVar) {
        this((r10 & 1) != 0 ? d1.f13733b : bVar, (r10 & 2) != 0 ? new ScanQRDraftModel(null, 0, 0, false, 15, null) : scanQRDraftModel);
    }

    public static b copy$default(b bVar, r0.b scanQRDraftState, ScanQRDraftModel scanQRDraftResult, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            scanQRDraftState = bVar.f11006a;
        }
        if ((r32 & 2) != 0) {
            scanQRDraftResult = bVar.f11007b;
        }
        bVar.getClass();
        h.f(scanQRDraftState, "scanQRDraftState");
        h.f(scanQRDraftResult, "scanQRDraftResult");
        return new b(scanQRDraftState, scanQRDraftResult);
    }

    public final r0.b<Result<ScanQRDraftModel>> component1() {
        return this.f11006a;
    }

    public final ScanQRDraftModel component2() {
        return this.f11007b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return h.a(this.f11006a, bVar.f11006a) && h.a(this.f11007b, bVar.f11007b);
    }

    public final int hashCode() {
        return this.f11007b.hashCode() + (this.f11006a.hashCode() * 31);
    }

    public final String toString() {
        return "MobileAccidentMatchedReportState(scanQRDraftState=" + this.f11006a + ", scanQRDraftResult=" + this.f11007b + ')';
    }
}
