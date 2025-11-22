package nf;

import java.util.List;
import m9.v;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class d implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<List<ServiceModelRealm>>> f10904a;

    /* renamed from: b, reason: collision with root package name */
    public final r0.b<Result<ServiceModelRealm>> f10905b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10906c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f10907d;

    /* renamed from: e, reason: collision with root package name */
    public final ServiceModelRealm f10908e;
    public final List<ServiceModelRealm> f;

    public d() {
        this(null, null, false, false, null, null, 63, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(r0.b<? extends Result<List<ServiceModelRealm>>> barcodeServiceListState, r0.b<? extends Result<ServiceModelRealm>> favoriteServiceResultState, boolean z10, boolean z11, ServiceModelRealm favoriteServiceResult, List<? extends ServiceModelRealm> barcodeServiceList) {
        kotlin.jvm.internal.h.f(barcodeServiceListState, "barcodeServiceListState");
        kotlin.jvm.internal.h.f(favoriteServiceResultState, "favoriteServiceResultState");
        kotlin.jvm.internal.h.f(favoriteServiceResult, "favoriteServiceResult");
        kotlin.jvm.internal.h.f(barcodeServiceList, "barcodeServiceList");
        this.f10904a = barcodeServiceListState;
        this.f10905b = favoriteServiceResultState;
        this.f10906c = z10;
        this.f10907d = z11;
        this.f10908e = favoriteServiceResult;
        this.f = barcodeServiceList;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ d(r0.b bVar, r0.b bVar2, boolean z10, boolean z11, ServiceModelRealm serviceModelRealm, List list, int r11, kotlin.jvm.internal.d dVar) {
        int r12 = r11 & 1;
        r0.b bVar3 = d1.f13733b;
        this(r12 != 0 ? bVar3 : bVar, (r11 & 2) == 0 ? bVar2 : bVar3, (r11 & 4) != 0 ? false : z10, (r11 & 8) != 0 ? false : z11, (r11 & 16) != 0 ? new ServiceModelRealm() : serviceModelRealm, (r11 & 32) != 0 ? v.f10173a : list);
    }

    public static d copy$default(d dVar, r0.b barcodeServiceListState, r0.b bVar, boolean z10, boolean z11, ServiceModelRealm serviceModelRealm, List list, int r11, Object obj) {
        if ((r11 & 1) != 0) {
            barcodeServiceListState = dVar.f10904a;
        }
        if ((r11 & 2) != 0) {
            bVar = dVar.f10905b;
        }
        r0.b favoriteServiceResultState = bVar;
        if ((r11 & 4) != 0) {
            z10 = dVar.f10906c;
        }
        boolean z12 = z10;
        if ((r11 & 8) != 0) {
            z11 = dVar.f10907d;
        }
        boolean z13 = z11;
        if ((r11 & 16) != 0) {
            serviceModelRealm = dVar.f10908e;
        }
        ServiceModelRealm favoriteServiceResult = serviceModelRealm;
        if ((r11 & 32) != 0) {
            list = dVar.f;
        }
        List barcodeServiceList = list;
        dVar.getClass();
        kotlin.jvm.internal.h.f(barcodeServiceListState, "barcodeServiceListState");
        kotlin.jvm.internal.h.f(favoriteServiceResultState, "favoriteServiceResultState");
        kotlin.jvm.internal.h.f(favoriteServiceResult, "favoriteServiceResult");
        kotlin.jvm.internal.h.f(barcodeServiceList, "barcodeServiceList");
        return new d(barcodeServiceListState, favoriteServiceResultState, z12, z13, favoriteServiceResult, barcodeServiceList);
    }

    public final r0.b<Result<List<ServiceModelRealm>>> component1() {
        return this.f10904a;
    }

    public final r0.b<Result<ServiceModelRealm>> component2() {
        return this.f10905b;
    }

    public final boolean component3() {
        return this.f10906c;
    }

    public final boolean component4() {
        return this.f10907d;
    }

    public final ServiceModelRealm component5() {
        return this.f10908e;
    }

    public final List<ServiceModelRealm> component6() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return kotlin.jvm.internal.h.a(this.f10904a, dVar.f10904a) && kotlin.jvm.internal.h.a(this.f10905b, dVar.f10905b) && this.f10906c == dVar.f10906c && this.f10907d == dVar.f10907d && kotlin.jvm.internal.h.a(this.f10908e, dVar.f10908e) && kotlin.jvm.internal.h.a(this.f, dVar.f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = androidx.browser.browseractions.b.d(this.f10905b, this.f10904a.hashCode() * 31, 31);
        boolean z10 = this.f10906c;
        int r22 = z10;
        if (z10 != 0) {
            r22 = 1;
        }
        int r03 = (r02 + r22) * 31;
        boolean z11 = this.f10907d;
        return this.f.hashCode() + ((this.f10908e.hashCode() + ((r03 + (z11 ? 1 : z11 ? 1 : 0)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("BarcodeServicesState(barcodeServiceListState=");
        sb2.append(this.f10904a);
        sb2.append(", favoriteServiceResultState=");
        sb2.append(this.f10905b);
        sb2.append(", favoriteOperation=");
        sb2.append(this.f10906c);
        sb2.append(", unFavoriteOperation=");
        sb2.append(this.f10907d);
        sb2.append(", favoriteServiceResult=");
        sb2.append(this.f10908e);
        sb2.append(", barcodeServiceList=");
        return android.support.v4.media.a.j(sb2, this.f, ')');
    }
}
