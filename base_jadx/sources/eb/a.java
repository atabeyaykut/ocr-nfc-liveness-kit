package eb;

import cc.e0;
import eb.d;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import yb.g0;

/* loaded from: classes2.dex */
public abstract class a<A, C> extends d<A, C0078a<? extends A, ? extends C>> implements yb.d<A, C> {

    /* renamed from: b, reason: collision with root package name */
    public final bc.g<s, C0078a<A, C>> f5162b;

    /* renamed from: eb.a$a, reason: collision with other inner class name */
    public static final class C0078a<A, C> extends d.a<A> {

        /* renamed from: a, reason: collision with root package name */
        public final Map<v, List<A>> f5163a;

        /* renamed from: b, reason: collision with root package name */
        public final Map<v, C> f5164b;

        /* renamed from: c, reason: collision with root package name */
        public final Map<v, C> f5165c;

        public C0078a(HashMap map, HashMap map2, HashMap map3) {
            this.f5163a = map;
            this.f5164b = map2;
            this.f5165c = map3;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.p<C0078a<? extends A, ? extends C>, v, C> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f5166a = new b();

        public b() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(Object obj, v vVar) {
            C0078a loadConstantFromProperty = (C0078a) obj;
            v it = vVar;
            kotlin.jvm.internal.h.f(loadConstantFromProperty, "$this$loadConstantFromProperty");
            kotlin.jvm.internal.h.f(it, "it");
            return loadConstantFromProperty.f5165c.get(it);
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.p<C0078a<? extends A, ? extends C>, v, C> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f5167a = new c();

        public c() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(Object obj, v vVar) {
            C0078a loadConstantFromProperty = (C0078a) obj;
            v it = vVar;
            kotlin.jvm.internal.h.f(loadConstantFromProperty, "$this$loadConstantFromProperty");
            kotlin.jvm.internal.h.f(it, "it");
            return loadConstantFromProperty.f5164b.get(it);
        }
    }

    public a(bc.c cVar, ra.f fVar) {
        super(fVar);
        this.f5162b = cVar.g(new eb.c(this));
    }

    @Override // yb.d
    public final C d(g0 g0Var, gb.m proto, e0 e0Var) {
        kotlin.jvm.internal.h.f(proto, "proto");
        return t(g0Var, proto, yb.c.PROPERTY_GETTER, e0Var, b.f5166a);
    }

    @Override // yb.d
    public final C g(g0 g0Var, gb.m proto, e0 e0Var) {
        kotlin.jvm.internal.h.f(proto, "proto");
        return t(g0Var, proto, yb.c.PROPERTY, e0Var, c.f5167a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final C t(yb.g0 r7, gb.m r8, yb.c r9, cc.e0 r10, x9.p<? super eb.a.C0078a<? extends A, ? extends C>, ? super eb.v, ? extends C> r11) {
        /*
            r6 = this;
            r2 = 1
            r3 = 1
            ib.b$a r0 = ib.b.A
            int r1 = r8.f6394d
            java.lang.Boolean r4 = r0.c(r1)
            boolean r5 = kb.h.d(r8)
            r0 = r6
            r1 = r7
            eb.s r0 = r0.o(r1, r2, r3, r4, r5)
            r1 = 0
            if (r0 != 0) goto L2e
            boolean r0 = r7 instanceof yb.g0.a
            if (r0 == 0) goto L2d
            r0 = r7
            yb.g0$a r0 = (yb.g0.a) r0
            ma.r0 r0 = r0.f19410c
            boolean r2 = r0 instanceof eb.u
            if (r2 == 0) goto L27
            eb.u r0 = (eb.u) r0
            goto L28
        L27:
            r0 = r1
        L28:
            if (r0 == 0) goto L2d
            eb.s r0 = r0.f5236b
            goto L2e
        L2d:
            r0 = r1
        L2e:
            if (r0 != 0) goto L31
            return r1
        L31:
            fb.a r2 = r0.a()
            kb.e r2 = r2.f5554b
            kb.e r3 = eb.k.f5215e
            r2.getClass()
            java.lang.String r4 = "version"
            kotlin.jvm.internal.h.f(r3, r4)
            int r4 = r3.f7320b
            int r5 = r3.f7321c
            int r3 = r3.f7322d
            boolean r2 = r2.a(r4, r5, r3)
            ib.c r3 = r7.f19408a
            ib.g r7 = r7.f19409b
            eb.v r7 = eb.d.n(r8, r3, r7, r9, r2)
            if (r7 != 0) goto L56
            return r1
        L56:
            bc.g<eb.s, eb.a$a<A, C>> r8 = r6.f5162b
            bc.c$k r8 = (bc.c.k) r8
            java.lang.Object r8 = r8.invoke(r0)
            java.lang.Object r7 = r11.mo7invoke(r8, r7)
            if (r7 != 0) goto L65
            return r1
        L65:
            boolean r8 = ja.s.a(r10)
            if (r8 == 0) goto Lbe
            qb.g r7 = (qb.g) r7
            boolean r8 = r7 instanceof qb.d
            if (r8 == 0) goto L82
            qb.x r8 = new qb.x
            qb.d r7 = (qb.d) r7
            T r7 = r7.f13469a
            java.lang.Number r7 = (java.lang.Number) r7
            byte r7 = r7.byteValue()
            r8.<init>(r7)
        L80:
            r7 = r8
            goto Lbe
        L82:
            boolean r8 = r7 instanceof qb.v
            if (r8 == 0) goto L96
            qb.a0 r8 = new qb.a0
            qb.v r7 = (qb.v) r7
            T r7 = r7.f13469a
            java.lang.Number r7 = (java.lang.Number) r7
            short r7 = r7.shortValue()
            r8.<init>(r7)
            goto L80
        L96:
            boolean r8 = r7 instanceof qb.n
            if (r8 == 0) goto Laa
            qb.y r8 = new qb.y
            qb.n r7 = (qb.n) r7
            T r7 = r7.f13469a
            java.lang.Number r7 = (java.lang.Number) r7
            int r7 = r7.intValue()
            r8.<init>(r7)
            goto L80
        Laa:
            boolean r8 = r7 instanceof qb.t
            if (r8 == 0) goto Lbe
            qb.z r8 = new qb.z
            qb.t r7 = (qb.t) r7
            T r7 = r7.f13469a
            java.lang.Number r7 = (java.lang.Number) r7
            long r9 = r7.longValue()
            r8.<init>(r9)
            goto L80
        Lbe:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.a.t(yb.g0, gb.m, yb.c, cc.e0, x9.p):java.lang.Object");
    }
}
