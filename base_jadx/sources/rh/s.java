package rh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ReportDetailModel;

/* loaded from: classes3.dex */
public final class s extends gf.f<a, Result<ReportDetailModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f14816b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f14817c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f14818a;

        public a(String partyId) {
            kotlin.jvm.internal.h.f(partyId, "partyId");
            this.f14818a = partyId;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f14818a, ((a) obj).f14818a);
        }

        public final int hashCode() {
            return this.f14818a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(partyId="), this.f14818a, ')');
        }
    }

    public s(b mobileAccidentCompletedReportRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentCompletedReportRepository, "mobileAccidentCompletedReportRepository");
        this.f14816b = mobileAccidentCompletedReportRepository;
        this.f14817c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f14817c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<ReportDetailModel>> dVar) {
        return this.f14816b.j(aVar.f14818a, dVar);
    }
}
