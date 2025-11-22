package kc;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final a f8844a = new a();

    public static class a {
        public final String toString() {
            return "NULL_VALUE";
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f8845a;

        public b(Throwable th2) {
            this.f8845a = th2;
        }

        public static /* synthetic */ void a(int r72) {
            String str = r72 != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[r72 != 1 ? 3 : 2];
            if (r72 != 1) {
                objArr[0] = "throwable";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper";
            }
            if (r72 != 1) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper";
            } else {
                objArr[1] = "getThrowable";
            }
            if (r72 != 1) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (r72 == 1) {
                throw new IllegalStateException(str2);
            }
        }

        public final String toString() {
            return this.f8845a.toString();
        }
    }

    public static void a(Object obj) throws Throwable {
        if (obj instanceof b) {
            Throwable th2 = ((b) obj).f8845a;
            if (th2 != null) {
                throw th2;
            }
            b.a(1);
            throw null;
        }
    }
}
