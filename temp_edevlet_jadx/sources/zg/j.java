package zg;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportModel;

/* loaded from: classes3.dex */
public final class j extends gf.e<a, Result<SaveReportModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final i f20350b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f20351c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f20352a;

        /* renamed from: b, reason: collision with root package name */
        public final String f20353b;

        /* renamed from: c, reason: collision with root package name */
        public final String f20354c;

        public a(String partyId, String reportId, String reportPartyId) {
            kotlin.jvm.internal.h.f(partyId, "partyId");
            kotlin.jvm.internal.h.f(reportId, "reportId");
            kotlin.jvm.internal.h.f(reportPartyId, "reportPartyId");
            this.f20352a = partyId;
            this.f20353b = reportId;
            this.f20354c = reportPartyId;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.h.a(this.f20352a, aVar.f20352a) && kotlin.jvm.internal.h.a(this.f20353b, aVar.f20353b) && kotlin.jvm.internal.h.a(this.f20354c, aVar.f20354c);
        }

        public final int hashCode() {
            return this.f20354c.hashCode() + androidx.room.util.a.a(this.f20353b, this.f20352a.hashCode() * 31, 31);
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("Params(partyId=");
            sb2.append(this.f20352a);
            sb2.append(", reportId=");
            sb2.append(this.f20353b);
            sb2.append(", reportPartyId=");
            return android.support.v4.media.a.h(sb2, this.f20354c, ')');
        }
    }

    public j(i mobileAccidentApproveRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentApproveRepository, "mobileAccidentApproveRepository");
        this.f20350b = mobileAccidentApproveRepository;
        this.f20351c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f20351c;
    }

    @Override // gf.e
    public final Object c(a aVar, p9.d<? super Result<SaveReportModel>> dVar) {
        a aVar2 = aVar;
        return this.f20350b.m(aVar2.f20352a, aVar2.f20353b, aVar2.f20354c, dVar);
    }
}
