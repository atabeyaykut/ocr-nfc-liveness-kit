package vg;

import java.util.List;
import kotlin.jvm.internal.h;
import m9.v;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;

/* loaded from: classes3.dex */
public final class c implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<List<InstitutionModelRealm>>> f18641a;

    /* renamed from: b, reason: collision with root package name */
    public final List<InstitutionModelRealm> f18642b;

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(r0.b<? extends Result<List<InstitutionModelRealm>>> institutionListState, List<? extends InstitutionModelRealm> institutionList) {
        h.f(institutionListState, "institutionListState");
        h.f(institutionList, "institutionList");
        this.f18641a = institutionListState;
        this.f18642b = institutionList;
    }

    public /* synthetic */ c(r0.b bVar, List list, int r32, kotlin.jvm.internal.d dVar) {
        this((r32 & 1) != 0 ? d1.f13733b : bVar, (r32 & 2) != 0 ? v.f10173a : list);
    }

    public static c copy$default(c cVar, r0.b institutionListState, List institutionList, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            institutionListState = cVar.f18641a;
        }
        if ((r32 & 2) != 0) {
            institutionList = cVar.f18642b;
        }
        cVar.getClass();
        h.f(institutionListState, "institutionListState");
        h.f(institutionList, "institutionList");
        return new c(institutionListState, institutionList);
    }

    public final r0.b<Result<List<InstitutionModelRealm>>> component1() {
        return this.f18641a;
    }

    public final List<InstitutionModelRealm> component2() {
        return this.f18642b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return h.a(this.f18641a, cVar.f18641a) && h.a(this.f18642b, cVar.f18642b);
    }

    public final int hashCode() {
        return this.f18642b.hashCode() + (this.f18641a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("InstitutionListState(institutionListState=");
        sb2.append(this.f18641a);
        sb2.append(", institutionList=");
        return android.support.v4.media.a.j(sb2, this.f18642b, ')');
    }
}
