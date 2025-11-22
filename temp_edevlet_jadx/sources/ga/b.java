package ga;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final ga.c f5958a = ga.a.a(d.f5963a);

    /* renamed from: b, reason: collision with root package name */
    public static final ga.c f5959b = ga.a.a(e.f5964a);

    public static final class a extends kotlin.jvm.internal.j implements x9.l<Class<?>, da.n> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f5960a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final da.n invoke(Class<?> cls) {
            Class<?> it = cls;
            kotlin.jvm.internal.h.f(it, "it");
            return ea.c.a(b.a(it), false);
        }
    }

    /* renamed from: ga.b$b, reason: collision with other inner class name */
    public static final class C0097b extends kotlin.jvm.internal.j implements x9.l<Class<?>, ConcurrentHashMap<l9.g<? extends List<? extends da.p>, ? extends Boolean>, da.n>> {

        /* renamed from: a, reason: collision with root package name */
        public static final C0097b f5961a = new C0097b();

        public C0097b() {
            super(1);
        }

        @Override // x9.l
        public final ConcurrentHashMap<l9.g<? extends List<? extends da.p>, ? extends Boolean>, da.n> invoke(Class<?> cls) {
            Class<?> it = cls;
            kotlin.jvm.internal.h.f(it, "it");
            return new ConcurrentHashMap<>();
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.l<Class<?>, da.n> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f5962a = new c();

        public c() {
            super(1);
        }

        @Override // x9.l
        public final da.n invoke(Class<?> cls) {
            Class<?> it = cls;
            kotlin.jvm.internal.h.f(it, "it");
            return ea.c.a(b.a(it), true);
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.l<Class<?>, n<? extends Object>> {

        /* renamed from: a, reason: collision with root package name */
        public static final d f5963a = new d();

        public d() {
            super(1);
        }

        @Override // x9.l
        public final n<? extends Object> invoke(Class<?> cls) {
            Class<?> it = cls;
            kotlin.jvm.internal.h.f(it, "it");
            return new n<>(it);
        }
    }

    public static final class e extends kotlin.jvm.internal.j implements x9.l<Class<?>, c0> {

        /* renamed from: a, reason: collision with root package name */
        public static final e f5964a = new e();

        public e() {
            super(1);
        }

        @Override // x9.l
        public final c0 invoke(Class<?> cls) {
            Class<?> it = cls;
            kotlin.jvm.internal.h.f(it, "it");
            return new c0(it);
        }
    }

    static {
        ga.a.a(a.f5960a);
        ga.a.a(c.f5962a);
        ga.a.a(C0097b.f5961a);
    }

    public static final <T> n<T> a(Class<T> jClass) {
        Object objPutIfAbsent;
        kotlin.jvm.internal.h.f(jClass, "jClass");
        ga.c cVar = f5958a;
        cVar.getClass();
        ConcurrentHashMap<Class<?>, V> concurrentHashMap = cVar.f5967b;
        Object objInvoke = concurrentHashMap.get(jClass);
        if (objInvoke == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(jClass, (objInvoke = cVar.f5966a.invoke(jClass)))) != null) {
            objInvoke = objPutIfAbsent;
        }
        kotlin.jvm.internal.h.d(objInvoke, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>");
        return (n) objInvoke;
    }
}
