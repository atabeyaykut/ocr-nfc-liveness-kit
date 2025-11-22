package ng;

import java.util.List;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class a extends gf.f<C0207a, Result<List<? extends ServiceModelRealm>>> {

    /* renamed from: b, reason: collision with root package name */
    public final h f10947b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f10948c;

    /* renamed from: ng.a$a, reason: collision with other inner class name */
    public static final class C0207a {

        /* renamed from: a, reason: collision with root package name */
        public final String f10949a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0207a) && kotlin.jvm.internal.h.a(this.f10949a, ((C0207a) obj).f10949a);
        }

        public final int hashCode() {
            return this.f10949a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f10949a, ')');
        }
    }

    public a(h searchRepository) {
        kotlin.jvm.internal.h.f(searchRepository, "searchRepository");
        this.f10947b = searchRepository;
        this.f10948c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f10948c;
    }

    @Override // gf.f
    public final Object c(C0207a c0207a, p9.d<? super Result<List<? extends ServiceModelRealm>>> dVar) {
        return this.f10947b.b(dVar);
    }
}
