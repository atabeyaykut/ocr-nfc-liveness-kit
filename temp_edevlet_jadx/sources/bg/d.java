package bg;

import gf.f;
import kotlin.jvm.internal.h;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class d extends f<a, Result<ServiceModelRealm>> {

    /* renamed from: b, reason: collision with root package name */
    public final bg.a f1289b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f1290c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f1291a;

        public a(int r12) {
            this.f1291a = r12;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.f1291a == ((a) obj).f1291a;
        }

        public final int hashCode() {
            return this.f1291a;
        }

        public final String toString() {
            return androidx.constraintlayout.core.a.d(new StringBuilder("Params(serviceCode="), this.f1291a, ')');
        }
    }

    public d(bg.a favoriteOperationRepository) {
        h.f(favoriteOperationRepository, "favoriteOperationRepository");
        this.f1289b = favoriteOperationRepository;
        this.f1290c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f1290c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<ServiceModelRealm>> dVar) {
        return this.f1289b.b(aVar.f1291a, dVar);
    }
}
