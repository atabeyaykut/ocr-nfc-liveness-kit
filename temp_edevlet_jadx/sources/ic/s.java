package ic;

import ic.n;
import ic.u;
import ic.v;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import ma.a1;

/* loaded from: classes2.dex */
public final class s extends ic.b {

    /* renamed from: a, reason: collision with root package name */
    public static final s f7385a = new s();

    /* renamed from: b, reason: collision with root package name */
    public static final List<k> f7386b;

    public static final class a extends kotlin.jvm.internal.j implements x9.l<ma.u, String> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f7387a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final String invoke(ma.u uVar) {
            ma.u $receiver = uVar;
            kotlin.jvm.internal.h.f($receiver, "$this$$receiver");
            List<a1> valueParameters = $receiver.g();
            kotlin.jvm.internal.h.e(valueParameters, "valueParameters");
            a1 a1Var = (a1) m9.t.j1(valueParameters);
            boolean z10 = false;
            if (a1Var != null) {
                if (!sb.b.a(a1Var) && a1Var.g0() == null) {
                    z10 = true;
                }
            }
            s sVar = s.f7385a;
            if (z10) {
                return null;
            }
            return "last parameter should not have a default value or be a vararg";
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.l<ma.u, String> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f7388a = new b();

        public b() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0069  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0026  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String invoke(ma.u r5) {
            /*
                r4 = this;
                ma.u r5 = (ma.u) r5
                java.lang.String r0 = "$this$$receiver"
                kotlin.jvm.internal.h.f(r5, r0)
                ic.s r0 = ic.s.f7385a
                ma.j r0 = r5.b()
                java.lang.String r1 = "containingDeclaration"
                kotlin.jvm.internal.h.e(r0, r1)
                boolean r1 = r0 instanceof ma.e
                r2 = 1
                r3 = 0
                if (r1 == 0) goto L26
                ma.e r0 = (ma.e) r0
                lb.f r1 = ja.k.f8326e
                lb.d r1 = ja.o.a.f8369a
                boolean r0 = ja.k.c(r0, r1)
                if (r0 == 0) goto L26
                r0 = 1
                goto L27
            L26:
                r0 = 0
            L27:
                if (r0 != 0) goto L73
                java.util.Collection r5 = r5.e()
                java.lang.String r0 = "overriddenDescriptors"
                kotlin.jvm.internal.h.e(r5, r0)
                java.lang.Iterable r5 = (java.lang.Iterable) r5
                r0 = r5
                java.util.Collection r0 = (java.util.Collection) r0
                boolean r0 = r0.isEmpty()
                if (r0 == 0) goto L3e
                goto L6e
            L3e:
                java.util.Iterator r5 = r5.iterator()
            L42:
                boolean r0 = r5.hasNext()
                if (r0 == 0) goto L6e
                java.lang.Object r0 = r5.next()
                ma.u r0 = (ma.u) r0
                ma.j r0 = r0.b()
                java.lang.String r1 = "it.containingDeclaration"
                kotlin.jvm.internal.h.e(r0, r1)
                boolean r1 = r0 instanceof ma.e
                if (r1 == 0) goto L69
                ma.e r0 = (ma.e) r0
                lb.f r1 = ja.k.f8326e
                lb.d r1 = ja.o.a.f8369a
                boolean r0 = ja.k.c(r0, r1)
                if (r0 == 0) goto L69
                r0 = 1
                goto L6a
            L69:
                r0 = 0
            L6a:
                if (r0 == 0) goto L42
                r5 = 1
                goto L6f
            L6e:
                r5 = 0
            L6f:
                if (r5 == 0) goto L72
                goto L73
            L72:
                r2 = 0
            L73:
                if (r2 != 0) goto L78
                java.lang.String r5 = "must override ''equals()'' in Any"
                goto L79
            L78:
                r5 = 0
            L79:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: ic.s.b.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.l<ma.u, String> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f7389a = new c();

        public c() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x0072  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0075  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String invoke(ma.u r8) {
            /*
                r7 = this;
                ma.u r8 = (ma.u) r8
                java.lang.String r0 = "$this$$receiver"
                kotlin.jvm.internal.h.f(r8, r0)
                ma.o0 r0 = r8.a0()
                if (r0 != 0) goto L11
                ma.o0 r0 = r8.h0()
            L11:
                ic.s r1 = ic.s.f7385a
                r2 = 0
                r3 = 0
                if (r0 == 0) goto L76
                cc.e0 r4 = r8.getReturnType()
                if (r4 == 0) goto L2b
                cc.e0 r5 = r0.getType()
                java.lang.String r6 = "receiver.type"
                kotlin.jvm.internal.h.e(r5, r6)
                boolean r4 = c5.y.u(r4, r5)
                goto L2c
            L2b:
                r4 = 0
            L2c:
                if (r4 != 0) goto L75
                r1.getClass()
                wb.g r0 = r0.getValue()
                java.lang.String r1 = "receiver.value"
                kotlin.jvm.internal.h.e(r0, r1)
                boolean r1 = r0 instanceof wb.e
                if (r1 != 0) goto L3f
                goto L72
            L3f:
                wb.e r0 = (wb.e) r0
                ma.e r0 = r0.f18861a
                boolean r1 = r0.G()
                if (r1 != 0) goto L4a
                goto L72
            L4a:
                lb.b r1 = sb.b.f(r0)
                if (r1 != 0) goto L51
                goto L72
            L51:
                ma.b0 r0 = sb.b.j(r0)
                ma.g r0 = ma.t.b(r0, r1)
                boolean r1 = r0 instanceof ma.v0
                if (r1 != 0) goto L5e
                r0 = r3
            L5e:
                ma.v0 r0 = (ma.v0) r0
                if (r0 != 0) goto L63
                goto L72
            L63:
                cc.e0 r8 = r8.getReturnType()
                if (r8 == 0) goto L72
                cc.m0 r0 = r0.R()
                boolean r8 = c5.y.u(r8, r0)
                goto L73
            L72:
                r8 = 0
            L73:
                if (r8 == 0) goto L76
            L75:
                r2 = 1
            L76:
                if (r2 != 0) goto L7a
                java.lang.String r3 = "receiver must be a supertype of the return type"
            L7a:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: ic.s.c.invoke(java.lang.Object):java.lang.Object");
        }
    }

    static {
        lb.f fVar = t.f7397i;
        n.b bVar = n.b.f7378b;
        f[] fVarArr = {bVar, new v.a(1)};
        lb.f fVar2 = t.f7398j;
        f[] fVarArr2 = {bVar, new v.a(2)};
        lb.f fVar3 = t.f7390a;
        p pVar = p.f7380a;
        m mVar = m.f7375a;
        f[] fVarArr3 = {bVar, pVar, new v.a(2), mVar};
        lb.f fVar4 = t.f7391b;
        f[] fVarArr4 = {bVar, pVar, new v.a(3), mVar};
        lb.f fVar5 = t.f7392c;
        f[] fVarArr5 = {bVar, pVar, new v.b(), mVar};
        lb.f fVar6 = t.f7395g;
        f[] fVarArr6 = {bVar};
        lb.f fVar7 = t.f;
        v.d dVar = v.d.f7421b;
        u.a aVar = u.a.f7411c;
        f[] fVarArr7 = {bVar, dVar, pVar, aVar};
        lb.f fVar8 = t.f7396h;
        v.c cVar = v.c.f7420b;
        f[] fVarArr8 = {bVar, cVar};
        lb.f fVar9 = t.f7399k;
        f[] fVarArr9 = {bVar, cVar};
        lb.f fVar10 = t.f7400l;
        f[] fVarArr10 = {bVar, cVar, aVar};
        lb.f fVar11 = t.f7404p;
        f[] fVarArr11 = {bVar, dVar, pVar};
        lb.f fVar12 = t.f7405q;
        f[] fVarArr12 = {bVar, dVar, pVar};
        lb.f fVar13 = t.f7393d;
        f[] fVarArr13 = {n.a.f7377b};
        lb.f fVar14 = t.f7394e;
        f[] fVarArr14 = {bVar, u.b.f7413c, dVar, pVar};
        Set<lb.f> set = t.f7407s;
        f[] fVarArr15 = {bVar, dVar, pVar};
        Set<lb.f> set2 = t.f7406r;
        f[] fVarArr16 = {bVar, cVar};
        List listT = b8.f.T(t.f7402n, t.f7403o);
        f[] fVarArr17 = {bVar};
        Set<lb.f> set3 = t.f7408t;
        f[] fVarArr18 = {bVar, u.c.f7415c, dVar, pVar};
        mc.d regex = t.f7401m;
        f[] fVarArr19 = {bVar, cVar};
        i additionalChecks = i.f7367a;
        kotlin.jvm.internal.h.f(regex, "regex");
        kotlin.jvm.internal.h.f(additionalChecks, "additionalChecks");
        f7386b = b8.f.T(new k(fVar, fVarArr), new k(fVar2, fVarArr2, a.f7387a), new k(fVar3, fVarArr3), new k(fVar4, fVarArr4), new k(fVar5, fVarArr5), new k(fVar6, fVarArr6), new k(fVar7, fVarArr7), new k(fVar8, fVarArr8), new k(fVar9, fVarArr9), new k(fVar10, fVarArr10), new k(fVar11, fVarArr11), new k(fVar12, fVarArr12), new k(fVar13, fVarArr13, b.f7388a), new k(fVar14, fVarArr14), new k(set, fVarArr15), new k(set2, fVarArr16), new k(listT, fVarArr17, c.f7389a), new k(set3, fVarArr18), new k(null, regex, null, additionalChecks, (f[]) Arrays.copyOf(fVarArr19, 2)));
    }
}
