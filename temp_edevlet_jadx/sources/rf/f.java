package rf;

import java.util.List;
import m9.v;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class f implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<List<ServiceModelRealm>>> f14647a;

    /* renamed from: b, reason: collision with root package name */
    public final r0.b<Result<ServiceModelRealm>> f14648b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f14649c;

    /* renamed from: d, reason: collision with root package name */
    public final ServiceModelRealm f14650d;

    /* renamed from: e, reason: collision with root package name */
    public final List<ServiceModelRealm> f14651e;

    public f() {
        this(null, null, false, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f(r0.b<? extends Result<List<ServiceModelRealm>>> favoriteServiceListState, r0.b<? extends Result<ServiceModelRealm>> favoriteServiceResultState, boolean z10, ServiceModelRealm favoriteOperationResult, List<? extends ServiceModelRealm> favoriteServiceList) {
        kotlin.jvm.internal.h.f(favoriteServiceListState, "favoriteServiceListState");
        kotlin.jvm.internal.h.f(favoriteServiceResultState, "favoriteServiceResultState");
        kotlin.jvm.internal.h.f(favoriteOperationResult, "favoriteOperationResult");
        kotlin.jvm.internal.h.f(favoriteServiceList, "favoriteServiceList");
        this.f14647a = favoriteServiceListState;
        this.f14648b = favoriteServiceResultState;
        this.f14649c = z10;
        this.f14650d = favoriteOperationResult;
        this.f14651e = favoriteServiceList;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ f(r0.b bVar, r0.b bVar2, boolean z10, ServiceModelRealm serviceModelRealm, List list, int r92, kotlin.jvm.internal.d dVar) {
        int r10 = r92 & 1;
        r0.b bVar3 = d1.f13733b;
        this(r10 != 0 ? bVar3 : bVar, (r92 & 2) == 0 ? bVar2 : bVar3, (r92 & 4) != 0 ? false : z10, (r92 & 8) != 0 ? new ServiceModelRealm() : serviceModelRealm, (r92 & 16) != 0 ? v.f10173a : list);
    }

    public static f copy$default(f fVar, r0.b favoriteServiceListState, r0.b bVar, boolean z10, ServiceModelRealm serviceModelRealm, List list, int r92, Object obj) {
        if ((r92 & 1) != 0) {
            favoriteServiceListState = fVar.f14647a;
        }
        if ((r92 & 2) != 0) {
            bVar = fVar.f14648b;
        }
        r0.b favoriteServiceResultState = bVar;
        if ((r92 & 4) != 0) {
            z10 = fVar.f14649c;
        }
        boolean z11 = z10;
        if ((r92 & 8) != 0) {
            serviceModelRealm = fVar.f14650d;
        }
        ServiceModelRealm favoriteOperationResult = serviceModelRealm;
        if ((r92 & 16) != 0) {
            list = fVar.f14651e;
        }
        List favoriteServiceList = list;
        fVar.getClass();
        kotlin.jvm.internal.h.f(favoriteServiceListState, "favoriteServiceListState");
        kotlin.jvm.internal.h.f(favoriteServiceResultState, "favoriteServiceResultState");
        kotlin.jvm.internal.h.f(favoriteOperationResult, "favoriteOperationResult");
        kotlin.jvm.internal.h.f(favoriteServiceList, "favoriteServiceList");
        return new f(favoriteServiceListState, favoriteServiceResultState, z11, favoriteOperationResult, favoriteServiceList);
    }

    public final r0.b<Result<List<ServiceModelRealm>>> component1() {
        return this.f14647a;
    }

    public final r0.b<Result<ServiceModelRealm>> component2() {
        return this.f14648b;
    }

    public final boolean component3() {
        return this.f14649c;
    }

    public final ServiceModelRealm component4() {
        return this.f14650d;
    }

    public final List<ServiceModelRealm> component5() {
        return this.f14651e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return kotlin.jvm.internal.h.a(this.f14647a, fVar.f14647a) && kotlin.jvm.internal.h.a(this.f14648b, fVar.f14648b) && this.f14649c == fVar.f14649c && kotlin.jvm.internal.h.a(this.f14650d, fVar.f14650d) && kotlin.jvm.internal.h.a(this.f14651e, fVar.f14651e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = androidx.browser.browseractions.b.d(this.f14648b, this.f14647a.hashCode() * 31, 31);
        boolean z10 = this.f14649c;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return this.f14651e.hashCode() + ((this.f14650d.hashCode() + ((r02 + r12) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("FavoriteServicesState(favoriteServiceListState=");
        sb2.append(this.f14647a);
        sb2.append(", favoriteServiceResultState=");
        sb2.append(this.f14648b);
        sb2.append(", unFavoriteOperation=");
        sb2.append(this.f14649c);
        sb2.append(", favoriteOperationResult=");
        sb2.append(this.f14650d);
        sb2.append(", favoriteServiceList=");
        return android.support.v4.media.a.j(sb2, this.f14651e, ')');
    }
}
