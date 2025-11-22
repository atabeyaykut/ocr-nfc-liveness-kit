package zg;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.HostReportLocationModel;

/* loaded from: classes3.dex */
public final class f extends gf.f<a, Result<HostReportLocationModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final i f20303b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f20304c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f20305a;

        public a(String partyId) {
            kotlin.jvm.internal.h.f(partyId, "partyId");
            this.f20305a = partyId;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f20305a, ((a) obj).f20305a);
        }

        public final int hashCode() {
            return this.f20305a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(partyId="), this.f20305a, ')');
        }
    }

    public f(i mobileAccidentApproveRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentApproveRepository, "mobileAccidentApproveRepository");
        this.f20303b = mobileAccidentApproveRepository;
        this.f20304c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f20304c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<HostReportLocationModel>> dVar) {
        return this.f20303b.i(aVar.f20305a, dVar);
    }
}
