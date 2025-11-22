package ag;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;

/* loaded from: classes3.dex */
public final class i extends gf.f<a, Result<InstitutionModelRealm>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f329b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f330c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f331a;

        /* renamed from: b, reason: collision with root package name */
        public final int f332b;

        /* renamed from: c, reason: collision with root package name */
        public final Integer f333c;

        public a(int r12, int r22, Integer num) {
            this.f331a = r12;
            this.f332b = r22;
            this.f333c = num;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f331a == aVar.f331a && this.f332b == aVar.f332b && kotlin.jvm.internal.h.a(this.f333c, aVar.f333c);
        }

        public final int hashCode() {
            int r02 = ((this.f331a * 31) + this.f332b) * 31;
            Integer num = this.f333c;
            return r02 + (num == null ? 0 : num.hashCode());
        }

        public final String toString() {
            return "Params(institutionCode=" + this.f331a + ", categoryCode=" + this.f332b + ", cityCode=" + this.f333c + ')';
        }
    }

    public i(b institutionDetailRepository) {
        kotlin.jvm.internal.h.f(institutionDetailRepository, "institutionDetailRepository");
        this.f329b = institutionDetailRepository;
        this.f330c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f330c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<InstitutionModelRealm>> dVar) {
        a aVar2 = aVar;
        return this.f329b.a(aVar2.f331a, aVar2.f332b, aVar2.f333c, dVar);
    }
}
