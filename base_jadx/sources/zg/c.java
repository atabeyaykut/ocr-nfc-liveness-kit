package zg;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationHostRequestModel;

/* loaded from: classes3.dex */
public final class c extends gf.f<a, Result<ConfirmationHostRequestModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final i f20297b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f20298c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f20299a;

        public a(String reportId) {
            kotlin.jvm.internal.h.f(reportId, "reportId");
            this.f20299a = reportId;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f20299a, ((a) obj).f20299a);
        }

        public final int hashCode() {
            return this.f20299a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(reportId="), this.f20299a, ')');
        }
    }

    public c(i mobileAccidentApproveRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentApproveRepository, "mobileAccidentApproveRepository");
        this.f20297b = mobileAccidentApproveRepository;
        this.f20298c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f20298c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<ConfirmationHostRequestModel>> dVar) {
        return this.f20297b.h(aVar.f20299a, dVar);
    }
}
