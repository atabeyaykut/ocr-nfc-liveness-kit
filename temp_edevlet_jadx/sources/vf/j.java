package vf;

import java.util.List;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class j extends gf.f<a, Result<List<? extends ServiceModelRealm>>> {

    /* renamed from: b, reason: collision with root package name */
    public final vf.a f18622b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f18623c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f18624a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f18624a, ((a) obj).f18624a);
        }

        public final int hashCode() {
            return this.f18624a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f18624a, ')');
        }
    }

    public j(vf.a newestServicesRepository) {
        kotlin.jvm.internal.h.f(newestServicesRepository, "newestServicesRepository");
        this.f18622b = newestServicesRepository;
        this.f18623c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f18623c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<List<? extends ServiceModelRealm>>> dVar) {
        return this.f18622b.b(dVar);
    }
}
