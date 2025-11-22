package uh;

import gf.f;
import io.realm.q0;
import kotlin.jvm.internal.h;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy;

/* loaded from: classes3.dex */
public final class e extends f<a, Result<q0<AccidentReportPolicy>>> {

    /* renamed from: b, reason: collision with root package name */
    public final uh.a f18168b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f18169c;

    public static final class a {
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            ((a) obj).getClass();
            return h.a(null, null);
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            return "Params(query=null)";
        }
    }

    public e(uh.a mobileAccidentPolicyRepository) {
        h.f(mobileAccidentPolicyRepository, "mobileAccidentPolicyRepository");
        this.f18168b = mobileAccidentPolicyRepository;
        this.f18169c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f18169c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<q0<AccidentReportPolicy>>> dVar) {
        return this.f18168b.a(dVar);
    }
}
