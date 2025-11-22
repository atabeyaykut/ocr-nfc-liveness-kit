package yf;

import java.util.List;
import m9.v;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class d implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<List<ServiceModelRealm>>> f19671a;

    /* renamed from: b, reason: collision with root package name */
    public final List<ServiceModelRealm> f19672b;

    /* JADX WARN: Multi-variable type inference failed */
    public d() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(r0.b<? extends Result<List<ServiceModelRealm>>> wonderServiceListState, List<? extends ServiceModelRealm> wonderServiceList) {
        kotlin.jvm.internal.h.f(wonderServiceListState, "wonderServiceListState");
        kotlin.jvm.internal.h.f(wonderServiceList, "wonderServiceList");
        this.f19671a = wonderServiceListState;
        this.f19672b = wonderServiceList;
    }

    public /* synthetic */ d(r0.b bVar, List list, int r32, kotlin.jvm.internal.d dVar) {
        this((r32 & 1) != 0 ? d1.f13733b : bVar, (r32 & 2) != 0 ? v.f10173a : list);
    }

    public static d copy$default(d dVar, r0.b wonderServiceListState, List wonderServiceList, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            wonderServiceListState = dVar.f19671a;
        }
        if ((r32 & 2) != 0) {
            wonderServiceList = dVar.f19672b;
        }
        dVar.getClass();
        kotlin.jvm.internal.h.f(wonderServiceListState, "wonderServiceListState");
        kotlin.jvm.internal.h.f(wonderServiceList, "wonderServiceList");
        return new d(wonderServiceListState, wonderServiceList);
    }

    public final r0.b<Result<List<ServiceModelRealm>>> component1() {
        return this.f19671a;
    }

    public final List<ServiceModelRealm> component2() {
        return this.f19672b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return kotlin.jvm.internal.h.a(this.f19671a, dVar.f19671a) && kotlin.jvm.internal.h.a(this.f19672b, dVar.f19672b);
    }

    public final int hashCode() {
        return this.f19672b.hashCode() + (this.f19671a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("WonderServicesState(wonderServiceListState=");
        sb2.append(this.f19671a);
        sb2.append(", wonderServiceList=");
        return android.support.v4.media.a.j(sb2, this.f19672b, ')');
    }
}
