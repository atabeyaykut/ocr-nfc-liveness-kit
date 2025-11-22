package la;

import kotlin.jvm.internal.w;
import ma.b0;
import pa.g0;

/* loaded from: classes2.dex */
public final class g extends ja.k {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f9624h = {w.c(new kotlin.jvm.internal.r(w.a(g.class), "customizer", "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"))};
    public x9.a<a> f;

    /* renamed from: g, reason: collision with root package name */
    public final bc.i f9625g;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final b0 f9626a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f9627b;

        public a(b0 ownerModuleDescriptor, boolean z10) {
            kotlin.jvm.internal.h.f(ownerModuleDescriptor, "ownerModuleDescriptor");
            this.f9626a = ownerModuleDescriptor;
            this.f9627b = z10;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(bc.c cVar) {
        super(cVar);
        androidx.camera.core.impl.utils.f.j(1, "kind");
        this.f9625g = cVar.d(new i(this, cVar));
        int r32 = g.d.c(1);
        if (r32 == 1) {
            d(false);
        } else {
            if (r32 != 2) {
                return;
            }
            d(true);
        }
    }

    public final k L() {
        return (k) b8.f.O(this.f9625g, f9624h[0]);
    }

    @Override // ja.k
    public final oa.a e() {
        return L();
    }

    @Override // ja.k
    public final Iterable m() {
        Iterable<oa.b> iterableM = super.m();
        bc.l lVar = this.f8330d;
        if (lVar == null) {
            ja.k.a(6);
            throw null;
        }
        g0 builtInsModule = l();
        kotlin.jvm.internal.h.e(builtInsModule, "builtInsModule");
        return m9.t.l1(iterableM, new e(lVar, builtInsModule));
    }

    @Override // ja.k
    public final oa.c p() {
        return L();
    }
}
