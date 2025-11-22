package lh;

import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlQRScanModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.GenerateQRModel;

/* loaded from: classes3.dex */
public final class d implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<GenerateQRModel>> f9832a;

    /* renamed from: b, reason: collision with root package name */
    public final GenerateQRModel f9833b;

    /* renamed from: c, reason: collision with root package name */
    public final r0.b<Result<ControlQRScanModel>> f9834c;

    /* renamed from: d, reason: collision with root package name */
    public final ControlQRScanModel f9835d;

    public d() {
        this(null, null, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(r0.b<? extends Result<GenerateQRModel>> generateQRState, GenerateQRModel generateQRData, r0.b<? extends Result<ControlQRScanModel>> checkQRState, ControlQRScanModel checkQRData) {
        kotlin.jvm.internal.h.f(generateQRState, "generateQRState");
        kotlin.jvm.internal.h.f(generateQRData, "generateQRData");
        kotlin.jvm.internal.h.f(checkQRState, "checkQRState");
        kotlin.jvm.internal.h.f(checkQRData, "checkQRData");
        this.f9832a = generateQRState;
        this.f9833b = generateQRData;
        this.f9834c = checkQRState;
        this.f9835d = checkQRData;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ d(r0.b bVar, GenerateQRModel generateQRModel, r0.b bVar2, ControlQRScanModel controlQRScanModel, int r13, kotlin.jvm.internal.d dVar) {
        int r14 = r13 & 1;
        d1 d1Var = d1.f13733b;
        this(r14 != 0 ? d1Var : bVar, (r13 & 2) != 0 ? new GenerateQRModel(null, 0, 0, false, 15, null) : generateQRModel, (r13 & 4) != 0 ? d1Var : bVar2, (r13 & 8) != 0 ? new ControlQRScanModel(null, 0, 0, false, 15, null) : controlQRScanModel);
    }

    public static d copy$default(d dVar, r0.b generateQRState, GenerateQRModel generateQRData, r0.b checkQRState, ControlQRScanModel checkQRData, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            generateQRState = dVar.f9832a;
        }
        if ((r52 & 2) != 0) {
            generateQRData = dVar.f9833b;
        }
        if ((r52 & 4) != 0) {
            checkQRState = dVar.f9834c;
        }
        if ((r52 & 8) != 0) {
            checkQRData = dVar.f9835d;
        }
        dVar.getClass();
        kotlin.jvm.internal.h.f(generateQRState, "generateQRState");
        kotlin.jvm.internal.h.f(generateQRData, "generateQRData");
        kotlin.jvm.internal.h.f(checkQRState, "checkQRState");
        kotlin.jvm.internal.h.f(checkQRData, "checkQRData");
        return new d(generateQRState, generateQRData, checkQRState, checkQRData);
    }

    public final r0.b<Result<GenerateQRModel>> component1() {
        return this.f9832a;
    }

    public final GenerateQRModel component2() {
        return this.f9833b;
    }

    public final r0.b<Result<ControlQRScanModel>> component3() {
        return this.f9834c;
    }

    public final ControlQRScanModel component4() {
        return this.f9835d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return kotlin.jvm.internal.h.a(this.f9832a, dVar.f9832a) && kotlin.jvm.internal.h.a(this.f9833b, dVar.f9833b) && kotlin.jvm.internal.h.a(this.f9834c, dVar.f9834c) && kotlin.jvm.internal.h.a(this.f9835d, dVar.f9835d);
    }

    public final int hashCode() {
        return this.f9835d.hashCode() + androidx.browser.browseractions.b.d(this.f9834c, (this.f9833b.hashCode() + (this.f9832a.hashCode() * 31)) * 31, 31);
    }

    public final String toString() {
        return "MobileAccidentGenerateQRState(generateQRState=" + this.f9832a + ", generateQRData=" + this.f9833b + ", checkQRState=" + this.f9834c + ", checkQRData=" + this.f9835d + ')';
    }
}
