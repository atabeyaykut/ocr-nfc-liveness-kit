package yg;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CheckClarificationModel;

/* loaded from: classes3.dex */
public final class a extends gf.f<C0308a, Result<CheckClarificationModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final b f19685b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f19686c;

    /* renamed from: yg.a$a, reason: collision with other inner class name */
    public static final class C0308a {

        /* renamed from: a, reason: collision with root package name */
        public final String f19687a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0308a) && kotlin.jvm.internal.h.a(this.f19687a, ((C0308a) obj).f19687a);
        }

        public final int hashCode() {
            return this.f19687a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f19687a, ')');
        }
    }

    public a(b mobileAccidentAgreementRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentAgreementRepository, "mobileAccidentAgreementRepository");
        this.f19685b = mobileAccidentAgreementRepository;
        this.f19686c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f19686c;
    }

    @Override // gf.f
    public final Object c(C0308a c0308a, p9.d<? super Result<CheckClarificationModel>> dVar) {
        return this.f19685b.a(dVar);
    }
}
