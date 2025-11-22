package ga;

import java.lang.ref.SoftReference;

/* loaded from: classes2.dex */
public final class t0 {

    public static class a<T> extends c<T> implements x9.a<T> {

        /* renamed from: b, reason: collision with root package name */
        public final x9.a<T> f6117b;

        /* renamed from: c, reason: collision with root package name */
        public volatile SoftReference<Object> f6118c;

        public a(T t10, x9.a<T> aVar) {
            if (aVar == null) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "initializer", "kotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal", "<init>"));
            }
            this.f6118c = null;
            this.f6117b = aVar;
            if (t10 != null) {
                this.f6118c = new SoftReference<>(t10);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // x9.a
        public final T invoke() {
            T t10;
            SoftReference<Object> softReference = this.f6118c;
            c.a aVar = c.f6121a;
            if (softReference != null && (t10 = (T) softReference.get()) != null) {
                if (t10 == aVar) {
                    return null;
                }
                return t10;
            }
            T tInvoke = this.f6117b.invoke();
            if (tInvoke != 0) {
                aVar = tInvoke;
            }
            this.f6118c = new SoftReference<>(aVar);
            return tInvoke;
        }
    }

    public static class b<T> extends c<T> {

        /* renamed from: b, reason: collision with root package name */
        public final x9.a<T> f6119b;

        /* renamed from: c, reason: collision with root package name */
        public volatile Object f6120c = null;

        public b(x9.a<T> aVar) {
            this.f6119b = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final T invoke() {
            T t10 = (T) this.f6120c;
            c.a aVar = c.f6121a;
            if (t10 != null) {
                if (t10 == aVar) {
                    return null;
                }
                return t10;
            }
            T tInvoke = this.f6119b.invoke();
            if (tInvoke != 0) {
                aVar = tInvoke;
            }
            this.f6120c = aVar;
            return tInvoke;
        }
    }

    public static abstract class c<T> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f6121a = new a();

        public static class a {
        }
    }

    public static /* synthetic */ void a(int r32) {
        Object[] objArr = new Object[3];
        objArr[0] = "initializer";
        objArr[1] = "kotlin/reflect/jvm/internal/ReflectProperties";
        if (r32 == 1 || r32 == 2) {
            objArr[2] = "lazySoft";
        } else {
            objArr[2] = "lazy";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static <T> b<T> b(x9.a<T> aVar) {
        return new b<>(aVar);
    }

    public static <T> a<T> c(x9.a<T> aVar) {
        if (aVar != null) {
            return new a<>(null, aVar);
        }
        a(2);
        throw null;
    }
}
