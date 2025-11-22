package qg;

import java.util.List;
import m9.v;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;

/* loaded from: classes3.dex */
public final class h implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<List<CityModelRealm>>> f13672a;

    /* renamed from: b, reason: collision with root package name */
    public final List<CityModelRealm> f13673b;

    /* JADX WARN: Multi-variable type inference failed */
    public h() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(r0.b<? extends Result<List<CityModelRealm>>> cityListState, List<? extends CityModelRealm> cityList) {
        kotlin.jvm.internal.h.f(cityListState, "cityListState");
        kotlin.jvm.internal.h.f(cityList, "cityList");
        this.f13672a = cityListState;
        this.f13673b = cityList;
    }

    public /* synthetic */ h(r0.b bVar, List list, int r32, kotlin.jvm.internal.d dVar) {
        this((r32 & 1) != 0 ? d1.f13733b : bVar, (r32 & 2) != 0 ? v.f10173a : list);
    }

    public static h copy$default(h hVar, r0.b cityListState, List cityList, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            cityListState = hVar.f13672a;
        }
        if ((r32 & 2) != 0) {
            cityList = hVar.f13673b;
        }
        hVar.getClass();
        kotlin.jvm.internal.h.f(cityListState, "cityListState");
        kotlin.jvm.internal.h.f(cityList, "cityList");
        return new h(cityListState, cityList);
    }

    public final r0.b<Result<List<CityModelRealm>>> component1() {
        return this.f13672a;
    }

    public final List<CityModelRealm> component2() {
        return this.f13673b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return kotlin.jvm.internal.h.a(this.f13672a, hVar.f13672a) && kotlin.jvm.internal.h.a(this.f13673b, hVar.f13673b);
    }

    public final int hashCode() {
        return this.f13673b.hashCode() + (this.f13672a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("InstitutionCityListState(cityListState=");
        sb2.append(this.f13672a);
        sb2.append(", cityList=");
        return android.support.v4.media.a.j(sb2, this.f13673b, ')');
    }
}
