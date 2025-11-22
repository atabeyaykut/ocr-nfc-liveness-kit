package pa;

/* loaded from: classes2.dex */
public interface j0 {

    /* renamed from: a, reason: collision with root package name */
    public static final a f12917a = a.f12918a;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ a f12918a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final com.airbnb.epoxy.a f12919b = new com.airbnb.epoxy.a("PackageViewDescriptorFactory");
    }

    public static final class b implements j0 {

        /* renamed from: b, reason: collision with root package name */
        public static final b f12920b = new b();

        @Override // pa.j0
        public final z a(g0 module, lb.c fqName, bc.l storageManager) {
            kotlin.jvm.internal.h.f(module, "module");
            kotlin.jvm.internal.h.f(fqName, "fqName");
            kotlin.jvm.internal.h.f(storageManager, "storageManager");
            return new z(module, fqName, storageManager);
        }
    }

    z a(g0 g0Var, lb.c cVar, bc.l lVar);
}
