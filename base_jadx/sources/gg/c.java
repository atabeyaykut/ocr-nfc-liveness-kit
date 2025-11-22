package gg;

import fg.d;
import gf.f;
import kotlin.jvm.internal.h;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactModel;

/* loaded from: classes3.dex */
public final class c extends f<a, Result<ProfileContactModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final d f6729b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f6730c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f6731a = false;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f6732b = true;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f6731a == aVar.f6731a && this.f6732b == aVar.f6732b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            boolean z10 = this.f6731a;
            int r12 = z10;
            if (z10 != 0) {
                r12 = 1;
            }
            int r13 = r12 * 31;
            boolean z11 = this.f6732b;
            return r13 + (z11 ? 1 : z11 ? 1 : 0);
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("Params(isUpdateService=");
            sb2.append(this.f6731a);
            sb2.append(", isContactInfo=");
            return androidx.browser.browseractions.b.f(sb2, this.f6732b, ')');
        }
    }

    public c(d profileRepository) {
        h.f(profileRepository, "profileRepository");
        this.f6729b = profileRepository;
        this.f6730c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f6730c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<ProfileContactModel>> dVar) {
        return this.f6729b.a(dVar);
    }
}
