package tf;

import java.util.List;
import m9.v;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;

/* loaded from: classes3.dex */
public final class h implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<List<CityModelRealm>>> f15700a;

    /* renamed from: b, reason: collision with root package name */
    public final List<CityModelRealm> f15701b;

    /* JADX WARN: Multi-variable type inference failed */
    public h() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(r0.b<? extends Result<List<CityModelRealm>>> cityListState, List<? extends CityModelRealm> cityList) {
        kotlin.jvm.internal.h.f(cityListState, "cityListState");
        kotlin.jvm.internal.h.f(cityList, "cityList");
        this.f15700a = cityListState;
        this.f15701b = cityList;
    }

    public /* synthetic */ h(r0.b bVar, List list, int r32, kotlin.jvm.internal.d dVar) {
        this((r32 & 1) != 0 ? d1.f13733b : bVar, (r32 & 2) != 0 ? v.f10173a : list);
    }

    public static h copy$default(h hVar, r0.b cityListState, List cityList, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            cityListState = hVar.f15700a;
        }
        if ((r32 & 2) != 0) {
            cityList = hVar.f15701b;
        }
        hVar.getClass();
        kotlin.jvm.internal.h.f(cityListState, "cityListState");
        kotlin.jvm.internal.h.f(cityList, "cityList");
        return new h(cityListState, cityList);
    }

    public final r0.b<Result<List<CityModelRealm>>> component1() {
        return this.f15700a;
    }

    public final List<CityModelRealm> component2() {
        return this.f15701b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return kotlin.jvm.internal.h.a(this.f15700a, hVar.f15700a) && kotlin.jvm.internal.h.a(this.f15701b, hVar.f15701b);
    }

    public final int hashCode() {
        return this.f15701b.hashCode() + (this.f15700a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("MyCityListState(cityListState=");
        sb2.append(this.f15700a);
        sb2.append(", cityList=");
        return android.support.v4.media.a.j(sb2, this.f15701b, ')');
    }
}
