package uf;

import java.util.List;
import kotlin.jvm.internal.h;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;

/* loaded from: classes3.dex */
public final class f extends gf.e<a, Result<List<? extends InstitutionModelRealm>>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f18147b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f18148c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f18149a;

        /* renamed from: b, reason: collision with root package name */
        public final int f18150b;

        public a(int r12, int r22) {
            this.f18149a = r12;
            this.f18150b = r22;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f18149a == aVar.f18149a && this.f18150b == aVar.f18150b;
        }

        public final int hashCode() {
            return (this.f18149a * 31) + this.f18150b;
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("Params(categoryCode=");
            sb2.append(this.f18149a);
            sb2.append(", cityCode=");
            return androidx.constraintlayout.core.a.d(sb2, this.f18150b, ')');
        }
    }

    public f(b municipalityListRepository) {
        h.f(municipalityListRepository, "municipalityListRepository");
        this.f18147b = municipalityListRepository;
        this.f18148c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f18148c;
    }

    @Override // gf.e
    public final Object c(a aVar, p9.d<? super Result<List<? extends InstitutionModelRealm>>> dVar) {
        a aVar2 = aVar;
        return this.f18147b.b(aVar2.f18149a, aVar2.f18150b, dVar);
    }
}
