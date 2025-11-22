package ch;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DashPointSaveModel;

/* loaded from: classes3.dex */
public final class o extends gf.f<a, Result<DashPointSaveModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final j f2457b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f2458c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f2459a;

        public a(String dashPoint) {
            kotlin.jvm.internal.h.f(dashPoint, "dashPoint");
            this.f2459a = dashPoint;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f2459a, ((a) obj).f2459a);
        }

        public final int hashCode() {
            return this.f2459a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(dashPoint="), this.f2459a, ')');
        }
    }

    public o(j mobileAccidentDashPointRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentDashPointRepository, "mobileAccidentDashPointRepository");
        this.f2457b = mobileAccidentDashPointRepository;
        this.f2458c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f2458c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<DashPointSaveModel>> dVar) {
        return this.f2457b.a(aVar.f2459a, dVar);
    }
}
