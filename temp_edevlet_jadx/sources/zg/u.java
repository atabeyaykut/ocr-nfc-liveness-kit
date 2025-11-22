package zg;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ReportDetailModel;

/* loaded from: classes3.dex */
public final class u extends gf.f<a, Result<ReportDetailModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final i f20432b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f20433c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f20434a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f20434a, ((a) obj).f20434a);
        }

        public final int hashCode() {
            return this.f20434a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f20434a, ')');
        }
    }

    public u(i mobileAccidentApproveRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentApproveRepository, "mobileAccidentApproveRepository");
        this.f20432b = mobileAccidentApproveRepository;
        this.f20433c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f20433c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<ReportDetailModel>> dVar) {
        return this.f20432b.k(dVar);
    }
}
