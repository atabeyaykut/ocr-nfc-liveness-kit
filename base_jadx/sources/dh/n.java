package dh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleListModel;

/* loaded from: classes3.dex */
public final class n extends gf.f<a, Result<VehicleListModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f4972b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f4973c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f4974a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f4974a, ((a) obj).f4974a);
        }

        public final int hashCode() {
            return this.f4974a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f4974a, ')');
        }
    }

    public n(b mobileAccidentDriverRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentDriverRepository, "mobileAccidentDriverRepository");
        this.f4972b = mobileAccidentDriverRepository;
        this.f4973c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f4973c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<VehicleListModel>> dVar) {
        return this.f4972b.d(dVar);
    }
}
