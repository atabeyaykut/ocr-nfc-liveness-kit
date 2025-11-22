package bh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InitializeResponseModel;

/* loaded from: classes3.dex */
public final class j extends gf.e<a, Result<InitializeResponseModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final bh.a f1336b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f1337c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f1338a;

        public a(String initializeParams) {
            kotlin.jvm.internal.h.f(initializeParams, "initializeParams");
            this.f1338a = initializeParams;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f1338a, ((a) obj).f1338a);
        }

        public final int hashCode() {
            return this.f1338a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(initializeParams="), this.f1338a, ')');
        }
    }

    public j(bh.a mobileAccidentConditionRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentConditionRepository, "mobileAccidentConditionRepository");
        this.f1336b = mobileAccidentConditionRepository;
        this.f1337c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f1337c;
    }

    @Override // gf.e
    public final Object c(a aVar, p9.d<? super Result<InitializeResponseModel>> dVar) {
        return this.f1336b.a(aVar.f1338a, dVar);
    }
}
