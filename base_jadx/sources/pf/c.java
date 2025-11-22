package pf;

import java.util.List;
import m9.v;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class c implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<List<ServiceModelRealm>>> f13154a;

    /* renamed from: b, reason: collision with root package name */
    public final List<ServiceModelRealm> f13155b;

    /* renamed from: c, reason: collision with root package name */
    public final r0.b<Result<ServiceModelRealm>> f13156c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f13157d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f13158e;
    public final ServiceModelRealm f;

    public c() {
        this(null, null, null, false, false, null, 63, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(r0.b<? extends Result<List<ServiceModelRealm>>> electronicDocServiceListState, List<? extends ServiceModelRealm> electronicDocServiceList, r0.b<? extends Result<ServiceModelRealm>> favoriteServiceResultState, boolean z10, boolean z11, ServiceModelRealm favoriteServiceResult) {
        kotlin.jvm.internal.h.f(electronicDocServiceListState, "electronicDocServiceListState");
        kotlin.jvm.internal.h.f(electronicDocServiceList, "electronicDocServiceList");
        kotlin.jvm.internal.h.f(favoriteServiceResultState, "favoriteServiceResultState");
        kotlin.jvm.internal.h.f(favoriteServiceResult, "favoriteServiceResult");
        this.f13154a = electronicDocServiceListState;
        this.f13155b = electronicDocServiceList;
        this.f13156c = favoriteServiceResultState;
        this.f13157d = z10;
        this.f13158e = z11;
        this.f = favoriteServiceResult;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ c(r0.b bVar, List list, r0.b bVar2, boolean z10, boolean z11, ServiceModelRealm serviceModelRealm, int r11, kotlin.jvm.internal.d dVar) {
        int r12 = r11 & 1;
        r0.b bVar3 = d1.f13733b;
        this(r12 != 0 ? bVar3 : bVar, (r11 & 2) != 0 ? v.f10173a : list, (r11 & 4) == 0 ? bVar2 : bVar3, (r11 & 8) != 0 ? false : z10, (r11 & 16) != 0 ? false : z11, (r11 & 32) != 0 ? new ServiceModelRealm() : serviceModelRealm);
    }

    public static c copy$default(c cVar, r0.b electronicDocServiceListState, List list, r0.b bVar, boolean z10, boolean z11, ServiceModelRealm serviceModelRealm, int r11, Object obj) {
        if ((r11 & 1) != 0) {
            electronicDocServiceListState = cVar.f13154a;
        }
        if ((r11 & 2) != 0) {
            list = cVar.f13155b;
        }
        List electronicDocServiceList = list;
        if ((r11 & 4) != 0) {
            bVar = cVar.f13156c;
        }
        r0.b favoriteServiceResultState = bVar;
        if ((r11 & 8) != 0) {
            z10 = cVar.f13157d;
        }
        boolean z12 = z10;
        if ((r11 & 16) != 0) {
            z11 = cVar.f13158e;
        }
        boolean z13 = z11;
        if ((r11 & 32) != 0) {
            serviceModelRealm = cVar.f;
        }
        ServiceModelRealm favoriteServiceResult = serviceModelRealm;
        cVar.getClass();
        kotlin.jvm.internal.h.f(electronicDocServiceListState, "electronicDocServiceListState");
        kotlin.jvm.internal.h.f(electronicDocServiceList, "electronicDocServiceList");
        kotlin.jvm.internal.h.f(favoriteServiceResultState, "favoriteServiceResultState");
        kotlin.jvm.internal.h.f(favoriteServiceResult, "favoriteServiceResult");
        return new c(electronicDocServiceListState, electronicDocServiceList, favoriteServiceResultState, z12, z13, favoriteServiceResult);
    }

    public final r0.b<Result<List<ServiceModelRealm>>> component1() {
        return this.f13154a;
    }

    public final List<ServiceModelRealm> component2() {
        return this.f13155b;
    }

    public final r0.b<Result<ServiceModelRealm>> component3() {
        return this.f13156c;
    }

    public final boolean component4() {
        return this.f13157d;
    }

    public final boolean component5() {
        return this.f13158e;
    }

    public final ServiceModelRealm component6() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return kotlin.jvm.internal.h.a(this.f13154a, cVar.f13154a) && kotlin.jvm.internal.h.a(this.f13155b, cVar.f13155b) && kotlin.jvm.internal.h.a(this.f13156c, cVar.f13156c) && this.f13157d == cVar.f13157d && this.f13158e == cVar.f13158e && kotlin.jvm.internal.h.a(this.f, cVar.f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = androidx.browser.browseractions.b.d(this.f13156c, androidx.camera.camera2.internal.c.c(this.f13155b, this.f13154a.hashCode() * 31, 31), 31);
        boolean z10 = this.f13157d;
        int r22 = z10;
        if (z10 != 0) {
            r22 = 1;
        }
        int r03 = (r02 + r22) * 31;
        boolean z11 = this.f13158e;
        return this.f.hashCode() + ((r03 + (z11 ? 1 : z11 ? 1 : 0)) * 31);
    }

    public final String toString() {
        return "ElectronicDocServicesState(electronicDocServiceListState=" + this.f13154a + ", electronicDocServiceList=" + this.f13155b + ", favoriteServiceResultState=" + this.f13156c + ", favoriteOperation=" + this.f13157d + ", unFavoriteOperation=" + this.f13158e + ", favoriteServiceResult=" + this.f + ')';
    }
}
