package va;

import java.util.Arrays;

/* loaded from: classes2.dex */
public interface l {

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final lb.b f18351a;

        /* renamed from: b, reason: collision with root package name */
        public final byte[] f18352b;

        /* renamed from: c, reason: collision with root package name */
        public final cb.g f18353c;

        public a(lb.b bVar, cb.g gVar, int r42) {
            gVar = (r42 & 4) != 0 ? null : gVar;
            this.f18351a = bVar;
            this.f18352b = null;
            this.f18353c = gVar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.h.a(this.f18351a, aVar.f18351a) && kotlin.jvm.internal.h.a(this.f18352b, aVar.f18352b) && kotlin.jvm.internal.h.a(this.f18353c, aVar.f18353c);
        }

        public final int hashCode() {
            int r02 = this.f18351a.hashCode() * 31;
            byte[] bArr = this.f18352b;
            int r03 = (r02 + (bArr == null ? 0 : Arrays.hashCode(bArr))) * 31;
            cb.g gVar = this.f18353c;
            return r03 + (gVar != null ? gVar.hashCode() : 0);
        }

        public final String toString() {
            return "Request(classId=" + this.f18351a + ", previouslyFoundClassFileContent=" + Arrays.toString(this.f18352b) + ", outerClass=" + this.f18353c + ')';
        }
    }

    void a(lb.c cVar);

    sa.b0 b(lb.c cVar);

    sa.r c(a aVar);
}
