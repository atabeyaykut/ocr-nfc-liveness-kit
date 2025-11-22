package ic;

import cc.e0;
import cc.m0;
import ic.f;

/* loaded from: classes2.dex */
public abstract class u implements f {

    /* renamed from: a, reason: collision with root package name */
    public final x9.l<ja.k, e0> f7409a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7410b;

    public static final class a extends u {

        /* renamed from: c, reason: collision with root package name */
        public static final a f7411c = new a();

        /* renamed from: ic.u$a$a, reason: collision with other inner class name */
        public static final class C0128a extends kotlin.jvm.internal.j implements x9.l<ja.k, e0> {

            /* renamed from: a, reason: collision with root package name */
            public static final C0128a f7412a = new C0128a();

            public C0128a() {
                super(1);
            }

            @Override // x9.l
            public final e0 invoke(ja.k kVar) {
                ja.k kVar2 = kVar;
                kotlin.jvm.internal.h.f(kVar2, "$this$null");
                m0 m0VarS = kVar2.s(ja.l.BOOLEAN);
                if (m0VarS != null) {
                    return m0VarS;
                }
                ja.k.a(63);
                throw null;
            }
        }

        public a() {
            super("Boolean", C0128a.f7412a);
        }
    }

    public static final class b extends u {

        /* renamed from: c, reason: collision with root package name */
        public static final b f7413c = new b();

        public static final class a extends kotlin.jvm.internal.j implements x9.l<ja.k, e0> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f7414a = new a();

            public a() {
                super(1);
            }

            @Override // x9.l
            public final e0 invoke(ja.k kVar) {
                ja.k kVar2 = kVar;
                kotlin.jvm.internal.h.f(kVar2, "$this$null");
                m0 m0VarS = kVar2.s(ja.l.INT);
                if (m0VarS != null) {
                    return m0VarS;
                }
                ja.k.a(58);
                throw null;
            }
        }

        public b() {
            super("Int", a.f7414a);
        }
    }

    public static final class c extends u {

        /* renamed from: c, reason: collision with root package name */
        public static final c f7415c = new c();

        public static final class a extends kotlin.jvm.internal.j implements x9.l<ja.k, e0> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f7416a = new a();

            public a() {
                super(1);
            }

            @Override // x9.l
            public final e0 invoke(ja.k kVar) {
                ja.k kVar2 = kVar;
                kotlin.jvm.internal.h.f(kVar2, "$this$null");
                m0 unitType = kVar2.w();
                kotlin.jvm.internal.h.e(unitType, "unitType");
                return unitType;
            }
        }

        public c() {
            super("Unit", a.f7416a);
        }
    }

    public u(String str, x9.l lVar) {
        this.f7409a = lVar;
        this.f7410b = "must return ".concat(str);
    }

    @Override // ic.f
    public final String a(ma.u uVar) {
        return f.a.a(this, uVar);
    }

    @Override // ic.f
    public final boolean b(ma.u functionDescriptor) {
        kotlin.jvm.internal.h.f(functionDescriptor, "functionDescriptor");
        return kotlin.jvm.internal.h.a(functionDescriptor.getReturnType(), this.f7409a.invoke(sb.b.e(functionDescriptor)));
    }

    @Override // ic.f
    public final String getDescription() {
        return this.f7410b;
    }
}
