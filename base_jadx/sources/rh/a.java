package rh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadCompletedReportModel;

/* loaded from: classes3.dex */
public final class a extends gf.f<C0240a, Result<DownloadCompletedReportModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f14689b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f14690c;

    /* renamed from: rh.a$a, reason: collision with other inner class name */
    public static final class C0240a {

        /* renamed from: a, reason: collision with root package name */
        public final String f14691a;

        /* renamed from: b, reason: collision with root package name */
        public final String f14692b;

        /* renamed from: c, reason: collision with root package name */
        public final String f14693c;

        public C0240a(String plateCityCode, String plateNumber, String reportId) {
            kotlin.jvm.internal.h.f(plateCityCode, "plateCityCode");
            kotlin.jvm.internal.h.f(plateNumber, "plateNumber");
            kotlin.jvm.internal.h.f(reportId, "reportId");
            this.f14691a = plateCityCode;
            this.f14692b = plateNumber;
            this.f14693c = reportId;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0240a)) {
                return false;
            }
            C0240a c0240a = (C0240a) obj;
            return kotlin.jvm.internal.h.a(this.f14691a, c0240a.f14691a) && kotlin.jvm.internal.h.a(this.f14692b, c0240a.f14692b) && kotlin.jvm.internal.h.a(this.f14693c, c0240a.f14693c);
        }

        public final int hashCode() {
            return this.f14693c.hashCode() + androidx.room.util.a.a(this.f14692b, this.f14691a.hashCode() * 31, 31);
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("Params(plateCityCode=");
            sb2.append(this.f14691a);
            sb2.append(", plateNumber=");
            sb2.append(this.f14692b);
            sb2.append(", reportId=");
            return android.support.v4.media.a.h(sb2, this.f14693c, ')');
        }
    }

    public a(b mobileAccidentCompletedReportRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentCompletedReportRepository, "mobileAccidentCompletedReportRepository");
        this.f14689b = mobileAccidentCompletedReportRepository;
        this.f14690c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f14690c;
    }

    @Override // gf.f
    public final Object c(C0240a c0240a, p9.d<? super Result<DownloadCompletedReportModel>> dVar) {
        C0240a c0240a2 = c0240a;
        return this.f14689b.a(c0240a2.f14691a, c0240a2.f14692b, c0240a2.f14693c, dVar);
    }
}
