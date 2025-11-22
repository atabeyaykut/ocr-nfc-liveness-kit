package lh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlQRScanModel;

/* loaded from: classes3.dex */
public final class a extends gf.f<C0181a, Result<ControlQRScanModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final c f9815b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f9816c;

    /* renamed from: lh.a$a, reason: collision with other inner class name */
    public static final class C0181a {

        /* renamed from: a, reason: collision with root package name */
        public final String f9817a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0181a) && kotlin.jvm.internal.h.a(this.f9817a, ((C0181a) obj).f9817a);
        }

        public final int hashCode() {
            return this.f9817a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f9817a, ')');
        }
    }

    public a(c mobileAccidentGenerateQRRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentGenerateQRRepository, "mobileAccidentGenerateQRRepository");
        this.f9815b = mobileAccidentGenerateQRRepository;
        this.f9816c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f9816c;
    }

    @Override // gf.f
    public final Object c(C0181a c0181a, p9.d<? super Result<ControlQRScanModel>> dVar) {
        return this.f9815b.a(dVar);
    }
}
