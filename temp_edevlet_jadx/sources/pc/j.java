package pc;

/* loaded from: classes2.dex */
public final class j<T> {

    /* renamed from: b, reason: collision with root package name */
    public static final b f13100b = new b();

    /* renamed from: a, reason: collision with root package name */
    public final Object f13101a;

    public static final class a extends b {

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f13102a;

        public a(Throwable th2) {
            this.f13102a = th2;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                if (kotlin.jvm.internal.h.a(this.f13102a, ((a) obj).f13102a)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            Throwable th2 = this.f13102a;
            if (th2 == null) {
                return 0;
            }
            return th2.hashCode();
        }

        @Override // pc.j.b
        public final String toString() {
            return "Closed(" + this.f13102a + ')';
        }
    }

    public static class b {
        public String toString() {
            return "Failed";
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof j) {
            return kotlin.jvm.internal.h.a(this.f13101a, ((j) obj).f13101a);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f13101a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        Object obj = this.f13101a;
        if (obj instanceof a) {
            return ((a) obj).toString();
        }
        return "Value(" + obj + ')';
    }
}
