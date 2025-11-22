package yf;

import java.util.List;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class h extends gf.f<a, Result<List<? extends ServiceModelRealm>>> {

    /* renamed from: b, reason: collision with root package name */
    public final c f19682b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f19683c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f19684a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f19684a, ((a) obj).f19684a);
        }

        public final int hashCode() {
            return this.f19684a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f19684a, ')');
        }
    }

    public h(c wonderServicesRepository) {
        kotlin.jvm.internal.h.f(wonderServicesRepository, "wonderServicesRepository");
        this.f19682b = wonderServicesRepository;
        this.f19683c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f19683c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<List<? extends ServiceModelRealm>>> dVar) {
        return this.f19682b.b(dVar);
    }
}
