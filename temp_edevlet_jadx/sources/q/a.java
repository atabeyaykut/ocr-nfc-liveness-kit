package q;

import androidx.annotation.Px;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: q.a$a, reason: collision with other inner class name */
    public static final class C0221a extends a {

        /* renamed from: a, reason: collision with root package name */
        public final int f13254a;

        public C0221a(@Px int r22) {
            this.f13254a = r22;
            if (!(r22 > 0)) {
                throw new IllegalArgumentException("px must be > 0.".toString());
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C0221a) {
                if (this.f13254a == ((C0221a) obj).f13254a) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.f13254a;
        }

        public final String toString() {
            return String.valueOf(this.f13254a);
        }
    }

    public static final class b extends a {

        /* renamed from: a, reason: collision with root package name */
        public static final b f13255a = new b();

        public final String toString() {
            return "Dimension.Undefined";
        }
    }
}
