package yg;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AgreementModel;

/* loaded from: classes3.dex */
public final class i extends gf.f<a, Result<AgreementModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f19723b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f19724c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f19725a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f19725a, ((a) obj).f19725a);
        }

        public final int hashCode() {
            return this.f19725a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f19725a, ')');
        }
    }

    public i(b mobileAccidentAgreementRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentAgreementRepository, "mobileAccidentAgreementRepository");
        this.f19723b = mobileAccidentAgreementRepository;
        this.f19724c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f19724c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<AgreementModel>> dVar) {
        return this.f19723b.b(dVar);
    }
}
