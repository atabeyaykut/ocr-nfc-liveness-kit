package hh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.PhotoSaveModel;

/* loaded from: classes3.dex */
public final class h extends gf.f<a, Result<PhotoSaveModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final e f7184b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f7185c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final i f7186a;

        public a(i query) {
            kotlin.jvm.internal.h.f(query, "query");
            this.f7186a = query;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f7186a, ((a) obj).f7186a);
        }

        public final int hashCode() {
            return this.f7186a.hashCode();
        }

        public final String toString() {
            return "Params(query=" + this.f7186a + ')';
        }
    }

    public h(e mobileAccidentInformationRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentInformationRepository, "mobileAccidentInformationRepository");
        this.f7184b = mobileAccidentInformationRepository;
        this.f7185c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f7185c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<PhotoSaveModel>> dVar) {
        return this.f7184b.d(aVar.f7186a, dVar);
    }
}
