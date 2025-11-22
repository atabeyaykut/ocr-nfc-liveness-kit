package vf;

import java.util.List;
import m9.v;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class b implements p {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f18586a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f18587b;

    /* renamed from: c, reason: collision with root package name */
    public final ServiceModelRealm f18588c;

    /* renamed from: d, reason: collision with root package name */
    public final List<ServiceModelRealm> f18589d;

    /* renamed from: e, reason: collision with root package name */
    public final r0.b<Result<ServiceModelRealm>> f18590e;
    public final r0.b<Result<List<ServiceModelRealm>>> f;

    public b() {
        this(false, false, null, null, null, null, 63, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(boolean z10, boolean z11, ServiceModelRealm favoriteServiceResult, List<? extends ServiceModelRealm> newestServiceList, r0.b<? extends Result<ServiceModelRealm>> favoriteServiceResultState, r0.b<? extends Result<List<ServiceModelRealm>>> newestServiceListState) {
        kotlin.jvm.internal.h.f(favoriteServiceResult, "favoriteServiceResult");
        kotlin.jvm.internal.h.f(newestServiceList, "newestServiceList");
        kotlin.jvm.internal.h.f(favoriteServiceResultState, "favoriteServiceResultState");
        kotlin.jvm.internal.h.f(newestServiceListState, "newestServiceListState");
        this.f18586a = z10;
        this.f18587b = z11;
        this.f18588c = favoriteServiceResult;
        this.f18589d = newestServiceList;
        this.f18590e = favoriteServiceResultState;
        this.f = newestServiceListState;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ b(boolean z10, boolean z11, ServiceModelRealm serviceModelRealm, List list, r0.b bVar, r0.b bVar2, int r11, kotlin.jvm.internal.d dVar) {
        boolean z12 = (r11 & 1) != 0 ? false : z10;
        boolean z13 = (r11 & 2) == 0 ? z11 : false;
        ServiceModelRealm serviceModelRealm2 = (r11 & 4) != 0 ? new ServiceModelRealm() : serviceModelRealm;
        List list2 = (r11 & 8) != 0 ? v.f10173a : list;
        int r52 = r11 & 16;
        d1 d1Var = d1.f13733b;
        this(z12, z13, serviceModelRealm2, list2, r52 != 0 ? d1Var : bVar, (r11 & 32) != 0 ? d1Var : bVar2);
    }

    public static b copy$default(b bVar, boolean z10, boolean z11, ServiceModelRealm serviceModelRealm, List list, r0.b bVar2, r0.b bVar3, int r11, Object obj) {
        if ((r11 & 1) != 0) {
            z10 = bVar.f18586a;
        }
        if ((r11 & 2) != 0) {
            z11 = bVar.f18587b;
        }
        boolean z12 = z11;
        if ((r11 & 4) != 0) {
            serviceModelRealm = bVar.f18588c;
        }
        ServiceModelRealm favoriteServiceResult = serviceModelRealm;
        if ((r11 & 8) != 0) {
            list = bVar.f18589d;
        }
        List newestServiceList = list;
        if ((r11 & 16) != 0) {
            bVar2 = bVar.f18590e;
        }
        r0.b favoriteServiceResultState = bVar2;
        if ((r11 & 32) != 0) {
            bVar3 = bVar.f;
        }
        r0.b newestServiceListState = bVar3;
        bVar.getClass();
        kotlin.jvm.internal.h.f(favoriteServiceResult, "favoriteServiceResult");
        kotlin.jvm.internal.h.f(newestServiceList, "newestServiceList");
        kotlin.jvm.internal.h.f(favoriteServiceResultState, "favoriteServiceResultState");
        kotlin.jvm.internal.h.f(newestServiceListState, "newestServiceListState");
        return new b(z10, z12, favoriteServiceResult, newestServiceList, favoriteServiceResultState, newestServiceListState);
    }

    public final boolean component1() {
        return this.f18586a;
    }

    public final boolean component2() {
        return this.f18587b;
    }

    public final ServiceModelRealm component3() {
        return this.f18588c;
    }

    public final List<ServiceModelRealm> component4() {
        return this.f18589d;
    }

    public final r0.b<Result<ServiceModelRealm>> component5() {
        return this.f18590e;
    }

    public final r0.b<Result<List<ServiceModelRealm>>> component6() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f18586a == bVar.f18586a && this.f18587b == bVar.f18587b && kotlin.jvm.internal.h.a(this.f18588c, bVar.f18588c) && kotlin.jvm.internal.h.a(this.f18589d, bVar.f18589d) && kotlin.jvm.internal.h.a(this.f18590e, bVar.f18590e) && kotlin.jvm.internal.h.a(this.f, bVar.f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        boolean z10 = this.f18586a;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        int r13 = r12 * 31;
        boolean z11 = this.f18587b;
        return this.f.hashCode() + androidx.browser.browseractions.b.d(this.f18590e, androidx.camera.camera2.internal.c.c(this.f18589d, (this.f18588c.hashCode() + ((r13 + (z11 ? 1 : z11 ? 1 : 0)) * 31)) * 31, 31), 31);
    }

    public final String toString() {
        return "NewestServicesState(favoriteOperation=" + this.f18586a + ", unFavoriteOperation=" + this.f18587b + ", favoriteServiceResult=" + this.f18588c + ", newestServiceList=" + this.f18589d + ", favoriteServiceResultState=" + this.f18590e + ", newestServiceListState=" + this.f + ')';
    }
}
