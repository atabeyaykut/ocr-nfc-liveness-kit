package rh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportListModel;

/* loaded from: classes3.dex */
public final class q extends gf.f<a, Result<InProgressReportListModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f14810b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f14811c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f14812a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f14812a, ((a) obj).f14812a);
        }

        public final int hashCode() {
            return this.f14812a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f14812a, ')');
        }
    }

    public q(b mobileAccidentCompletedReportRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentCompletedReportRepository, "mobileAccidentCompletedReportRepository");
        this.f14810b = mobileAccidentCompletedReportRepository;
        this.f14811c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f14811c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<InProgressReportListModel>> dVar) {
        return this.f14810b.h(dVar);
    }
}
