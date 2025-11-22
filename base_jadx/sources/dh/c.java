package dh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DriverSaveModel;

/* loaded from: classes3.dex */
public final class c extends gf.f<a, Result<DriverSaveModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f4930b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f4931c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f4932a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f4932a, ((a) obj).f4932a);
        }

        public final int hashCode() {
            return this.f4932a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(partyId="), this.f4932a, ')');
        }
    }

    public c(b mobileAccidentDriverRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentDriverRepository, "mobileAccidentDriverRepository");
        this.f4930b = mobileAccidentDriverRepository;
        this.f4931c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f4931c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<DriverSaveModel>> dVar) {
        return this.f4930b.e(dVar);
    }
}
