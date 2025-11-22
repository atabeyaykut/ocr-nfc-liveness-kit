package zg;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationGuestRequestModel;

/* loaded from: classes3.dex */
public final class b extends gf.f<a, Result<ConfirmationGuestRequestModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final i f20294b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f20295c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f20296a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f20296a, ((a) obj).f20296a);
        }

        public final int hashCode() {
            String str = this.f20296a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(reportId="), this.f20296a, ')');
        }
    }

    public b(i mobileAccidentApproveRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentApproveRepository, "mobileAccidentApproveRepository");
        this.f20294b = mobileAccidentApproveRepository;
        this.f20295c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f20295c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<ConfirmationGuestRequestModel>> dVar) {
        return this.f20294b.g(dVar);
    }
}
