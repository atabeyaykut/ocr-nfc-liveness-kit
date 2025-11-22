package ga;

import da.h;
import ga.g;
import ga.t0;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.TreeMap;
import java.util.regex.Matcher;
import jb.a;
import mc.c;
import na.h;

/* loaded from: classes2.dex */
public abstract class l0<V> extends h<V> implements da.m<V> {

    /* renamed from: l, reason: collision with root package name */
    public static final Object f6035l = new Object();

    /* renamed from: e, reason: collision with root package name */
    public final s f6036e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f6037g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f6038h;

    /* renamed from: j, reason: collision with root package name */
    public final t0.b<Field> f6039j;

    /* renamed from: k, reason: collision with root package name */
    public final t0.a<ma.l0> f6040k;

    public static abstract class a<PropertyType, ReturnType> extends h<ReturnType> implements da.g<ReturnType> {
        @Override // da.g
        public final boolean isExternal() {
            return r().isExternal();
        }

        @Override // da.g
        public final boolean isInfix() {
            return r().isInfix();
        }

        @Override // da.g
        public final boolean isInline() {
            return r().isInline();
        }

        @Override // da.g
        public final boolean isOperator() {
            return r().isOperator();
        }

        @Override // da.c
        public final boolean isSuspend() {
            return r().isSuspend();
        }

        @Override // ga.h
        public final s m() {
            return s().f6036e;
        }

        @Override // ga.h
        public final ha.f<?> n() {
            return null;
        }

        @Override // ga.h
        public final boolean q() {
            return s().q();
        }

        public abstract ma.k0 r();

        public abstract l0<PropertyType> s();
    }

    public static abstract class b<V> extends a<V, V> {

        /* renamed from: g, reason: collision with root package name */
        public static final /* synthetic */ da.m<Object>[] f6041g = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(b.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(b.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

        /* renamed from: e, reason: collision with root package name */
        public final t0.a f6042e = t0.c(new C0100b(this));
        public final t0.b f = t0.b(new a(this));

        public static final class a extends kotlin.jvm.internal.j implements x9.a<ha.f<?>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ b<V> f6043a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(b<? extends V> bVar) {
                super(0);
                this.f6043a = bVar;
            }

            @Override // x9.a
            public final ha.f<?> invoke() {
                return m0.a(this.f6043a, true);
            }
        }

        /* renamed from: ga.l0$b$b, reason: collision with other inner class name */
        public static final class C0100b extends kotlin.jvm.internal.j implements x9.a<ma.m0> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ b<V> f6044a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0100b(b<? extends V> bVar) {
                super(0);
                this.f6044a = bVar;
            }

            @Override // x9.a
            public final ma.m0 invoke() {
                b<V> bVar = this.f6044a;
                pa.m0 m0VarL = bVar.s().o().l();
                return m0VarL == null ? ob.h.c(bVar.s().o(), h.a.f10653a) : m0VarL;
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof b) && kotlin.jvm.internal.h.a(s(), ((b) obj).s());
        }

        @Override // da.c
        public final String getName() {
            return android.support.v4.media.a.h(new StringBuilder("<get-"), s().f, '>');
        }

        public final int hashCode() {
            return s().hashCode();
        }

        @Override // ga.h
        public final ha.f<?> k() {
            da.m<Object> mVar = f6041g[1];
            Object objInvoke = this.f.invoke();
            kotlin.jvm.internal.h.e(objInvoke, "<get-caller>(...)");
            return (ha.f) objInvoke;
        }

        @Override // ga.h
        public final ma.b o() {
            da.m<Object> mVar = f6041g[0];
            Object objInvoke = this.f6042e.invoke();
            kotlin.jvm.internal.h.e(objInvoke, "<get-descriptor>(...)");
            return (ma.m0) objInvoke;
        }

        @Override // ga.l0.a
        public final ma.k0 r() {
            da.m<Object> mVar = f6041g[0];
            Object objInvoke = this.f6042e.invoke();
            kotlin.jvm.internal.h.e(objInvoke, "<get-descriptor>(...)");
            return (ma.m0) objInvoke;
        }

        public final String toString() {
            return "getter of " + s();
        }
    }

    public static abstract class c<V> extends a<V, l9.m> implements h.a<V> {

        /* renamed from: g, reason: collision with root package name */
        public static final /* synthetic */ da.m<Object>[] f6045g = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(c.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(c.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

        /* renamed from: e, reason: collision with root package name */
        public final t0.a f6046e = t0.c(new b(this));
        public final t0.b f = t0.b(new a(this));

        public static final class a extends kotlin.jvm.internal.j implements x9.a<ha.f<?>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ c<V> f6047a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(c<V> cVar) {
                super(0);
                this.f6047a = cVar;
            }

            @Override // x9.a
            public final ha.f<?> invoke() {
                return m0.a(this.f6047a, false);
            }
        }

        public static final class b extends kotlin.jvm.internal.j implements x9.a<ma.n0> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ c<V> f6048a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(c<V> cVar) {
                super(0);
                this.f6048a = cVar;
            }

            @Override // x9.a
            public final ma.n0 invoke() {
                c<V> cVar = this.f6048a;
                ma.n0 n0VarF = cVar.s().o().f();
                return n0VarF == null ? ob.h.d(cVar.s().o(), h.a.f10653a) : n0VarF;
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof c) && kotlin.jvm.internal.h.a(s(), ((c) obj).s());
        }

        @Override // da.c
        public final String getName() {
            return android.support.v4.media.a.h(new StringBuilder("<set-"), s().f, '>');
        }

        public final int hashCode() {
            return s().hashCode();
        }

        @Override // ga.h
        public final ha.f<?> k() {
            da.m<Object> mVar = f6045g[1];
            Object objInvoke = this.f.invoke();
            kotlin.jvm.internal.h.e(objInvoke, "<get-caller>(...)");
            return (ha.f) objInvoke;
        }

        @Override // ga.h
        public final ma.b o() {
            da.m<Object> mVar = f6045g[0];
            Object objInvoke = this.f6046e.invoke();
            kotlin.jvm.internal.h.e(objInvoke, "<get-descriptor>(...)");
            return (ma.n0) objInvoke;
        }

        @Override // ga.l0.a
        public final ma.k0 r() {
            da.m<Object> mVar = f6045g[0];
            Object objInvoke = this.f6046e.invoke();
            kotlin.jvm.internal.h.e(objInvoke, "<get-descriptor>(...)");
            return (ma.n0) objInvoke;
        }

        public final String toString() {
            return "setter of " + s();
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.a<ma.l0> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ l0<V> f6049a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public d(l0<? extends V> l0Var) {
            super(0);
            this.f6049a = l0Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // x9.a
        public final ma.l0 invoke() throws IOException {
            Object objP1;
            l0<V> l0Var = this.f6049a;
            s sVar = l0Var.f6036e;
            sVar.getClass();
            String name = l0Var.f;
            kotlin.jvm.internal.h.f(name, "name");
            String signature = l0Var.f6037g;
            kotlin.jvm.internal.h.f(signature, "signature");
            mc.d dVar = s.f6111a;
            dVar.getClass();
            Matcher matcher = dVar.f10370a.matcher(signature);
            kotlin.jvm.internal.h.e(matcher, "nativePattern.matcher(input)");
            mc.c cVar = !matcher.matches() ? null : new mc.c(matcher, signature);
            if (cVar != null) {
                String str = (String) ((c.a) cVar.a()).get(1);
                ma.l0 l0VarP = sVar.p(Integer.parseInt(str));
                if (l0VarP != null) {
                    return l0VarP;
                }
                StringBuilder sbL = android.support.v4.media.a.l("Local property #", str, " not found in ");
                sbL.append(sVar.g());
                throw new l9.f(sbL.toString(), 1);
            }
            Collection<ma.l0> collectionS = sVar.s(lb.f.t(name));
            ArrayList arrayList = new ArrayList();
            for (Object obj : collectionS) {
                if (kotlin.jvm.internal.h.a(x0.b((ma.l0) obj).a(), signature)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                throw new l9.f("Property '" + name + "' (JVM signature: " + signature + ") not resolved in " + sVar, 1);
            }
            if (arrayList.size() != 1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    ma.q visibility = ((ma.l0) next).getVisibility();
                    Object arrayList2 = linkedHashMap.get(visibility);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                        linkedHashMap.put(visibility, arrayList2);
                    }
                    ((List) arrayList2).add(next);
                }
                TreeMap treeMap = new TreeMap(new r(v.f6123a));
                treeMap.putAll(linkedHashMap);
                Collection<V> collectionValues = treeMap.values();
                kotlin.jvm.internal.h.e(collectionValues, "properties\n             …\n                }.values");
                List list = (List) m9.t.h1(collectionValues);
                if (list.size() != 1) {
                    String strG1 = m9.t.g1(sVar.s(lb.f.t(name)), "\n", null, null, u.f6122a, 30);
                    StringBuilder sb2 = new StringBuilder("Property '");
                    sb2.append(name);
                    sb2.append("' (JVM signature: ");
                    sb2.append(signature);
                    sb2.append(") not resolved in ");
                    sb2.append(sVar);
                    sb2.append(':');
                    sb2.append(strG1.length() == 0 ? " no members found" : "\n".concat(strG1));
                    throw new l9.f(sb2.toString(), 1);
                }
                objP1 = m9.t.a1(list);
            } else {
                objP1 = m9.t.p1(arrayList);
            }
            return (ma.l0) objP1;
        }
    }

    public static final class e extends kotlin.jvm.internal.j implements x9.a<Field> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ l0<V> f6050a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public e(l0<? extends V> l0Var) {
            super(0);
            this.f6050a = l0Var;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x008e  */
        @Override // x9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.reflect.Field invoke() {
            /*
                r10 = this;
                lb.b r0 = ga.x0.f6137a
                ga.l0<V> r0 = r10.f6050a
                ma.l0 r1 = r0.o()
                ga.g r1 = ga.x0.b(r1)
                boolean r2 = r1 instanceof ga.g.c
                r3 = 0
                if (r2 == 0) goto Lc7
                ga.g$c r1 = (ga.g.c) r1
                mb.f r2 = kb.h.f8820a
                gb.m r2 = r1.f6005b
                ib.c r4 = r1.f6007d
                ib.g r5 = r1.f6008e
                r6 = 1
                kb.d$a r4 = kb.h.b(r2, r4, r5, r6)
                if (r4 == 0) goto Ld9
                r5 = 0
                ma.l0 r1 = r1.f6004a
                if (r1 == 0) goto Lc3
                ma.b$a r7 = r1.k0()
                ma.b$a r8 = ma.b.a.FAKE_OVERRIDE
                if (r7 != r8) goto L30
                goto L8e
            L30:
                ma.j r7 = r1.b()
                if (r7 == 0) goto Lbf
                boolean r8 = ob.i.l(r7)
                if (r8 == 0) goto L5f
                ma.j r8 = r7.b()
                boolean r9 = ob.i.n(r8, r6)
                if (r9 != 0) goto L50
                r9 = 3
                boolean r8 = ob.i.n(r8, r9)
                if (r8 == 0) goto L4e
                goto L50
            L4e:
                r8 = 0
                goto L51
            L50:
                r8 = 1
            L51:
                if (r8 == 0) goto L5f
                ma.e r7 = (ma.e) r7
                java.util.LinkedHashSet r8 = ja.c.f8320a
                boolean r7 = c5.v.A(r7)
                if (r7 != 0) goto L5f
                r7 = 1
                goto L60
            L5f:
                r7 = 0
            L60:
                if (r7 == 0) goto L63
                goto L8f
            L63:
                ma.j r7 = r1.b()
                boolean r7 = ob.i.l(r7)
                if (r7 == 0) goto L8e
                ma.s r7 = r1.n0()
                if (r7 == 0) goto L81
                na.h r7 = r7.getAnnotations()
                lb.c r8 = va.w.f18381a
                boolean r7 = r7.P(r8)
                if (r7 == 0) goto L81
                r7 = 1
                goto L8b
            L81:
                na.h r7 = r1.getAnnotations()
                lb.c r8 = va.w.f18381a
                boolean r7 = r7.P(r8)
            L8b:
                if (r7 == 0) goto L8e
                goto L8f
            L8e:
                r6 = 0
            L8f:
                ga.s r0 = r0.f6036e
                if (r6 != 0) goto Lae
                boolean r2 = kb.h.d(r2)
                if (r2 == 0) goto L9a
                goto Lae
            L9a:
                ma.j r1 = r1.b()
                boolean r2 = r1 instanceof ma.e
                if (r2 == 0) goto La9
                ma.e r1 = (ma.e) r1
                java.lang.Class r0 = ga.z0.j(r1)
                goto Lb6
            La9:
                java.lang.Class r0 = r0.g()
                goto Lb6
            Lae:
                java.lang.Class r0 = r0.g()
                java.lang.Class r0 = r0.getEnclosingClass()
            Lb6:
                if (r0 == 0) goto Ld9
                java.lang.String r1 = r4.f8811a     // Catch: java.lang.NoSuchFieldException -> Ld9
                java.lang.reflect.Field r3 = r0.getDeclaredField(r1)     // Catch: java.lang.NoSuchFieldException -> Ld9
                goto Ld9
            Lbf:
                va.j.a(r6)
                throw r3
            Lc3:
                va.j.a(r5)
                throw r3
            Lc7:
                boolean r0 = r1 instanceof ga.g.a
                if (r0 == 0) goto Ld0
                ga.g$a r1 = (ga.g.a) r1
                java.lang.reflect.Field r3 = r1.f6001a
                goto Ld9
            Ld0:
                boolean r0 = r1 instanceof ga.g.b
                if (r0 == 0) goto Ld5
                goto Ld9
            Ld5:
                boolean r0 = r1 instanceof ga.g.d
                if (r0 == 0) goto Lda
            Ld9:
                return r3
            Lda:
                j7.p r0 = new j7.p
                r0.<init>()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: ga.l0.e.invoke():java.lang.Object");
        }
    }

    /* JADX WARN: 'thıs' call moved to the top of the method (can break code semantics) */
    public l0(s container, String name, String signature, Object obj) {
        this(container, name, signature, null, obj);
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(name, "name");
        kotlin.jvm.internal.h.f(signature, "signature");
    }

    public l0(s sVar, String str, String str2, ma.l0 l0Var, Object obj) {
        this.f6036e = sVar;
        this.f = str;
        this.f6037g = str2;
        this.f6038h = obj;
        this.f6039j = new t0.b<>(new e(this));
        this.f6040k = new t0.a<>(l0Var, new d(this));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public l0(s container, ma.l0 descriptor) {
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        String strO = descriptor.getName().o();
        kotlin.jvm.internal.h.e(strO, "descriptor.name.asString()");
        this(container, strO, x0.b(descriptor).a(), descriptor, kotlin.jvm.internal.a.NO_RECEIVER);
    }

    public final boolean equals(Object obj) {
        l0<?> l0VarC = z0.c(obj);
        return l0VarC != null && kotlin.jvm.internal.h.a(this.f6036e, l0VarC.f6036e) && kotlin.jvm.internal.h.a(this.f, l0VarC.f) && kotlin.jvm.internal.h.a(this.f6037g, l0VarC.f6037g) && kotlin.jvm.internal.h.a(this.f6038h, l0VarC.f6038h);
    }

    @Override // da.c
    public final String getName() {
        return this.f;
    }

    public final int hashCode() {
        return this.f6037g.hashCode() + androidx.room.util.a.a(this.f, this.f6036e.hashCode() * 31, 31);
    }

    @Override // da.c
    public final boolean isSuspend() {
        return false;
    }

    @Override // ga.h
    public final ha.f<?> k() {
        return t().k();
    }

    @Override // ga.h
    public final s m() {
        return this.f6036e;
    }

    @Override // ga.h
    public final ha.f<?> n() {
        t().getClass();
        return null;
    }

    @Override // ga.h
    public final boolean q() {
        return !kotlin.jvm.internal.h.a(this.f6038h, kotlin.jvm.internal.a.NO_RECEIVER);
    }

    public final Member r() {
        if (!o().K()) {
            return null;
        }
        lb.b bVar = x0.f6137a;
        g gVarB = x0.b(o());
        if (gVarB instanceof g.c) {
            g.c cVar = (g.c) gVarB;
            a.c cVar2 = cVar.f6006c;
            if ((cVar2.f8446b & 16) == 16) {
                a.b bVar2 = cVar2.f8450g;
                int r32 = bVar2.f8436b;
                if ((r32 & 1) == 1) {
                    if ((r32 & 2) == 2) {
                        int r12 = bVar2.f8437c;
                        ib.c cVar3 = cVar.f6007d;
                        return this.f6036e.m(cVar3.getString(r12), cVar3.getString(bVar2.f8438d));
                    }
                }
                return null;
            }
        }
        return this.f6039j.invoke();
    }

    @Override // ga.h
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public final ma.l0 o() {
        ma.l0 l0VarInvoke = this.f6040k.invoke();
        kotlin.jvm.internal.h.e(l0VarInvoke, "_descriptor()");
        return l0VarInvoke;
    }

    public abstract b<V> t();

    public final String toString() {
        nb.d dVar = v0.f6124a;
        return v0.c(o());
    }
}
