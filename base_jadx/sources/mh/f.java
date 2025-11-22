package mh;

import kotlin.jvm.internal.h;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRModel;

/* loaded from: classes3.dex */
public final class f extends gf.f<a, Result<ScanQRModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final mh.a f10454b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f10455c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f10456a;

        public a(String qrContent) {
            h.f(qrContent, "qrContent");
            this.f10456a = qrContent;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && h.a(this.f10456a, ((a) obj).f10456a);
        }

        public final int hashCode() {
            return this.f10456a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(qrContent="), this.f10456a, ')');
        }
    }

    public f(mh.a mobileAccidentQRScanRepository) {
        h.f(mobileAccidentQRScanRepository, "mobileAccidentQRScanRepository");
        this.f10454b = mobileAccidentQRScanRepository;
        this.f10455c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f10455c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<ScanQRModel>> dVar) {
        return this.f10454b.a(aVar.f10456a, dVar);
    }
}
