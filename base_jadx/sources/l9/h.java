package l9;

import java.io.Serializable;

/* loaded from: classes2.dex */
public final class h<T> implements Serializable {

    public static final class a implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f9584a;

        public a(Throwable exception) {
            kotlin.jvm.internal.h.f(exception, "exception");
            this.f9584a = exception;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                if (kotlin.jvm.internal.h.a(this.f9584a, ((a) obj).f9584a)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.f9584a.hashCode();
        }

        public final String toString() {
            return "Failure(" + this.f9584a + ')';
        }
    }

    public static final Throwable a(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).f9584a;
        }
        return null;
    }
}
