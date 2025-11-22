package dh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleSaveModel;

/* loaded from: classes3.dex */
public final class d extends gf.e<a, Result<VehicleSaveModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f4933b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f4934c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f4935a;

        public a(int r12) {
            this.f4935a = r12;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.f4935a == ((a) obj).f4935a;
        }

        public final int hashCode() {
            return this.f4935a;
        }

        public final String toString() {
            return androidx.constraintlayout.core.a.d(new StringBuilder("Params(vehicleIndex="), this.f4935a, ')');
        }
    }

    public d(b mobileAccidentDriverRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentDriverRepository, "mobileAccidentDriverRepository");
        this.f4933b = mobileAccidentDriverRepository;
        this.f4934c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f4934c;
    }

    @Override // gf.e
    public final Object c(a aVar, p9.d<? super Result<VehicleSaveModel>> dVar) {
        return this.f4933b.f(aVar.f4935a, dVar);
    }
}
