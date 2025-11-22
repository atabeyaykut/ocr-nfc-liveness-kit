package mf;

import java.util.List;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;

/* loaded from: classes3.dex */
public final class k extends gf.f<a, Result<List<? extends AboutPageModelRealm>>> {

    /* renamed from: b, reason: collision with root package name */
    public final c f10420b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f10421c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f10422a = "";

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f10422a, ((a) obj).f10422a);
        }

        public final int hashCode() {
            return this.f10422a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f10422a, ')');
        }
    }

    public k(c aboutPageRepository) {
        kotlin.jvm.internal.h.f(aboutPageRepository, "aboutPageRepository");
        this.f10420b = aboutPageRepository;
        this.f10421c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f10421c;
    }

    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<List<? extends AboutPageModelRealm>>> dVar) {
        return this.f10420b.a(dVar);
    }
}
