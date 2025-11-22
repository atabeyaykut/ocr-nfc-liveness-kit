package nh;

import kotlin.jvm.internal.h;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRDraftModel;

/* loaded from: classes3.dex */
public final class f extends gf.f<a, Result<ScanQRDraftModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final nh.a f11017b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f11018c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f11019a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && h.a(this.f11019a, ((a) obj).f11019a);
        }

        public final int hashCode() {
            return this.f11019a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f11019a, ')');
        }
    }

    public f(nh.a mobileAccidentMatchedReportRepository) {
        h.f(mobileAccidentMatchedReportRepository, "mobileAccidentMatchedReportRepository");
        this.f11017b = mobileAccidentMatchedReportRepository;
        this.f11018c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f11018c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<ScanQRDraftModel>> dVar) {
        return this.f11017b.a(dVar);
    }
}
