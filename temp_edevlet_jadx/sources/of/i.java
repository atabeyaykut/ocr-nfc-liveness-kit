package of;

import java.util.List;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm;

/* loaded from: classes3.dex */
public final class i extends gf.f<a, Result<List<? extends ConceptServiceModelRealm>>> {

    /* renamed from: b, reason: collision with root package name */
    public final of.a f11333b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f11334c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f11335a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f11335a, ((a) obj).f11335a);
        }

        public final int hashCode() {
            return this.f11335a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f11335a, ')');
        }
    }

    public i(of.a conceptServicesRepository) {
        kotlin.jvm.internal.h.f(conceptServicesRepository, "conceptServicesRepository");
        this.f11333b = conceptServicesRepository;
        this.f11334c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f11334c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<List<? extends ConceptServiceModelRealm>>> dVar) {
        return this.f11333b.a(dVar);
    }
}
