package sf;

import java.util.List;
import m9.v;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class c implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<List<ServiceModelRealm>>> f15404a;

    /* renamed from: b, reason: collision with root package name */
    public final r0.b<Result<ServiceModelRealm>> f15405b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f15406c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f15407d;

    /* renamed from: e, reason: collision with root package name */
    public final ServiceModelRealm f15408e;
    public final List<ServiceModelRealm> f;

    public c() {
        this(null, null, false, false, null, null, 63, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(r0.b<? extends Result<List<ServiceModelRealm>>> mostUsedServiceListState, r0.b<? extends Result<ServiceModelRealm>> favoriteServiceResultState, boolean z10, boolean z11, ServiceModelRealm favoriteServiceResult, List<? extends ServiceModelRealm> mostUsedServiceList) {
        kotlin.jvm.internal.h.f(mostUsedServiceListState, "mostUsedServiceListState");
        kotlin.jvm.internal.h.f(favoriteServiceResultState, "favoriteServiceResultState");
        kotlin.jvm.internal.h.f(favoriteServiceResult, "favoriteServiceResult");
        kotlin.jvm.internal.h.f(mostUsedServiceList, "mostUsedServiceList");
        this.f15404a = mostUsedServiceListState;
        this.f15405b = favoriteServiceResultState;
        this.f15406c = z10;
        this.f15407d = z11;
        this.f15408e = favoriteServiceResult;
        this.f = mostUsedServiceList;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ c(r0.b bVar, r0.b bVar2, boolean z10, boolean z11, ServiceModelRealm serviceModelRealm, List list, int r11, kotlin.jvm.internal.d dVar) {
        int r12 = r11 & 1;
        r0.b bVar3 = d1.f13733b;
        this(r12 != 0 ? bVar3 : bVar, (r11 & 2) == 0 ? bVar2 : bVar3, (r11 & 4) != 0 ? false : z10, (r11 & 8) != 0 ? false : z11, (r11 & 16) != 0 ? new ServiceModelRealm() : serviceModelRealm, (r11 & 32) != 0 ? v.f10173a : list);
    }

    public static c copy$default(c cVar, r0.b mostUsedServiceListState, r0.b bVar, boolean z10, boolean z11, ServiceModelRealm serviceModelRealm, List list, int r11, Object obj) {
        if ((r11 & 1) != 0) {
            mostUsedServiceListState = cVar.f15404a;
        }
        if ((r11 & 2) != 0) {
            bVar = cVar.f15405b;
        }
        r0.b favoriteServiceResultState = bVar;
        if ((r11 & 4) != 0) {
            z10 = cVar.f15406c;
        }
        boolean z12 = z10;
        if ((r11 & 8) != 0) {
            z11 = cVar.f15407d;
        }
        boolean z13 = z11;
        if ((r11 & 16) != 0) {
            serviceModelRealm = cVar.f15408e;
        }
        ServiceModelRealm favoriteServiceResult = serviceModelRealm;
        if ((r11 & 32) != 0) {
            list = cVar.f;
        }
        List mostUsedServiceList = list;
        cVar.getClass();
        kotlin.jvm.internal.h.f(mostUsedServiceListState, "mostUsedServiceListState");
        kotlin.jvm.internal.h.f(favoriteServiceResultState, "favoriteServiceResultState");
        kotlin.jvm.internal.h.f(favoriteServiceResult, "favoriteServiceResult");
        kotlin.jvm.internal.h.f(mostUsedServiceList, "mostUsedServiceList");
        return new c(mostUsedServiceListState, favoriteServiceResultState, z12, z13, favoriteServiceResult, mostUsedServiceList);
    }

    public final r0.b<Result<List<ServiceModelRealm>>> component1() {
        return this.f15404a;
    }

    public final r0.b<Result<ServiceModelRealm>> component2() {
        return this.f15405b;
    }

    public final boolean component3() {
        return this.f15406c;
    }

    public final boolean component4() {
        return this.f15407d;
    }

    public final ServiceModelRealm component5() {
        return this.f15408e;
    }

    public final List<ServiceModelRealm> component6() {
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
        return kotlin.jvm.internal.h.a(this.f15404a, cVar.f15404a) && kotlin.jvm.internal.h.a(this.f15405b, cVar.f15405b) && this.f15406c == cVar.f15406c && this.f15407d == cVar.f15407d && kotlin.jvm.internal.h.a(this.f15408e, cVar.f15408e) && kotlin.jvm.internal.h.a(this.f, cVar.f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = androidx.browser.browseractions.b.d(this.f15405b, this.f15404a.hashCode() * 31, 31);
        boolean z10 = this.f15406c;
        int r22 = z10;
        if (z10 != 0) {
            r22 = 1;
        }
        int r03 = (r02 + r22) * 31;
        boolean z11 = this.f15407d;
        return this.f.hashCode() + ((this.f15408e.hashCode() + ((r03 + (z11 ? 1 : z11 ? 1 : 0)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("MostUsedServicesState(mostUsedServiceListState=");
        sb2.append(this.f15404a);
        sb2.append(", favoriteServiceResultState=");
        sb2.append(this.f15405b);
        sb2.append(", favoriteOperation=");
        sb2.append(this.f15406c);
        sb2.append(", unFavoriteOperation=");
        sb2.append(this.f15407d);
        sb2.append(", favoriteServiceResult=");
        sb2.append(this.f15408e);
        sb2.append(", mostUsedServiceList=");
        return android.support.v4.media.a.j(sb2, this.f, ')');
    }
}
