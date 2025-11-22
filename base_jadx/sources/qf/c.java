package qf;

import java.util.List;
import m9.v;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class c implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<List<ServiceModelRealm>>> f13608a;

    /* renamed from: b, reason: collision with root package name */
    public final r0.b<Result<ServiceModelRealm>> f13609b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f13610c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f13611d;

    /* renamed from: e, reason: collision with root package name */
    public final ServiceModelRealm f13612e;
    public final List<ServiceModelRealm> f;

    public c() {
        this(null, null, false, false, null, null, 63, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(r0.b<? extends Result<List<ServiceModelRealm>>> editorServiceListState, r0.b<? extends Result<ServiceModelRealm>> favoriteServiceResultState, boolean z10, boolean z11, ServiceModelRealm favoriteServiceResult, List<? extends ServiceModelRealm> editorServiceList) {
        kotlin.jvm.internal.h.f(editorServiceListState, "editorServiceListState");
        kotlin.jvm.internal.h.f(favoriteServiceResultState, "favoriteServiceResultState");
        kotlin.jvm.internal.h.f(favoriteServiceResult, "favoriteServiceResult");
        kotlin.jvm.internal.h.f(editorServiceList, "editorServiceList");
        this.f13608a = editorServiceListState;
        this.f13609b = favoriteServiceResultState;
        this.f13610c = z10;
        this.f13611d = z11;
        this.f13612e = favoriteServiceResult;
        this.f = editorServiceList;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ c(r0.b bVar, r0.b bVar2, boolean z10, boolean z11, ServiceModelRealm serviceModelRealm, List list, int r11, kotlin.jvm.internal.d dVar) {
        int r12 = r11 & 1;
        r0.b bVar3 = d1.f13733b;
        this(r12 != 0 ? bVar3 : bVar, (r11 & 2) == 0 ? bVar2 : bVar3, (r11 & 4) != 0 ? false : z10, (r11 & 8) != 0 ? false : z11, (r11 & 16) != 0 ? new ServiceModelRealm() : serviceModelRealm, (r11 & 32) != 0 ? v.f10173a : list);
    }

    public static c copy$default(c cVar, r0.b editorServiceListState, r0.b bVar, boolean z10, boolean z11, ServiceModelRealm serviceModelRealm, List list, int r11, Object obj) {
        if ((r11 & 1) != 0) {
            editorServiceListState = cVar.f13608a;
        }
        if ((r11 & 2) != 0) {
            bVar = cVar.f13609b;
        }
        r0.b favoriteServiceResultState = bVar;
        if ((r11 & 4) != 0) {
            z10 = cVar.f13610c;
        }
        boolean z12 = z10;
        if ((r11 & 8) != 0) {
            z11 = cVar.f13611d;
        }
        boolean z13 = z11;
        if ((r11 & 16) != 0) {
            serviceModelRealm = cVar.f13612e;
        }
        ServiceModelRealm favoriteServiceResult = serviceModelRealm;
        if ((r11 & 32) != 0) {
            list = cVar.f;
        }
        List editorServiceList = list;
        cVar.getClass();
        kotlin.jvm.internal.h.f(editorServiceListState, "editorServiceListState");
        kotlin.jvm.internal.h.f(favoriteServiceResultState, "favoriteServiceResultState");
        kotlin.jvm.internal.h.f(favoriteServiceResult, "favoriteServiceResult");
        kotlin.jvm.internal.h.f(editorServiceList, "editorServiceList");
        return new c(editorServiceListState, favoriteServiceResultState, z12, z13, favoriteServiceResult, editorServiceList);
    }

    public final r0.b<Result<List<ServiceModelRealm>>> component1() {
        return this.f13608a;
    }

    public final r0.b<Result<ServiceModelRealm>> component2() {
        return this.f13609b;
    }

    public final boolean component3() {
        return this.f13610c;
    }

    public final boolean component4() {
        return this.f13611d;
    }

    public final ServiceModelRealm component5() {
        return this.f13612e;
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
        return kotlin.jvm.internal.h.a(this.f13608a, cVar.f13608a) && kotlin.jvm.internal.h.a(this.f13609b, cVar.f13609b) && this.f13610c == cVar.f13610c && this.f13611d == cVar.f13611d && kotlin.jvm.internal.h.a(this.f13612e, cVar.f13612e) && kotlin.jvm.internal.h.a(this.f, cVar.f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = androidx.browser.browseractions.b.d(this.f13609b, this.f13608a.hashCode() * 31, 31);
        boolean z10 = this.f13610c;
        int r22 = z10;
        if (z10 != 0) {
            r22 = 1;
        }
        int r03 = (r02 + r22) * 31;
        boolean z11 = this.f13611d;
        return this.f.hashCode() + ((this.f13612e.hashCode() + ((r03 + (z11 ? 1 : z11 ? 1 : 0)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("EditorServicesState(editorServiceListState=");
        sb2.append(this.f13608a);
        sb2.append(", favoriteServiceResultState=");
        sb2.append(this.f13609b);
        sb2.append(", favoriteOperation=");
        sb2.append(this.f13610c);
        sb2.append(", unFavoriteOperation=");
        sb2.append(this.f13611d);
        sb2.append(", favoriteServiceResult=");
        sb2.append(this.f13612e);
        sb2.append(", editorServiceList=");
        return android.support.v4.media.a.j(sb2, this.f, ')');
    }
}
