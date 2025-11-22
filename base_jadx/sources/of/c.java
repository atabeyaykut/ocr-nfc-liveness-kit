package of;

import java.util.List;
import m9.v;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm;

/* loaded from: classes3.dex */
public final class c implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<List<ConceptServiceModelRealm>>> f11319a;

    /* renamed from: b, reason: collision with root package name */
    public final List<ConceptServiceModelRealm> f11320b;

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(r0.b<? extends Result<List<ConceptServiceModelRealm>>> conceptServiceListState, List<? extends ConceptServiceModelRealm> conceptServiceList) {
        kotlin.jvm.internal.h.f(conceptServiceListState, "conceptServiceListState");
        kotlin.jvm.internal.h.f(conceptServiceList, "conceptServiceList");
        this.f11319a = conceptServiceListState;
        this.f11320b = conceptServiceList;
    }

    public /* synthetic */ c(r0.b bVar, List list, int r32, kotlin.jvm.internal.d dVar) {
        this((r32 & 1) != 0 ? d1.f13733b : bVar, (r32 & 2) != 0 ? v.f10173a : list);
    }

    public static c copy$default(c cVar, r0.b conceptServiceListState, List conceptServiceList, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            conceptServiceListState = cVar.f11319a;
        }
        if ((r32 & 2) != 0) {
            conceptServiceList = cVar.f11320b;
        }
        cVar.getClass();
        kotlin.jvm.internal.h.f(conceptServiceListState, "conceptServiceListState");
        kotlin.jvm.internal.h.f(conceptServiceList, "conceptServiceList");
        return new c(conceptServiceListState, conceptServiceList);
    }

    public final r0.b<Result<List<ConceptServiceModelRealm>>> component1() {
        return this.f11319a;
    }

    public final List<ConceptServiceModelRealm> component2() {
        return this.f11320b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return kotlin.jvm.internal.h.a(this.f11319a, cVar.f11319a) && kotlin.jvm.internal.h.a(this.f11320b, cVar.f11320b);
    }

    public final int hashCode() {
        return this.f11320b.hashCode() + (this.f11319a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ConceptServicesState(conceptServiceListState=");
        sb2.append(this.f11319a);
        sb2.append(", conceptServiceList=");
        return android.support.v4.media.a.j(sb2, this.f11320b, ')');
    }
}
