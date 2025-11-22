package qg;

import java.util.List;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;

/* loaded from: classes3.dex */
public final class l extends gf.f<a, Result<List<? extends CityModelRealm>>> {

    /* renamed from: b, reason: collision with root package name */
    public final f f13685b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f13686c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f13687a;

        public a(int r12) {
            this.f13687a = r12;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.f13687a == ((a) obj).f13687a;
        }

        public final int hashCode() {
            return this.f13687a;
        }

        public final String toString() {
            return androidx.constraintlayout.core.a.d(new StringBuilder("Params(categoryCode="), this.f13687a, ')');
        }
    }

    public l(f institutionCityListRepository) {
        kotlin.jvm.internal.h.f(institutionCityListRepository, "institutionCityListRepository");
        this.f13685b = institutionCityListRepository;
        this.f13686c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f13686c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<List<? extends CityModelRealm>>> dVar) {
        return this.f13685b.a(aVar.f13687a, dVar);
    }
}
