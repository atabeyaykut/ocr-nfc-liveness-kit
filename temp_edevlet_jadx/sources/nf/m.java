package nf;

import java.util.List;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class m extends gf.f<a, Result<List<? extends ServiceModelRealm>>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f10942b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f10943c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f10944a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f10944a, ((a) obj).f10944a);
        }

        public final int hashCode() {
            return this.f10944a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f10944a, ')');
        }
    }

    public m(b barcodeServicesRepository) {
        kotlin.jvm.internal.h.f(barcodeServicesRepository, "barcodeServicesRepository");
        this.f10942b = barcodeServicesRepository;
        this.f10943c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f10943c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<List<? extends ServiceModelRealm>>> dVar) {
        return this.f10942b.b(dVar);
    }
}
