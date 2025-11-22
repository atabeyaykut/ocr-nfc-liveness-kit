package mh;

import kotlin.jvm.internal.h;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRModel;

/* loaded from: classes3.dex */
public final class b implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<ScanQRModel>> f10441a;

    /* renamed from: b, reason: collision with root package name */
    public final ScanQRModel f10442b;

    /* JADX WARN: Multi-variable type inference failed */
    public b() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(r0.b<? extends Result<ScanQRModel>> scanQRState, ScanQRModel scanQRResponse) {
        h.f(scanQRState, "scanQRState");
        h.f(scanQRResponse, "scanQRResponse");
        this.f10441a = scanQRState;
        this.f10442b = scanQRResponse;
    }

    public /* synthetic */ b(r0.b bVar, ScanQRModel scanQRModel, int r10, kotlin.jvm.internal.d dVar) {
        this((r10 & 1) != 0 ? d1.f13733b : bVar, (r10 & 2) != 0 ? new ScanQRModel(null, 0, 0, false, 15, null) : scanQRModel);
    }

    public static b copy$default(b bVar, r0.b scanQRState, ScanQRModel scanQRResponse, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            scanQRState = bVar.f10441a;
        }
        if ((r32 & 2) != 0) {
            scanQRResponse = bVar.f10442b;
        }
        bVar.getClass();
        h.f(scanQRState, "scanQRState");
        h.f(scanQRResponse, "scanQRResponse");
        return new b(scanQRState, scanQRResponse);
    }

    public final r0.b<Result<ScanQRModel>> component1() {
        return this.f10441a;
    }

    public final ScanQRModel component2() {
        return this.f10442b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return h.a(this.f10441a, bVar.f10441a) && h.a(this.f10442b, bVar.f10442b);
    }

    public final int hashCode() {
        return this.f10442b.hashCode() + (this.f10441a.hashCode() * 31);
    }

    public final String toString() {
        return "MobileAccidentQRScanState(scanQRState=" + this.f10441a + ", scanQRResponse=" + this.f10442b + ')';
    }
}
