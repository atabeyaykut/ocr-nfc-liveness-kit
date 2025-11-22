package ng;

import java.util.List;
import m9.v;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceContent;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class i implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<List<SearchServiceContent>>> f10968a;

    /* renamed from: b, reason: collision with root package name */
    public final r0.b<Result<List<ServiceModelRealm>>> f10969b;

    /* renamed from: c, reason: collision with root package name */
    public final List<SearchServiceContent> f10970c;

    /* renamed from: d, reason: collision with root package name */
    public final List<ServiceModelRealm> f10971d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10972e;

    public i() {
        this(null, null, null, null, false, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i(r0.b<? extends Result<List<SearchServiceContent>>> searchResultSate, r0.b<? extends Result<List<ServiceModelRealm>>> editorChoiceState, List<SearchServiceContent> searchResultList, List<? extends ServiceModelRealm> editorChoiceList, boolean z10) {
        kotlin.jvm.internal.h.f(searchResultSate, "searchResultSate");
        kotlin.jvm.internal.h.f(editorChoiceState, "editorChoiceState");
        kotlin.jvm.internal.h.f(searchResultList, "searchResultList");
        kotlin.jvm.internal.h.f(editorChoiceList, "editorChoiceList");
        this.f10968a = searchResultSate;
        this.f10969b = editorChoiceState;
        this.f10970c = searchResultList;
        this.f10971d = editorChoiceList;
        this.f10972e = z10;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ i(r0.b bVar, r0.b bVar2, List list, List list2, boolean z10, int r92, kotlin.jvm.internal.d dVar) {
        int r10 = r92 & 1;
        r0.b bVar3 = d1.f13733b;
        r0.b bVar4 = r10 != 0 ? bVar3 : bVar;
        bVar3 = (r92 & 2) == 0 ? bVar2 : bVar3;
        int r42 = r92 & 4;
        v vVar = v.f10173a;
        this(bVar4, bVar3, r42 != 0 ? vVar : list, (r92 & 8) != 0 ? vVar : list2, (r92 & 16) != 0 ? false : z10);
    }

    public static i copy$default(i iVar, r0.b searchResultSate, r0.b bVar, List list, List list2, boolean z10, int r92, Object obj) {
        if ((r92 & 1) != 0) {
            searchResultSate = iVar.f10968a;
        }
        if ((r92 & 2) != 0) {
            bVar = iVar.f10969b;
        }
        r0.b editorChoiceState = bVar;
        if ((r92 & 4) != 0) {
            list = iVar.f10970c;
        }
        List searchResultList = list;
        if ((r92 & 8) != 0) {
            list2 = iVar.f10971d;
        }
        List editorChoiceList = list2;
        if ((r92 & 16) != 0) {
            z10 = iVar.f10972e;
        }
        iVar.getClass();
        kotlin.jvm.internal.h.f(searchResultSate, "searchResultSate");
        kotlin.jvm.internal.h.f(editorChoiceState, "editorChoiceState");
        kotlin.jvm.internal.h.f(searchResultList, "searchResultList");
        kotlin.jvm.internal.h.f(editorChoiceList, "editorChoiceList");
        return new i(searchResultSate, editorChoiceState, searchResultList, editorChoiceList, z10);
    }

    public final r0.b<Result<List<SearchServiceContent>>> component1() {
        return this.f10968a;
    }

    public final r0.b<Result<List<ServiceModelRealm>>> component2() {
        return this.f10969b;
    }

    public final List<SearchServiceContent> component3() {
        return this.f10970c;
    }

    public final List<ServiceModelRealm> component4() {
        return this.f10971d;
    }

    public final boolean component5() {
        return this.f10972e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return kotlin.jvm.internal.h.a(this.f10968a, iVar.f10968a) && kotlin.jvm.internal.h.a(this.f10969b, iVar.f10969b) && kotlin.jvm.internal.h.a(this.f10970c, iVar.f10970c) && kotlin.jvm.internal.h.a(this.f10971d, iVar.f10971d) && this.f10972e == iVar.f10972e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = androidx.camera.camera2.internal.c.c(this.f10971d, androidx.camera.camera2.internal.c.c(this.f10970c, androidx.browser.browseractions.b.d(this.f10969b, this.f10968a.hashCode() * 31, 31), 31), 31);
        boolean z10 = this.f10972e;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return r02 + r12;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SearchState(searchResultSate=");
        sb2.append(this.f10968a);
        sb2.append(", editorChoiceState=");
        sb2.append(this.f10969b);
        sb2.append(", searchResultList=");
        sb2.append(this.f10970c);
        sb2.append(", editorChoiceList=");
        sb2.append(this.f10971d);
        sb2.append(", searchOperation=");
        return androidx.browser.browseractions.b.f(sb2, this.f10972e, ')');
    }
}
