package tf;

import java.util.List;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;

/* loaded from: classes3.dex */
public final class l extends gf.f<a, Result<List<? extends CityModelRealm>>> {

    /* renamed from: b, reason: collision with root package name */
    public final g f15713b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f15714c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f15715a;

        public a(int r12) {
            this.f15715a = r12;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.f15715a == ((a) obj).f15715a;
        }

        public final int hashCode() {
            return this.f15715a;
        }

        public final String toString() {
            return androidx.constraintlayout.core.a.d(new StringBuilder("Params(categoryCode="), this.f15715a, ')');
        }
    }

    public l(g myCityListRepository) {
        kotlin.jvm.internal.h.f(myCityListRepository, "myCityListRepository");
        this.f15713b = myCityListRepository;
        this.f15714c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f15714c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<List<? extends CityModelRealm>>> dVar) {
        return this.f15713b.a(aVar.f15715a, dVar);
    }
}
