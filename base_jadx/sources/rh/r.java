package rh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MergeDetailModel;

/* loaded from: classes3.dex */
public final class r extends gf.f<a, Result<MergeDetailModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f14813b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f14814c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f14815a;

        public a(String partyId) {
            kotlin.jvm.internal.h.f(partyId, "partyId");
            this.f14815a = partyId;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f14815a, ((a) obj).f14815a);
        }

        public final int hashCode() {
            return this.f14815a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(partyId="), this.f14815a, ')');
        }
    }

    public r(b mobileAccidentCompletedReportRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentCompletedReportRepository, "mobileAccidentCompletedReportRepository");
        this.f14813b = mobileAccidentCompletedReportRepository;
        this.f14814c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f14814c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<MergeDetailModel>> dVar) {
        return this.f14813b.i(aVar.f14815a, dVar);
    }
}
