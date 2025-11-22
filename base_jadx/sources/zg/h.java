package zg;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MediaListModel;

/* loaded from: classes3.dex */
public final class h extends gf.f<a, Result<MediaListModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final i f20308b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f20309c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f20310a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f20310a, ((a) obj).f20310a);
        }

        public final int hashCode() {
            return this.f20310a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(partyId="), this.f20310a, ')');
        }
    }

    public h(i mobileAccidentApproveRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentApproveRepository, "mobileAccidentApproveRepository");
        this.f20308b = mobileAccidentApproveRepository;
        this.f20309c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f20309c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<MediaListModel>> dVar) {
        return this.f20308b.j(aVar.f20310a, dVar);
    }
}
