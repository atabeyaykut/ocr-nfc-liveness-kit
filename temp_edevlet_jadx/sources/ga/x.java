package ga;

import ga.f;
import ga.t0;
import ha.g;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Executable;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kb.d;

/* loaded from: classes2.dex */
public final class x extends h<Object> implements kotlin.jvm.internal.e<Object>, da.g<Object>, x9.a, x9.l, x9.b, x9.c, x9.d, x9.e, x9.f, x9.g, x9.h, x9.i, x9.j, x9.k, x9.p, x9.m, x9.n, x9.o, x9.q, x9.r, x9.s, x9.t, x9.u, x9.v, x9.w {

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f6127l = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(x.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(x.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(x.class), "defaultCaller", "getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

    /* renamed from: e, reason: collision with root package name */
    public final s f6128e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f6129g;

    /* renamed from: h, reason: collision with root package name */
    public final t0.a f6130h;

    /* renamed from: j, reason: collision with root package name */
    public final t0.b f6131j;

    /* renamed from: k, reason: collision with root package name */
    public final t0.b f6132k;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<ha.f<? extends Executable>> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final ha.f<? extends Executable> invoke() throws NoSuchMethodException, IOException, SecurityException, ClassNotFoundException {
            Object objM;
            ha.g aVar;
            lb.b bVar = x0.f6137a;
            x xVar = x.this;
            f fVarC = x0.c(xVar.o());
            boolean z10 = fVarC instanceof f.d;
            s sVar = xVar.f6128e;
            if (z10) {
                if (xVar.p()) {
                    Class<?> clsG = sVar.g();
                    List<da.j> parameters = xVar.getParameters();
                    ArrayList arrayList = new ArrayList(m9.n.Q0(parameters));
                    Iterator<T> it = parameters.iterator();
                    while (it.hasNext()) {
                        String name = ((da.j) it.next()).getName();
                        kotlin.jvm.internal.h.c(name);
                        arrayList.add(name);
                    }
                    return new ha.a(clsG, arrayList, 2);
                }
                String desc = ((f.d) fVarC).f5992a.f8814b;
                sVar.getClass();
                kotlin.jvm.internal.h.f(desc, "desc");
                Class<?> clsG2 = sVar.g();
                try {
                    Class[] clsArr = (Class[]) sVar.t(desc).toArray(new Class[0]);
                    objM = clsG2.getDeclaredConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
                } catch (NoSuchMethodException unused) {
                    objM = null;
                }
            } else if (fVarC instanceof f.e) {
                d.b bVar2 = ((f.e) fVarC).f5994a;
                objM = sVar.m(bVar2.f8813a, bVar2.f8814b);
            } else if (fVarC instanceof f.c) {
                objM = ((f.c) fVarC).f5991a;
            } else {
                if (!(fVarC instanceof f.b)) {
                    if (!(fVarC instanceof f.a)) {
                        throw new j7.p();
                    }
                    List<Method> list = ((f.a) fVarC).f5987a;
                    Class<?> clsG3 = sVar.g();
                    List<Method> list2 = list;
                    ArrayList arrayList2 = new ArrayList(m9.n.Q0(list2));
                    Iterator<T> it2 = list2.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(((Method) it2.next()).getName());
                    }
                    return new ha.a(clsG3, arrayList2, 2, 1, list);
                }
                objM = ((f.b) fVarC).f5989a;
            }
            if (objM instanceof Constructor) {
                aVar = x.r(xVar, (Constructor) objM, xVar.o(), false);
            } else {
                if (!(objM instanceof Method)) {
                    throw new l9.f("Could not compute caller for function: " + xVar.o() + " (member = " + objM + ')', 1);
                }
                Method method = (Method) objM;
                boolean zIsStatic = Modifier.isStatic(method.getModifiers());
                Object obj = xVar.f6129g;
                aVar = !zIsStatic ? xVar.q() ? new g.AbstractC0121g.a(method, b8.f.p(obj, xVar.o())) : new g.AbstractC0121g.d(method) : xVar.o().getAnnotations().n(z0.f6145a) != null ? xVar.q() ? new g.AbstractC0121g.b(method) : new g.AbstractC0121g.e(method) : xVar.q() ? new g.AbstractC0121g.c(method, b8.f.p(obj, xVar.o())) : new g.AbstractC0121g.f(method);
            }
            return b8.f.v(aVar, xVar.o(), false);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<ha.f<? extends Executable>> {
        public b() {
            super(0);
        }

        /* JADX WARN: Removed duplicated region for block: B:46:0x0178  */
        @Override // x9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final ha.f<? extends java.lang.reflect.Executable> invoke() throws java.lang.NoSuchMethodException, java.io.IOException, java.lang.SecurityException {
            /*
                Method dump skipped, instructions count: 419
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: ga.x.b.invoke():java.lang.Object");
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<ma.u> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f6136b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str) {
            super(0);
            this.f6136b = str;
        }

        @Override // x9.a
        public final ma.u invoke() throws IOException {
            x xVar = x.this;
            s sVar = xVar.f6128e;
            sVar.getClass();
            String name = this.f6136b;
            kotlin.jvm.internal.h.f(name, "name");
            String signature = xVar.f;
            kotlin.jvm.internal.h.f(signature, "signature");
            Collection<ma.u> collectionV1 = kotlin.jvm.internal.h.a(name, "<init>") ? m9.t.v1(sVar.n()) : sVar.o(lb.f.t(name));
            ArrayList arrayList = new ArrayList();
            for (Object obj : collectionV1) {
                if (kotlin.jvm.internal.h.a(x0.c((ma.u) obj).a(), signature)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.size() == 1) {
                return (ma.u) m9.t.p1(arrayList);
            }
            String strG1 = m9.t.g1(collectionV1, "\n", null, null, t.f6116a, 30);
            StringBuilder sb2 = new StringBuilder("Function '");
            sb2.append(name);
            sb2.append("' (JVM signature: ");
            sb2.append(signature);
            sb2.append(") not resolved in ");
            sb2.append(sVar);
            sb2.append(':');
            sb2.append(strG1.length() == 0 ? " no members found" : "\n".concat(strG1));
            throw new l9.f(sb2.toString(), 1);
        }
    }

    public x(s sVar, String str, String str2, ma.u uVar, Object obj) {
        this.f6128e = sVar;
        this.f = str2;
        this.f6129g = obj;
        this.f6130h = new t0.a(uVar, new c(str));
        this.f6131j = new t0.b(new a());
        this.f6132k = new t0.b(new b());
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final ha.g r(ga.x r1, java.lang.reflect.Constructor r2, ma.u r3, boolean r4) {
        /*
            if (r4 != 0) goto L8f
            r1.getClass()
            boolean r4 = r3 instanceof ma.d
            if (r4 == 0) goto Lc
            ma.d r3 = (ma.d) r3
            goto Ld
        Lc:
            r3 = 0
        Ld:
            if (r3 != 0) goto L10
            goto L70
        L10:
            ma.q r4 = r3.getVisibility()
            boolean r4 = ma.p.e(r4)
            if (r4 == 0) goto L1b
            goto L70
        L1b:
            ma.e r4 = r3.x()
            java.lang.String r0 = "constructorDescriptor.constructedClass"
            kotlin.jvm.internal.h.e(r4, r0)
            boolean r4 = ob.k.b(r4)
            if (r4 == 0) goto L2b
            goto L70
        L2b:
            ma.e r4 = r3.x()
            boolean r4 = ob.i.q(r4)
            if (r4 == 0) goto L36
            goto L70
        L36:
            java.util.List r3 = r3.g()
            java.lang.String r4 = "constructorDescriptor.valueParameters"
            kotlin.jvm.internal.h.e(r3, r4)
            java.lang.Iterable r3 = (java.lang.Iterable) r3
            boolean r4 = r3 instanceof java.util.Collection
            if (r4 == 0) goto L4f
            r4 = r3
            java.util.Collection r4 = (java.util.Collection) r4
            boolean r4 = r4.isEmpty()
            if (r4 == 0) goto L4f
            goto L70
        L4f:
            java.util.Iterator r3 = r3.iterator()
        L53:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L70
            java.lang.Object r4 = r3.next()
            ma.a1 r4 = (ma.a1) r4
            cc.e0 r4 = r4.getType()
            java.lang.String r0 = "it.type"
            kotlin.jvm.internal.h.e(r4, r0)
            boolean r4 = com.google.android.gms.internal.clearcut.d0.z(r4)
            if (r4 == 0) goto L53
            r3 = 1
            goto L71
        L70:
            r3 = 0
        L71:
            if (r3 == 0) goto L8f
            boolean r3 = r1.q()
            if (r3 == 0) goto L89
            ha.g$a r3 = new ha.g$a
            ma.u r4 = r1.o()
            java.lang.Object r1 = r1.f6129g
            java.lang.Object r1 = b8.f.p(r1, r4)
            r3.<init>(r2, r1)
            goto Laa
        L89:
            ha.g$b r3 = new ha.g$b
            r3.<init>(r2)
            goto Laa
        L8f:
            boolean r3 = r1.q()
            if (r3 == 0) goto La5
            ha.g$c r3 = new ha.g$c
            ma.u r4 = r1.o()
            java.lang.Object r1 = r1.f6129g
            java.lang.Object r1 = b8.f.p(r1, r4)
            r3.<init>(r2, r1)
            goto Laa
        La5:
            ha.g$d r3 = new ha.g$d
            r3.<init>(r2)
        Laa:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: ga.x.r(ga.x, java.lang.reflect.Constructor, ma.u, boolean):ha.g");
    }

    public final boolean equals(Object obj) {
        x xVarB = z0.b(obj);
        return xVarB != null && kotlin.jvm.internal.h.a(this.f6128e, xVarB.f6128e) && kotlin.jvm.internal.h.a(getName(), xVarB.getName()) && kotlin.jvm.internal.h.a(this.f, xVarB.f) && kotlin.jvm.internal.h.a(this.f6129g, xVarB.f6129g);
    }

    @Override // kotlin.jvm.internal.e
    public final int getArity() {
        return b8.f.H(k());
    }

    @Override // da.c
    public final String getName() {
        String strO = o().getName().o();
        kotlin.jvm.internal.h.e(strO, "descriptor.name.asString()");
        return strO;
    }

    public final int hashCode() {
        return this.f.hashCode() + ((getName().hashCode() + (this.f6128e.hashCode() * 31)) * 31);
    }

    @Override // x9.q
    public final Object i(Object obj, Object obj2, Object obj3) {
        return call(obj, obj2, obj3);
    }

    @Override // x9.a
    public final Object invoke() {
        return call(new Object[0]);
    }

    @Override // da.g
    public final boolean isExternal() {
        return o().isExternal();
    }

    @Override // da.g
    public final boolean isInfix() {
        return o().isInfix();
    }

    @Override // da.g
    public final boolean isInline() {
        return o().isInline();
    }

    @Override // da.g
    public final boolean isOperator() {
        return o().isOperator();
    }

    @Override // da.c
    public final boolean isSuspend() {
        return o().isSuspend();
    }

    @Override // ga.h
    public final ha.f<?> k() {
        da.m<Object> mVar = f6127l[1];
        Object objInvoke = this.f6131j.invoke();
        kotlin.jvm.internal.h.e(objInvoke, "<get-caller>(...)");
        return (ha.f) objInvoke;
    }

    @Override // ga.h
    public final s m() {
        return this.f6128e;
    }

    @Override // ga.h
    public final ha.f<?> n() {
        da.m<Object> mVar = f6127l[2];
        return (ha.f) this.f6132k.invoke();
    }

    @Override // ga.h
    public final boolean q() {
        return !kotlin.jvm.internal.h.a(this.f6129g, kotlin.jvm.internal.a.NO_RECEIVER);
    }

    @Override // ga.h
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public final ma.u o() {
        da.m<Object> mVar = f6127l[0];
        Object objInvoke = this.f6130h.invoke();
        kotlin.jvm.internal.h.e(objInvoke, "<get-descriptor>(...)");
        return (ma.u) objInvoke;
    }

    public final String toString() {
        nb.d dVar = v0.f6124a;
        return v0.b(o());
    }

    @Override // x9.l
    public final Object invoke(Object obj) {
        return call(obj);
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(Object obj, Object obj2) {
        return call(obj, obj2);
    }

    @Override // x9.r
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        return call(obj, obj2, obj3, obj4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public x(s container, ma.u descriptor) {
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        String strO = descriptor.getName().o();
        kotlin.jvm.internal.h.e(strO, "descriptor.name.asString()");
        this(container, strO, x0.c(descriptor).a(), descriptor, kotlin.jvm.internal.a.NO_RECEIVER);
    }
}
