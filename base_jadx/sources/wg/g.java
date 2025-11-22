package wg;

import java.util.List;
import kotlin.jvm.internal.h;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;

/* loaded from: classes3.dex */
public final class g extends gf.f<a, Result<List<? extends InstitutionModelRealm>>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f18927b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f18928c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f18929a;

        /* renamed from: b, reason: collision with root package name */
        public final int f18930b;

        public a(int r12, int r22) {
            this.f18929a = r12;
            this.f18930b = r22;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f18929a == aVar.f18929a && this.f18930b == aVar.f18930b;
        }

        public final int hashCode() {
            return (this.f18929a * 31) + this.f18930b;
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("Params(categoryCode=");
            sb2.append(this.f18929a);
            sb2.append(", cityCode=");
            return androidx.constraintlayout.core.a.d(sb2, this.f18930b, ')');
        }
    }

    public g(b municipalityListRepository) {
        h.f(municipalityListRepository, "municipalityListRepository");
        this.f18927b = municipalityListRepository;
        this.f18928c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f18928c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<List<? extends InstitutionModelRealm>>> dVar) {
        a aVar2 = aVar;
        return this.f18927b.b(aVar2.f18929a, aVar2.f18930b, dVar);
    }
}
