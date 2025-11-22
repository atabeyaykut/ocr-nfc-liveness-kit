package dc;

import c5.y;
import cc.c0;
import cc.c1;
import cc.e0;
import cc.e1;
import cc.f0;
import cc.i1;
import cc.k1;
import cc.l0;
import cc.m0;
import cc.p0;
import cc.p1;
import cc.q0;
import cc.q1;
import cc.s1;
import cc.t1;
import cc.u0;
import ja.o;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.w;
import ma.a0;
import ma.w0;

/* loaded from: classes2.dex */
public interface b extends fc.n {

    public static final class a {
        public static int A(fc.k receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof i1) {
                t1 t1VarB = ((i1) receiver).b();
                kotlin.jvm.internal.h.e(t1VarB, "this.projectionKind");
                return b8.f.r(t1VarB);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static int B(fc.m receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof w0) {
                t1 t1VarI = ((w0) receiver).I();
                kotlin.jvm.internal.h.e(t1VarI, "this.variance");
                return b8.f.r(t1VarI);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static boolean C(fc.h receiver, lb.c cVar) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof e0) {
                return ((e0) receiver).getAnnotations().P(cVar);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static boolean D(fc.m mVar, fc.l lVar) {
            if (!(mVar instanceof w0)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + mVar + ", " + w.a(mVar.getClass())).toString());
            }
            if (lVar == null ? true : lVar instanceof c1) {
                return y.q((w0) mVar, (c1) lVar, null);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + mVar + ", " + w.a(mVar.getClass())).toString());
        }

        public static boolean E(fc.i a10, fc.i b10) {
            kotlin.jvm.internal.h.f(a10, "a");
            kotlin.jvm.internal.h.f(b10, "b");
            if (!(a10 instanceof m0)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + a10 + ", " + w.a(a10.getClass())).toString());
            }
            if (b10 instanceof m0) {
                return ((m0) a10).K0() == ((m0) b10).K0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + b10 + ", " + w.a(b10.getClass())).toString());
        }

        public static boolean F(fc.l receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                return ja.k.J((c1) receiver, o.a.f8369a);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static boolean G(fc.l receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                return ((c1) receiver).n() instanceof ma.e;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static boolean H(fc.l lVar) {
            if (lVar instanceof c1) {
                ma.g gVarN = ((c1) lVar).n();
                ma.e eVar = gVarN instanceof ma.e ? (ma.e) gVarN : null;
                if (eVar == null) {
                    return false;
                }
                return (!(eVar.j() == a0.FINAL && eVar.h() != 3) || eVar.h() == 4 || eVar.h() == 5) ? false : true;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + lVar + ", " + w.a(lVar.getClass())).toString());
        }

        public static boolean I(fc.l receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                return ((c1) receiver).o();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static boolean J(fc.h receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof e0) {
                return c5.v.y((e0) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static boolean K(fc.l receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                ma.g gVarN = ((c1) receiver).n();
                ma.e eVar = gVarN instanceof ma.e ? (ma.e) gVarN : null;
                return (eVar != null ? eVar.y0() : null) instanceof ma.v;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static boolean L(fc.l receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                return receiver instanceof qb.o;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static boolean M(fc.l receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                return receiver instanceof c0;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static boolean N(fc.i receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof m0) {
                return ((m0) receiver).N0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static boolean O(fc.l receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                return ja.k.J((c1) receiver, o.a.f8371b);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static boolean P(fc.h receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof e0) {
                return q1.g((e0) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static boolean Q(fc.i receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof e0) {
                return ja.k.G((e0) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static boolean R(fc.d dVar) {
            if (dVar instanceof h) {
                return ((h) dVar).f4833g;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + dVar + ", " + w.a(dVar.getClass())).toString());
        }

        public static boolean S(fc.k receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof i1) {
                return ((i1) receiver).c();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static boolean T(fc.i receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof m0) {
                e0 e0Var = (e0) receiver;
                if (e0Var instanceof cc.d) {
                    return true;
                }
                return (e0Var instanceof cc.q) && (((cc.q) e0Var).f2346b instanceof cc.d);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static boolean U(fc.i receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof m0) {
                e0 e0Var = (e0) receiver;
                if (e0Var instanceof u0) {
                    return true;
                }
                return (e0Var instanceof cc.q) && (((cc.q) e0Var).f2346b instanceof u0);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static boolean V(fc.l receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                ma.g gVarN = ((c1) receiver).n();
                return gVarN != null && ja.k.K(gVarN);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static m0 W(fc.f fVar) {
            if (fVar instanceof cc.y) {
                return ((cc.y) fVar).f2377b;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + fVar + ", " + w.a(fVar.getClass())).toString());
        }

        public static s1 X(fc.d dVar) {
            if (dVar instanceof h) {
                return ((h) dVar).f4831d;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + dVar + ", " + w.a(dVar.getClass())).toString());
        }

        public static s1 Y(fc.h hVar) {
            if (hVar instanceof s1) {
                return q0.a((s1) hVar, false);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + hVar + ", " + w.a(hVar.getClass())).toString());
        }

        public static m0 Z(fc.e eVar) {
            if (eVar instanceof cc.q) {
                return ((cc.q) eVar).f2346b;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + eVar + ", " + w.a(eVar.getClass())).toString());
        }

        public static boolean a(fc.l c12, fc.l c22) {
            kotlin.jvm.internal.h.f(c12, "c1");
            kotlin.jvm.internal.h.f(c22, "c2");
            if (!(c12 instanceof c1)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + c12 + ", " + w.a(c12.getClass())).toString());
            }
            if (c22 instanceof c1) {
                return kotlin.jvm.internal.h.a(c12, c22);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + c22 + ", " + w.a(c22.getClass())).toString());
        }

        public static int a0(fc.l receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                return ((c1) receiver).getParameters().size();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static int b(fc.h receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof e0) {
                return ((e0) receiver).K0().size();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static Set b0(b bVar, fc.i receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            c1 c1VarF = bVar.f(receiver);
            if (c1VarF instanceof qb.o) {
                return ((qb.o) c1VarF).f13477c;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static fc.j c(fc.i receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof m0) {
                return (fc.j) receiver;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static i1 c0(fc.c receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof j) {
                return ((j) receiver).f4835a;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static fc.d d(b bVar, fc.i receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof m0) {
                if (receiver instanceof p0) {
                    return bVar.b(((p0) receiver).f2342b);
                }
                if (receiver instanceof h) {
                    return (h) receiver;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static c d0(b bVar, fc.i iVar) {
            if (iVar instanceof m0) {
                return new c(bVar, p1.e(e1.f2291b.a((e0) iVar)));
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + iVar + ", " + w.a(iVar.getClass())).toString());
        }

        public static cc.q e(fc.i receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof m0) {
                if (receiver instanceof cc.q) {
                    return (cc.q) receiver;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static Collection e0(fc.l receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                Collection<e0> collectionL = ((c1) receiver).l();
                kotlin.jvm.internal.h.e(collectionL, "this.supertypes");
                return collectionL;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static cc.v f(cc.y yVar) {
            if (yVar instanceof cc.v) {
                return (cc.v) yVar;
            }
            return null;
        }

        public static c1 f0(fc.i receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof m0) {
                return ((m0) receiver).M0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static cc.y g(fc.h receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof e0) {
                s1 s1VarP0 = ((e0) receiver).P0();
                if (s1VarP0 instanceof cc.y) {
                    return (cc.y) s1VarP0;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static j g0(fc.d receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof h) {
                return ((h) receiver).f4830c;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static l0 h(cc.y yVar) {
            if (yVar instanceof l0) {
                return (l0) yVar;
            }
            return null;
        }

        public static m0 h0(fc.f fVar) {
            if (fVar instanceof cc.y) {
                return ((cc.y) fVar).f2378c;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + fVar + ", " + w.a(fVar.getClass())).toString());
        }

        public static m0 i(fc.h receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof e0) {
                s1 s1VarP0 = ((e0) receiver).P0();
                if (s1VarP0 instanceof m0) {
                    return (m0) s1VarP0;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static m0 i0(fc.i receiver, boolean z10) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof m0) {
                return ((m0) receiver).Q0(z10);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static k1 j(fc.h receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof e0) {
                return y.d((e0) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static fc.h j0(b bVar, fc.h hVar) {
            if (hVar instanceof fc.i) {
                return bVar.a((fc.i) hVar, true);
            }
            if (!(hVar instanceof fc.f)) {
                throw new IllegalStateException("sealed".toString());
            }
            fc.f fVar = (fc.f) hVar;
            return bVar.h0(bVar.a(bVar.e(fVar), true), bVar.a(bVar.c(fVar), true));
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static cc.m0 k(fc.i r22) {
            /*
                Method dump skipped, instructions count: 440
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: dc.b.a.k(fc.i):cc.m0");
        }

        public static fc.b l(fc.d receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof h) {
                return ((h) receiver).f4829b;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static s1 m(b bVar, fc.i lowerBound, fc.i upperBound) {
            kotlin.jvm.internal.h.f(lowerBound, "lowerBound");
            kotlin.jvm.internal.h.f(upperBound, "upperBound");
            if (!(lowerBound instanceof m0)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + bVar + ", " + w.a(bVar.getClass())).toString());
            }
            if (upperBound instanceof m0) {
                return f0.c((m0) lowerBound, (m0) upperBound);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + bVar + ", " + w.a(bVar.getClass())).toString());
        }

        public static fc.k n(fc.h receiver, int r22) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof e0) {
                return ((e0) receiver).K0().get(r22);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static List o(fc.h receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof e0) {
                return ((e0) receiver).K0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static lb.d p(fc.l receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                ma.g gVarN = ((c1) receiver).n();
                kotlin.jvm.internal.h.d(gVarN, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return sb.b.h((ma.e) gVarN);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static fc.m q(fc.l receiver, int r22) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                w0 w0Var = ((c1) receiver).getParameters().get(r22);
                kotlin.jvm.internal.h.e(w0Var, "this.parameters[index]");
                return w0Var;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static List r(c1 c1Var) {
            List<w0> parameters = c1Var.getParameters();
            kotlin.jvm.internal.h.e(parameters, "this.parameters");
            return parameters;
        }

        public static ja.l s(fc.l receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                ma.g gVarN = ((c1) receiver).n();
                kotlin.jvm.internal.h.d(gVarN, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return ja.k.r((ma.e) gVarN);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static ja.l t(fc.l receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                ma.g gVarN = ((c1) receiver).n();
                kotlin.jvm.internal.h.d(gVarN, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return ja.k.t((ma.e) gVarN);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static e0 u(fc.m mVar) {
            if (mVar instanceof w0) {
                return y.p((w0) mVar);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + mVar + ", " + w.a(mVar.getClass())).toString());
        }

        public static s1 v(fc.k receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof i1) {
                return ((i1) receiver).getType().P0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static w0 w(fc.p pVar) {
            if (pVar instanceof n) {
                return ((n) pVar).a();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + pVar + ", " + w.a(pVar.getClass())).toString());
        }

        public static w0 x(fc.l receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof c1) {
                ma.g gVarN = ((c1) receiver).n();
                if (gVarN instanceof w0) {
                    return (w0) gVarN;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static m0 y(fc.h receiver) {
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            if (receiver instanceof e0) {
                return ob.k.e((e0) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + w.a(receiver.getClass())).toString());
        }

        public static List z(fc.m mVar) {
            if (mVar instanceof w0) {
                List<e0> upperBounds = ((w0) mVar).getUpperBounds();
                kotlin.jvm.internal.h.e(upperBounds, "this.upperBounds");
                return upperBounds;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + mVar + ", " + w.a(mVar.getClass())).toString());
        }
    }

    @Override // fc.n
    m0 a(fc.i iVar, boolean z10);

    @Override // fc.n
    fc.d b(fc.i iVar);

    @Override // fc.n
    m0 c(fc.f fVar);

    @Override // fc.n
    m0 d(fc.h hVar);

    @Override // fc.n
    m0 e(fc.f fVar);

    @Override // fc.n
    c1 f(fc.i iVar);

    s1 h0(fc.i iVar, fc.i iVar2);
}
