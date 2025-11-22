package ma;

import vb.i;

/* loaded from: classes2.dex */
public final class p0<T extends vb.i> {

    /* renamed from: a, reason: collision with root package name */
    public final e f10237a;

    /* renamed from: b, reason: collision with root package name */
    public final x9.l<dc.f, T> f10238b;

    /* renamed from: c, reason: collision with root package name */
    public final dc.f f10239c;

    /* renamed from: d, reason: collision with root package name */
    public final bc.i f10240d;
    public static final /* synthetic */ da.m<Object>[] f = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(p0.class), "scopeForOwnerModule", "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"))};

    /* renamed from: e, reason: collision with root package name */
    public static final a f10236e = new a();

    public static final class a {
        public static p0 a(x9.l lVar, e classDescriptor, bc.l storageManager, dc.f kotlinTypeRefinerForOwnerModule) {
            kotlin.jvm.internal.h.f(classDescriptor, "classDescriptor");
            kotlin.jvm.internal.h.f(storageManager, "storageManager");
            kotlin.jvm.internal.h.f(kotlinTypeRefinerForOwnerModule, "kotlinTypeRefinerForOwnerModule");
            return new p0(classDescriptor, storageManager, lVar, kotlinTypeRefinerForOwnerModule);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ p0<T> f10241a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(p0<T> p0Var) {
            super(0);
            this.f10241a = p0Var;
        }

        @Override // x9.a
        public final Object invoke() {
            p0<T> p0Var = this.f10241a;
            return p0Var.f10238b.invoke(p0Var.f10239c);
        }
    }

    public p0(e eVar, bc.l lVar, x9.l lVar2, dc.f fVar) {
        this.f10237a = eVar;
        this.f10238b = lVar2;
        this.f10239c = fVar;
        this.f10240d = lVar.d(new b(this));
    }

    public final T a(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        kotlinTypeRefiner.u(sb.b.j(this.f10237a));
        return (T) b8.f.O(this.f10240d, f[0]);
    }
}
