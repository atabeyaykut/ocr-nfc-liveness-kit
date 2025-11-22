package ph;

import kotlin.jvm.internal.h;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlConfirmationRequestModel;

/* loaded from: classes3.dex */
public final class e extends gf.e<a, Result<ControlConfirmationRequestModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f13251b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f13252c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f13253a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && h.a(this.f13253a, ((a) obj).f13253a);
        }

        public final int hashCode() {
            return this.f13253a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f13253a, ')');
        }
    }

    public e(b mobileAccidentWaitingApprovalRepository) {
        h.f(mobileAccidentWaitingApprovalRepository, "mobileAccidentWaitingApprovalRepository");
        this.f13251b = mobileAccidentWaitingApprovalRepository;
        this.f13252c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f13252c;
    }

    @Override // gf.e
    public final Object c(a aVar, p9.d<? super Result<ControlConfirmationRequestModel>> dVar) {
        return this.f13251b.a(dVar);
    }
}
