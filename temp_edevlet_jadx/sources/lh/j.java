package lh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.GenerateQRModel;

/* loaded from: classes3.dex */
public final class j extends gf.e<a, Result<GenerateQRModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final c f9854b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f9855c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f9856a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f9856a, ((a) obj).f9856a);
        }

        public final int hashCode() {
            return this.f9856a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f9856a, ')');
        }
    }

    public j(c mobileAccidentGenerateQRRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentGenerateQRRepository, "mobileAccidentGenerateQRRepository");
        this.f9854b = mobileAccidentGenerateQRRepository;
        this.f9855c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f9855c;
    }

    @Override // gf.e
    public final Object c(a aVar, p9.d<? super Result<GenerateQRModel>> dVar) {
        return this.f9854b.b(dVar);
    }
}
