package jh;

import kotlin.jvm.internal.h;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DriverLicenceModel;

/* loaded from: classes3.dex */
public final class f extends gf.f<a, Result<DriverLicenceModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final jh.a f8530b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f8531c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f8532a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && h.a(this.f8532a, ((a) obj).f8532a);
        }

        public final int hashCode() {
            return this.f8532a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f8532a, ')');
        }
    }

    public f(jh.a mobileAccidentIntroductionRepository) {
        h.f(mobileAccidentIntroductionRepository, "mobileAccidentIntroductionRepository");
        this.f8530b = mobileAccidentIntroductionRepository;
        this.f8531c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f8531c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<DriverLicenceModel>> dVar) {
        return this.f8530b.a(dVar);
    }
}
