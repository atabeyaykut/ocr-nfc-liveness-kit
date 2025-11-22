package th;

import kotlin.jvm.internal.h;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.TwoFactorModel;

/* loaded from: classes3.dex */
public final class g extends gf.f<a, Result<TwoFactorModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f15757b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f15758c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f15759a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && h.a(this.f15759a, ((a) obj).f15759a);
        }

        public final int hashCode() {
            return this.f15759a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f15759a, ')');
        }
    }

    public g(b mobileAccidentOnboardingRepository) {
        h.f(mobileAccidentOnboardingRepository, "mobileAccidentOnboardingRepository");
        this.f15757b = mobileAccidentOnboardingRepository;
        this.f15758c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f15758c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<TwoFactorModel>> dVar) {
        return this.f15757b.b();
    }
}
