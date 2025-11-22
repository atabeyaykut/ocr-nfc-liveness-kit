package zg;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadMediaModel;

/* loaded from: classes3.dex */
public final class g extends gf.f<a, Result<DownloadMediaModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final i f20306b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f20307c;

    public static final class a {
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            ((a) obj).getClass();
            return kotlin.jvm.internal.h.a(null, null) && kotlin.jvm.internal.h.a(null, null);
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            return "Params(mediaId=null, partyId=null)";
        }
    }

    public g(i mobileAccidentApproveRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentApproveRepository, "mobileAccidentApproveRepository");
        this.f20306b = mobileAccidentApproveRepository;
        this.f20307c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f20307c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<DownloadMediaModel>> dVar) {
        aVar.getClass();
        return this.f20306b.a(null, null, dVar);
    }
}
