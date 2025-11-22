package fg;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileServiceModel;

/* loaded from: classes3.dex */
public final class l extends gf.f<a, Result<ProfileServiceModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final d f5667b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f5668c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f5669a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f5670b = false;

        public a(boolean z10) {
            this.f5669a = z10;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f5669a == aVar.f5669a && this.f5670b == aVar.f5670b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            boolean z10 = this.f5669a;
            int r12 = z10;
            if (z10 != 0) {
                r12 = 1;
            }
            int r13 = r12 * 31;
            boolean z11 = this.f5670b;
            return r13 + (z11 ? 1 : z11 ? 1 : 0);
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("Params(isUpdateService=");
            sb2.append(this.f5669a);
            sb2.append(", isContactInfo=");
            return androidx.browser.browseractions.b.f(sb2, this.f5670b, ')');
        }
    }

    public l(d profileRepository) {
        kotlin.jvm.internal.h.f(profileRepository, "profileRepository");
        this.f5667b = profileRepository;
        this.f5668c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f5668c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<ProfileServiceModel>> dVar) {
        boolean z10 = aVar.f5669a;
        d dVar2 = this.f5667b;
        return z10 ? dVar2.c(dVar) : dVar2.b(dVar);
    }
}
