package th;

import kotlin.jvm.internal.h;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CheckClarificationModel;

/* loaded from: classes3.dex */
public final class a extends gf.f<C0256a, Result<CheckClarificationModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f15722b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f15723c;

    /* renamed from: th.a$a, reason: collision with other inner class name */
    public static final class C0256a {

        /* renamed from: a, reason: collision with root package name */
        public final String f15724a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0256a) && h.a(this.f15724a, ((C0256a) obj).f15724a);
        }

        public final int hashCode() {
            return this.f15724a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f15724a, ')');
        }
    }

    public a(b mobileAccidentOnboardingRepository) {
        h.f(mobileAccidentOnboardingRepository, "mobileAccidentOnboardingRepository");
        this.f15722b = mobileAccidentOnboardingRepository;
        this.f15723c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f15723c;
    }

    @Override // gf.f
    public final Object c(C0256a c0256a, p9.d<? super Result<CheckClarificationModel>> dVar) {
        return this.f15722b.a(dVar);
    }
}
