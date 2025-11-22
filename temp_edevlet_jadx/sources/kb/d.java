package kb;

/* loaded from: classes2.dex */
public abstract class d {

    public static final class a extends d {

        /* renamed from: a, reason: collision with root package name */
        public final String f8811a;

        /* renamed from: b, reason: collision with root package name */
        public final String f8812b;

        public a(String name, String desc) {
            kotlin.jvm.internal.h.f(name, "name");
            kotlin.jvm.internal.h.f(desc, "desc");
            this.f8811a = name;
            this.f8812b = desc;
        }

        @Override // kb.d
        public final String a() {
            return this.f8811a + ':' + this.f8812b;
        }

        @Override // kb.d
        public final String b() {
            return this.f8812b;
        }

        @Override // kb.d
        public final String c() {
            return this.f8811a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.h.a(this.f8811a, aVar.f8811a) && kotlin.jvm.internal.h.a(this.f8812b, aVar.f8812b);
        }

        public final int hashCode() {
            return this.f8812b.hashCode() + (this.f8811a.hashCode() * 31);
        }
    }

    public static final class b extends d {

        /* renamed from: a, reason: collision with root package name */
        public final String f8813a;

        /* renamed from: b, reason: collision with root package name */
        public final String f8814b;

        public b(String name, String desc) {
            kotlin.jvm.internal.h.f(name, "name");
            kotlin.jvm.internal.h.f(desc, "desc");
            this.f8813a = name;
            this.f8814b = desc;
        }

        @Override // kb.d
        public final String a() {
            return this.f8813a + this.f8814b;
        }

        @Override // kb.d
        public final String b() {
            return this.f8814b;
        }

        @Override // kb.d
        public final String c() {
            return this.f8813a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return kotlin.jvm.internal.h.a(this.f8813a, bVar.f8813a) && kotlin.jvm.internal.h.a(this.f8814b, bVar.f8814b);
        }

        public final int hashCode() {
            return this.f8814b.hashCode() + (this.f8813a.hashCode() * 31);
        }
    }

    public abstract String a();

    public abstract String b();

    public abstract String c();

    public final String toString() {
        return a();
    }
}
