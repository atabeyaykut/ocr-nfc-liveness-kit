package be;

import java.util.List;
import m9.v;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeData;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyFieldModel;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;

/* loaded from: classes3.dex */
public final class h implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<List<BarcodeVerifyFieldModel>>> f1232a;

    /* renamed from: b, reason: collision with root package name */
    public final List<BarcodeVerifyFieldModel> f1233b;

    /* renamed from: c, reason: collision with root package name */
    public final r0.b<Result<BarcodeData>> f1234c;

    /* renamed from: d, reason: collision with root package name */
    public final BarcodeData f1235d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f1236e;

    public h() {
        this(null, null, null, null, false, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(r0.b<? extends Result<List<BarcodeVerifyFieldModel>>> dynamicFieldState, List<BarcodeVerifyFieldModel> list, r0.b<? extends Result<BarcodeData>> verifyDocState, BarcodeData barcodeData, boolean z10) {
        kotlin.jvm.internal.h.f(dynamicFieldState, "dynamicFieldState");
        kotlin.jvm.internal.h.f(verifyDocState, "verifyDocState");
        this.f1232a = dynamicFieldState;
        this.f1233b = list;
        this.f1234c = verifyDocState;
        this.f1235d = barcodeData;
        this.f1236e = z10;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ h(r0.b bVar, List list, r0.b bVar2, BarcodeData barcodeData, boolean z10, int r92, kotlin.jvm.internal.d dVar) {
        int r10 = r92 & 1;
        r0.b bVar3 = d1.f13733b;
        this(r10 != 0 ? bVar3 : bVar, (r92 & 2) != 0 ? v.f10173a : list, (r92 & 4) == 0 ? bVar2 : bVar3, (r92 & 8) != 0 ? new BarcodeData(null) : barcodeData, (r92 & 16) != 0 ? false : z10);
    }

    public static h copy$default(h hVar, r0.b dynamicFieldState, List list, r0.b bVar, BarcodeData barcodeData, boolean z10, int r92, Object obj) {
        if ((r92 & 1) != 0) {
            dynamicFieldState = hVar.f1232a;
        }
        if ((r92 & 2) != 0) {
            list = hVar.f1233b;
        }
        List list2 = list;
        if ((r92 & 4) != 0) {
            bVar = hVar.f1234c;
        }
        r0.b verifyDocState = bVar;
        if ((r92 & 8) != 0) {
            barcodeData = hVar.f1235d;
        }
        BarcodeData barcodeData2 = barcodeData;
        if ((r92 & 16) != 0) {
            z10 = hVar.f1236e;
        }
        hVar.getClass();
        kotlin.jvm.internal.h.f(dynamicFieldState, "dynamicFieldState");
        kotlin.jvm.internal.h.f(verifyDocState, "verifyDocState");
        return new h(dynamicFieldState, list2, verifyDocState, barcodeData2, z10);
    }

    public final r0.b<Result<List<BarcodeVerifyFieldModel>>> component1() {
        return this.f1232a;
    }

    public final List<BarcodeVerifyFieldModel> component2() {
        return this.f1233b;
    }

    public final r0.b<Result<BarcodeData>> component3() {
        return this.f1234c;
    }

    public final BarcodeData component4() {
        return this.f1235d;
    }

    public final boolean component5() {
        return this.f1236e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return kotlin.jvm.internal.h.a(this.f1232a, hVar.f1232a) && kotlin.jvm.internal.h.a(this.f1233b, hVar.f1233b) && kotlin.jvm.internal.h.a(this.f1234c, hVar.f1234c) && kotlin.jvm.internal.h.a(this.f1235d, hVar.f1235d) && this.f1236e == hVar.f1236e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = this.f1232a.hashCode() * 31;
        List<BarcodeVerifyFieldModel> list = this.f1233b;
        int r03 = androidx.browser.browseractions.b.d(this.f1234c, (r02 + (list == null ? 0 : list.hashCode())) * 31, 31);
        BarcodeData barcodeData = this.f1235d;
        int r04 = (r03 + (barcodeData != null ? barcodeData.hashCode() : 0)) * 31;
        boolean z10 = this.f1236e;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return r04 + r12;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ManualDynamicFieldState(dynamicFieldState=");
        sb2.append(this.f1232a);
        sb2.append(", dynamicFieldList=");
        sb2.append(this.f1233b);
        sb2.append(", verifyDocState=");
        sb2.append(this.f1234c);
        sb2.append(", barcodeDoc=");
        sb2.append(this.f1235d);
        sb2.append(", isVerificationOperation=");
        return androidx.browser.browseractions.b.f(sb2, this.f1236e, ')');
    }
}
