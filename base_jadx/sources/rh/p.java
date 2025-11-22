package rh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportListModel;

/* loaded from: classes3.dex */
public final class p extends gf.f<a, Result<CompletedReportListModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f14807b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f14808c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f14809a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f14809a, ((a) obj).f14809a);
        }

        public final int hashCode() {
            return this.f14809a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f14809a, ')');
        }
    }

    public p(b mobileAccidentCompletedReportRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentCompletedReportRepository, "mobileAccidentCompletedReportRepository");
        this.f14807b = mobileAccidentCompletedReportRepository;
        this.f14808c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f14808c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<CompletedReportListModel>> dVar) {
        return this.f14807b.g(dVar);
    }
}
