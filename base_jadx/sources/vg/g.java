package vg;

import java.util.List;
import kotlin.jvm.internal.h;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;

/* loaded from: classes3.dex */
public final class g extends gf.f<a, Result<List<? extends InstitutionModelRealm>>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f18656b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f18657c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f18658a;

        /* renamed from: b, reason: collision with root package name */
        public final int f18659b;

        public a(int r12, int r22) {
            this.f18658a = r12;
            this.f18659b = r22;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f18658a == aVar.f18658a && this.f18659b == aVar.f18659b;
        }

        public final int hashCode() {
            return (this.f18658a * 31) + this.f18659b;
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("Params(categoryCode=");
            sb2.append(this.f18658a);
            sb2.append(", cityCode=");
            return androidx.constraintlayout.core.a.d(sb2, this.f18659b, ')');
        }
    }

    public g(b institutionListRepository) {
        h.f(institutionListRepository, "institutionListRepository");
        this.f18656b = institutionListRepository;
        this.f18657c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f18657c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<List<? extends InstitutionModelRealm>>> dVar) {
        a aVar2 = aVar;
        return this.f18656b.b(aVar2.f18658a, aVar2.f18659b, dVar);
    }
}
