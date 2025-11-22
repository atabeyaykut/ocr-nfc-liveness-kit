package kh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.LocationSaveModel;

/* loaded from: classes3.dex */
public final class h extends gf.f<a, Result<LocationSaveModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final c f8963b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f8964c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f8965a;

        /* renamed from: b, reason: collision with root package name */
        public final String f8966b;

        public a(String latitude, String longitude) {
            kotlin.jvm.internal.h.f(latitude, "latitude");
            kotlin.jvm.internal.h.f(longitude, "longitude");
            this.f8965a = latitude;
            this.f8966b = longitude;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.h.a(this.f8965a, aVar.f8965a) && kotlin.jvm.internal.h.a(this.f8966b, aVar.f8966b);
        }

        public final int hashCode() {
            return this.f8966b.hashCode() + (this.f8965a.hashCode() * 31);
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("Params(latitude=");
            sb2.append(this.f8965a);
            sb2.append(", longitude=");
            return android.support.v4.media.a.h(sb2, this.f8966b, ')');
        }
    }

    public h(c mobileAccidentInformationRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentInformationRepository, "mobileAccidentInformationRepository");
        this.f8963b = mobileAccidentInformationRepository;
        this.f8964c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f8964c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<LocationSaveModel>> dVar) {
        a aVar2 = aVar;
        return this.f8963b.a(aVar2.f8965a, aVar2.f8966b, dVar);
    }
}
