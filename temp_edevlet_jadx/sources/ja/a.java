package ja;

import c5.y;
import java.util.ServiceLoader;
import m9.t;
import ma.b0;
import ma.f0;

/* loaded from: classes2.dex */
public interface a {

    /* renamed from: a, reason: collision with root package name */
    public static final C0148a f8316a = C0148a.f8317a;

    /* renamed from: ja.a$a, reason: collision with other inner class name */
    public static final class C0148a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ C0148a f8317a = new C0148a();

        /* renamed from: b, reason: collision with root package name */
        public static final l9.e<a> f8318b = y.v(2, C0149a.f8319a);

        /* renamed from: ja.a$a$a, reason: collision with other inner class name */
        public static final class C0149a extends kotlin.jvm.internal.j implements x9.a<a> {

            /* renamed from: a, reason: collision with root package name */
            public static final C0149a f8319a = new C0149a();

            public C0149a() {
                super(0);
            }

            @Override // x9.a
            public final a invoke() {
                ServiceLoader implementations = ServiceLoader.load(a.class, a.class.getClassLoader());
                kotlin.jvm.internal.h.e(implementations, "implementations");
                a aVar = (a) t.b1(implementations);
                if (aVar != null) {
                    return aVar;
                }
                throw new IllegalStateException("No BuiltInsLoader implementation was found. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager");
            }
        }
    }

    f0 a(bc.l lVar, b0 b0Var, Iterable<? extends oa.b> iterable, oa.c cVar, oa.a aVar, boolean z10);
}
