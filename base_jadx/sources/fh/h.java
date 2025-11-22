package fh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DifferentVehicleSaveModel;

/* loaded from: classes3.dex */
public final class h extends gf.f<a, Result<DifferentVehicleSaveModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f5699b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f5700c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f5701a;

        /* renamed from: b, reason: collision with root package name */
        public final String f5702b;

        /* renamed from: c, reason: collision with root package name */
        public final String f5703c;

        public a(String documentNumber, String identityNumber, String plateNumber) {
            kotlin.jvm.internal.h.f(documentNumber, "documentNumber");
            kotlin.jvm.internal.h.f(identityNumber, "identityNumber");
            kotlin.jvm.internal.h.f(plateNumber, "plateNumber");
            this.f5701a = documentNumber;
            this.f5702b = identityNumber;
            this.f5703c = plateNumber;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.h.a(this.f5701a, aVar.f5701a) && kotlin.jvm.internal.h.a(this.f5702b, aVar.f5702b) && kotlin.jvm.internal.h.a(this.f5703c, aVar.f5703c);
        }

        public final int hashCode() {
            return this.f5703c.hashCode() + androidx.room.util.a.a(this.f5702b, this.f5701a.hashCode() * 31, 31);
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("Params(documentNumber=");
            sb2.append(this.f5701a);
            sb2.append(", identityNumber=");
            sb2.append(this.f5702b);
            sb2.append(", plateNumber=");
            return android.support.v4.media.a.h(sb2, this.f5703c, ')');
        }
    }

    public h(b mobileAccidentDifferentVehicleRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentDifferentVehicleRepository, "mobileAccidentDifferentVehicleRepository");
        this.f5699b = mobileAccidentDifferentVehicleRepository;
        this.f5700c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f5700c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<DifferentVehicleSaveModel>> dVar) {
        a aVar2 = aVar;
        return this.f5699b.a(aVar2.f5701a, aVar2.f5702b, aVar2.f5703c, dVar);
    }
}
