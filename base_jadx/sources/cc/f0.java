package cc;

import cc.w0;
import java.util.List;
import vb.o;

/* loaded from: classes2.dex */
public final class f0 {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f2296a = 0;

    public static final class a extends kotlin.jvm.internal.j implements x9.l {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f2297a = 0;

        static {
            new a();
        }

        public a() {
            super(1);
        }

        @Override // x9.l
        public final Object invoke(Object obj) {
            kotlin.jvm.internal.h.f((dc.f) obj, "<anonymous parameter 0>");
            return null;
        }
    }

    public static final class b {
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.l<dc.f, m0> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c1 f2298a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ List<i1> f2299b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(List list, a1 a1Var, c1 c1Var, boolean z10) {
            super(1);
            this.f2298a = c1Var;
            this.f2299b = list;
        }

        @Override // x9.l
        public final m0 invoke(dc.f fVar) {
            dc.f refiner = fVar;
            kotlin.jvm.internal.h.f(refiner, "refiner");
            int r02 = f0.f2296a;
            f0.a(this.f2298a, refiner, this.f2299b);
            return null;
        }
    }

    static {
        int r02 = a.f2297a;
    }

    public static final b a(c1 c1Var, dc.f fVar, List list) {
        ma.g gVarN = c1Var.n();
        if (gVarN == null) {
            return null;
        }
        fVar.v(gVarN);
        return null;
    }

    public static final m0 b(ma.v0 v0Var, List<? extends i1> arguments) {
        kotlin.jvm.internal.h.f(v0Var, "<this>");
        kotlin.jvm.internal.h.f(arguments, "arguments");
        v0 v0Var2 = new v0();
        w0 w0VarA = w0.a.a(null, v0Var, arguments);
        a1.f2258b.getClass();
        a1 attributes = a1.f2259c;
        kotlin.jvm.internal.h.f(attributes, "attributes");
        return v0Var2.c(w0VarA, attributes, false, 0, true);
    }

    public static final s1 c(m0 lowerBound, m0 upperBound) {
        kotlin.jvm.internal.h.f(lowerBound, "lowerBound");
        kotlin.jvm.internal.h.f(upperBound, "upperBound");
        return kotlin.jvm.internal.h.a(lowerBound, upperBound) ? lowerBound : new z(lowerBound, upperBound);
    }

    public static final m0 d(a1 attributes, qb.o constructor) {
        kotlin.jvm.internal.h.f(attributes, "attributes");
        kotlin.jvm.internal.h.f(constructor, "constructor");
        return h(m9.v.f10173a, ec.i.a(2, true, "unknown integer literal type"), attributes, constructor, false);
    }

    public static final m0 e(a1 attributes, ma.e descriptor, List<? extends i1> arguments) {
        kotlin.jvm.internal.h.f(attributes, "attributes");
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        kotlin.jvm.internal.h.f(arguments, "arguments");
        c1 c1VarI = descriptor.i();
        kotlin.jvm.internal.h.e(c1VarI, "descriptor.typeConstructor");
        return f(attributes, c1VarI, arguments, false, null);
    }

    public static final m0 f(a1 attributes, c1 constructor, List<? extends i1> arguments, boolean z10, dc.f kotlinTypeRefiner) {
        vb.i iVarA;
        pa.b0 b0Var;
        kotlin.jvm.internal.h.f(attributes, "attributes");
        kotlin.jvm.internal.h.f(constructor, "constructor");
        kotlin.jvm.internal.h.f(arguments, "arguments");
        if (attributes.isEmpty() && arguments.isEmpty() && !z10 && constructor.n() != null) {
            ma.g gVarN = constructor.n();
            kotlin.jvm.internal.h.c(gVarN);
            m0 m0VarQ = gVarN.q();
            kotlin.jvm.internal.h.e(m0VarQ, "constructor.declarationDescriptor!!.defaultType");
            return m0VarQ;
        }
        ma.g gVarN2 = constructor.n();
        if (gVarN2 instanceof ma.w0) {
            iVarA = ((ma.w0) gVarN2).q().o();
        } else if (gVarN2 instanceof ma.e) {
            if (kotlinTypeRefiner == null) {
                kotlinTypeRefiner = sb.b.i(sb.b.j(gVarN2));
            }
            ma.e eVar = (ma.e) gVarN2;
            if (arguments.isEmpty()) {
                kotlin.jvm.internal.h.f(eVar, "<this>");
                kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
                b0Var = eVar instanceof pa.b0 ? (pa.b0) eVar : null;
                if (b0Var == null || (iVarA = b0Var.e0(kotlinTypeRefiner)) == null) {
                    iVarA = eVar.C0();
                    kotlin.jvm.internal.h.e(iVarA, "this.unsubstitutedMemberScope");
                }
            } else {
                l1 l1VarB = e1.f2291b.b(constructor, arguments);
                kotlin.jvm.internal.h.f(eVar, "<this>");
                kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
                b0Var = eVar instanceof pa.b0 ? (pa.b0) eVar : null;
                if (b0Var == null || (iVarA = b0Var.C(l1VarB, kotlinTypeRefiner)) == null) {
                    iVarA = eVar.J(l1VarB);
                    kotlin.jvm.internal.h.e(iVarA, "this.getMemberScope(\n   …ubstitution\n            )");
                }
            }
        } else if (gVarN2 instanceof ma.v0) {
            String str = ((ma.v0) gVarN2).getName().f9676a;
            kotlin.jvm.internal.h.e(str, "descriptor.name.toString()");
            iVarA = ec.i.a(4, true, str);
        } else {
            if (!(constructor instanceof c0)) {
                throw new IllegalStateException("Unsupported classifier: " + gVarN2 + " for constructor: " + constructor);
            }
            iVarA = o.a.a("member scope for intersection type", ((c0) constructor).f2275b);
        }
        return g(attributes, constructor, arguments, z10, iVarA, new c(arguments, attributes, constructor, z10));
    }

    public static final m0 g(a1 attributes, c1 constructor, List<? extends i1> arguments, boolean z10, vb.i memberScope, x9.l<? super dc.f, ? extends m0> refinedTypeFactory) {
        kotlin.jvm.internal.h.f(attributes, "attributes");
        kotlin.jvm.internal.h.f(constructor, "constructor");
        kotlin.jvm.internal.h.f(arguments, "arguments");
        kotlin.jvm.internal.h.f(memberScope, "memberScope");
        kotlin.jvm.internal.h.f(refinedTypeFactory, "refinedTypeFactory");
        n0 n0Var = new n0(constructor, arguments, z10, memberScope, refinedTypeFactory);
        return attributes.isEmpty() ? n0Var : new o0(n0Var, attributes);
    }

    public static final m0 h(List arguments, vb.i memberScope, a1 attributes, c1 constructor, boolean z10) {
        kotlin.jvm.internal.h.f(attributes, "attributes");
        kotlin.jvm.internal.h.f(constructor, "constructor");
        kotlin.jvm.internal.h.f(arguments, "arguments");
        kotlin.jvm.internal.h.f(memberScope, "memberScope");
        n0 n0Var = new n0(constructor, arguments, z10, memberScope, new g0(arguments, memberScope, attributes, constructor, z10));
        return attributes.isEmpty() ? n0Var : new o0(n0Var, attributes);
    }
}
