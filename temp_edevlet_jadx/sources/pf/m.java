package pf;

import java.util.List;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class m extends gf.f<a, Result<List<? extends ServiceModelRealm>>> {

    /* renamed from: b, reason: collision with root package name */
    public final pf.a f13195b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f13196c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f13197a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f13197a, ((a) obj).f13197a);
        }

        public final int hashCode() {
            return this.f13197a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f13197a, ')');
        }
    }

    public m(pf.a electronicDocServicesRepository) {
        kotlin.jvm.internal.h.f(electronicDocServicesRepository, "electronicDocServicesRepository");
        this.f13195b = electronicDocServicesRepository;
        this.f13196c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f13196c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<List<? extends ServiceModelRealm>>> dVar) {
        return this.f13195b.b(dVar);
    }
}
