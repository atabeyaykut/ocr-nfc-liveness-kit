package qf;

import java.util.List;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class l extends gf.f<a, Result<List<? extends ServiceModelRealm>>> {

    /* renamed from: b, reason: collision with root package name */
    public final qf.a f13647b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f13648c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f13649a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f13649a, ((a) obj).f13649a);
        }

        public final int hashCode() {
            return this.f13649a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f13649a, ')');
        }
    }

    public l(qf.a editorServicesRepository) {
        kotlin.jvm.internal.h.f(editorServicesRepository, "editorServicesRepository");
        this.f13647b = editorServicesRepository;
        this.f13648c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f13648c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<List<? extends ServiceModelRealm>>> dVar) {
        return this.f13647b.a(dVar);
    }
}
