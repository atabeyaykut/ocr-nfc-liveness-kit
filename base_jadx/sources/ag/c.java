package ag;

import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class c implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<InstitutionModelRealm>> f288a;

    /* renamed from: b, reason: collision with root package name */
    public final InstitutionModelRealm f289b;

    /* renamed from: c, reason: collision with root package name */
    public final r0.b<Result<ServiceModelRealm>> f290c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f291d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f292e;
    public final ServiceModelRealm f;

    public c() {
        this(null, null, null, false, false, null, 63, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(r0.b<? extends Result<InstitutionModelRealm>> institutionDetailState, InstitutionModelRealm institutionDetail, r0.b<? extends Result<ServiceModelRealm>> favoriteServiceResultState, boolean z10, boolean z11, ServiceModelRealm favoriteServiceResult) {
        kotlin.jvm.internal.h.f(institutionDetailState, "institutionDetailState");
        kotlin.jvm.internal.h.f(institutionDetail, "institutionDetail");
        kotlin.jvm.internal.h.f(favoriteServiceResultState, "favoriteServiceResultState");
        kotlin.jvm.internal.h.f(favoriteServiceResult, "favoriteServiceResult");
        this.f288a = institutionDetailState;
        this.f289b = institutionDetail;
        this.f290c = favoriteServiceResultState;
        this.f291d = z10;
        this.f292e = z11;
        this.f = favoriteServiceResult;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ c(r0.b bVar, InstitutionModelRealm institutionModelRealm, r0.b bVar2, boolean z10, boolean z11, ServiceModelRealm serviceModelRealm, int r11, kotlin.jvm.internal.d dVar) {
        int r12 = r11 & 1;
        r0.b bVar3 = d1.f13733b;
        this(r12 != 0 ? bVar3 : bVar, (r11 & 2) != 0 ? new InstitutionModelRealm() : institutionModelRealm, (r11 & 4) == 0 ? bVar2 : bVar3, (r11 & 8) != 0 ? false : z10, (r11 & 16) != 0 ? false : z11, (r11 & 32) != 0 ? new ServiceModelRealm() : serviceModelRealm);
    }

    public static c copy$default(c cVar, r0.b institutionDetailState, InstitutionModelRealm institutionModelRealm, r0.b bVar, boolean z10, boolean z11, ServiceModelRealm serviceModelRealm, int r11, Object obj) {
        if ((r11 & 1) != 0) {
            institutionDetailState = cVar.f288a;
        }
        if ((r11 & 2) != 0) {
            institutionModelRealm = cVar.f289b;
        }
        InstitutionModelRealm institutionDetail = institutionModelRealm;
        if ((r11 & 4) != 0) {
            bVar = cVar.f290c;
        }
        r0.b favoriteServiceResultState = bVar;
        if ((r11 & 8) != 0) {
            z10 = cVar.f291d;
        }
        boolean z12 = z10;
        if ((r11 & 16) != 0) {
            z11 = cVar.f292e;
        }
        boolean z13 = z11;
        if ((r11 & 32) != 0) {
            serviceModelRealm = cVar.f;
        }
        ServiceModelRealm favoriteServiceResult = serviceModelRealm;
        cVar.getClass();
        kotlin.jvm.internal.h.f(institutionDetailState, "institutionDetailState");
        kotlin.jvm.internal.h.f(institutionDetail, "institutionDetail");
        kotlin.jvm.internal.h.f(favoriteServiceResultState, "favoriteServiceResultState");
        kotlin.jvm.internal.h.f(favoriteServiceResult, "favoriteServiceResult");
        return new c(institutionDetailState, institutionDetail, favoriteServiceResultState, z12, z13, favoriteServiceResult);
    }

    public final r0.b<Result<InstitutionModelRealm>> component1() {
        return this.f288a;
    }

    public final InstitutionModelRealm component2() {
        return this.f289b;
    }

    public final r0.b<Result<ServiceModelRealm>> component3() {
        return this.f290c;
    }

    public final boolean component4() {
        return this.f291d;
    }

    public final boolean component5() {
        return this.f292e;
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
        return kotlin.jvm.internal.h.a(this.f288a, cVar.f288a) && kotlin.jvm.internal.h.a(this.f289b, cVar.f289b) && kotlin.jvm.internal.h.a(this.f290c, cVar.f290c) && this.f291d == cVar.f291d && this.f292e == cVar.f292e && kotlin.jvm.internal.h.a(this.f, cVar.f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = androidx.browser.browseractions.b.d(this.f290c, (this.f289b.hashCode() + (this.f288a.hashCode() * 31)) * 31, 31);
        boolean z10 = this.f291d;
        int r22 = z10;
        if (z10 != 0) {
            r22 = 1;
        }
        int r03 = (r02 + r22) * 31;
        boolean z11 = this.f292e;
        return this.f.hashCode() + ((r03 + (z11 ? 1 : z11 ? 1 : 0)) * 31);
    }

    public final String toString() {
        return "InstitutionDetailState(institutionDetailState=" + this.f288a + ", institutionDetail=" + this.f289b + ", favoriteServiceResultState=" + this.f290c + ", favoriteOperation=" + this.f291d + ", unFavoriteOperation=" + this.f292e + ", favoriteServiceResult=" + this.f + ')';
    }
}
