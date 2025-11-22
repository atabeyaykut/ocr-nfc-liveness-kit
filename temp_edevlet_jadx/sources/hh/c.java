package hh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.LocationSaveModel;

/* loaded from: classes3.dex */
public final class c extends gf.f<a, Result<LocationSaveModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final e f7115b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f7116c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f7117a;

        /* renamed from: b, reason: collision with root package name */
        public final String f7118b;

        public a(String latitude, String longitude) {
            kotlin.jvm.internal.h.f(latitude, "latitude");
            kotlin.jvm.internal.h.f(longitude, "longitude");
            this.f7117a = latitude;
            this.f7118b = longitude;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.h.a(this.f7117a, aVar.f7117a) && kotlin.jvm.internal.h.a(this.f7118b, aVar.f7118b);
        }

        public final int hashCode() {
            return this.f7118b.hashCode() + (this.f7117a.hashCode() * 31);
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("Params(latitude=");
            sb2.append(this.f7117a);
            sb2.append(", longitude=");
            return android.support.v4.media.a.h(sb2, this.f7118b, ')');
        }
    }

    public c(e mobileAccidentInformationRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentInformationRepository, "mobileAccidentInformationRepository");
        this.f7115b = mobileAccidentInformationRepository;
        this.f7116c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f7116c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<LocationSaveModel>> dVar) {
        a aVar2 = aVar;
        return this.f7115b.c(aVar2.f7117a, aVar2.f7118b, dVar);
    }
}
