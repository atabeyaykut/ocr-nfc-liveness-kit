package bg;

import gf.f;
import kotlin.jvm.internal.h;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class c extends f<a, Result<ServiceModelRealm>> {

    /* renamed from: b, reason: collision with root package name */
    public final bg.a f1286b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f1287c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f1288a;

        public a(int r12) {
            this.f1288a = r12;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.f1288a == ((a) obj).f1288a;
        }

        public final int hashCode() {
            return this.f1288a;
        }

        public final String toString() {
            return androidx.constraintlayout.core.a.d(new StringBuilder("Params(serviceCode="), this.f1288a, ')');
        }
    }

    public c(bg.a favoriteOperationRepository) {
        h.f(favoriteOperationRepository, "favoriteOperationRepository");
        this.f1286b = favoriteOperationRepository;
        this.f1287c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f1287c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<ServiceModelRealm>> dVar) {
        return this.f1286b.a(aVar.f1288a, dVar);
    }
}
