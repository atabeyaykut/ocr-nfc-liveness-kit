package hh;

import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DescriptionSaveModel;

/* loaded from: classes3.dex */
public final class a extends gf.f<C0123a, Result<DescriptionSaveModel>> {

    /* renamed from: b, reason: collision with root package name */
    public final e f7111b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f7112c;

    /* renamed from: hh.a$a, reason: collision with other inner class name */
    public static final class C0123a {

        /* renamed from: a, reason: collision with root package name */
        public final String f7113a;

        public C0123a(String description) {
            kotlin.jvm.internal.h.f(description, "description");
            this.f7113a = description;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0123a) && kotlin.jvm.internal.h.a(this.f7113a, ((C0123a) obj).f7113a);
        }

        public final int hashCode() {
            return this.f7113a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(description="), this.f7113a, ')');
        }
    }

    public a(e mobileAccidentInformationRepository) {
        kotlin.jvm.internal.h.f(mobileAccidentInformationRepository, "mobileAccidentInformationRepository");
        this.f7111b = mobileAccidentInformationRepository;
        this.f7112c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f7112c;
    }

    @Override // gf.f
    public final Object c(C0123a c0123a, p9.d<? super Result<DescriptionSaveModel>> dVar) {
        return this.f7111b.b(c0123a.f7113a, dVar);
    }
}
