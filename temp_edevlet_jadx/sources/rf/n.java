package rf;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class n extends gf.f<a, Result<ServiceModelRealm>> {

    /* renamed from: b, reason: collision with root package name */
    public final rf.a f14676b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f14677c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f14678a;

        public a(int r12) {
            this.f14678a = r12;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.f14678a == ((a) obj).f14678a;
        }

        public final int hashCode() {
            return this.f14678a;
        }

        public final String toString() {
            return androidx.constraintlayout.core.a.d(new StringBuilder("Params(serviceCode="), this.f14678a, ')');
        }
    }

    public n(rf.a favoriteOperationRepository) {
        kotlin.jvm.internal.h.f(favoriteOperationRepository, "favoriteOperationRepository");
        this.f14676b = favoriteOperationRepository;
        this.f14677c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f14677c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<ServiceModelRealm>> dVar) {
        return this.f14676b.d(aVar.f14678a, dVar);
    }
}
