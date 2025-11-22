package ga;

import fb.a;
import ga.s;
import ga.t0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import mb.h;
import ra.e;
import vb.b;
import vb.i;

/* loaded from: classes2.dex */
public final class c0 extends s {

    /* renamed from: b, reason: collision with root package name */
    public final Class<?> f5968b;

    /* renamed from: c, reason: collision with root package name */
    public final t0.b<a> f5969c;

    public final class a extends s.a {

        /* renamed from: g, reason: collision with root package name */
        public static final /* synthetic */ da.m<Object>[] f5970g = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "kotlinClass", "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "scope", "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "multifileFacade", "getMultifileFacade()Ljava/lang/Class;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "metadata", "getMetadata()Lkotlin/Triple;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "members", "getMembers()Ljava/util/Collection;"))};

        /* renamed from: c, reason: collision with root package name */
        public final t0.a f5971c;

        /* renamed from: d, reason: collision with root package name */
        public final t0.a f5972d;

        /* renamed from: e, reason: collision with root package name */
        public final t0.b f5973e;
        public final t0.b f;

        /* renamed from: ga.c0$a$a, reason: collision with other inner class name */
        public static final class C0098a extends kotlin.jvm.internal.j implements x9.a<ra.e> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ c0 f5974a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0098a(c0 c0Var) {
                super(0);
                this.f5974a = c0Var;
            }

            @Override // x9.a
            public final ra.e invoke() {
                return e.a.a(this.f5974a.f5968b);
            }
        }

        public static final class b extends kotlin.jvm.internal.j implements x9.a<Collection<? extends h<?>>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ c0 f5975a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ a f5976b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(a aVar, c0 c0Var) {
                super(0);
                this.f5975a = c0Var;
                this.f5976b = aVar;
            }

            @Override // x9.a
            public final Collection<? extends h<?>> invoke() {
                a aVar = this.f5976b;
                aVar.getClass();
                da.m<Object> mVar = a.f5970g[1];
                Object objInvoke = aVar.f5972d.invoke();
                kotlin.jvm.internal.h.e(objInvoke, "<get-scope>(...)");
                return this.f5975a.q((vb.i) objInvoke, 1);
            }
        }

        public static final class c extends kotlin.jvm.internal.j implements x9.a<l9.k<? extends kb.f, ? extends gb.k, ? extends kb.e>> {
            public c() {
                super(0);
            }

            @Override // x9.a
            public final l9.k<? extends kb.f, ? extends gb.k, ? extends kb.e> invoke() throws mb.j {
                fb.a aVar;
                String[] strArr;
                String[] strArr2;
                ra.e eVarA = a.a(a.this);
                if (eVarA == null || (aVar = eVarA.f14364b) == null || (strArr = aVar.f5555c) == null || (strArr2 = aVar.f5557e) == null) {
                    return null;
                }
                l9.g<kb.f, gb.k> gVarH = kb.h.h(strArr, strArr2);
                return new l9.k<>(gVarH.f9582a, gVarH.f9583b, aVar.f5554b);
            }
        }

        public static final class d extends kotlin.jvm.internal.j implements x9.a<Class<?>> {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c0 f5979b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(c0 c0Var) {
                super(0);
                this.f5979b = c0Var;
            }

            /* JADX WARN: Removed duplicated region for block: B:12:0x001d  */
            @Override // x9.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Class<?> invoke() {
                /*
                    r6 = this;
                    ga.c0$a r0 = ga.c0.a.this
                    ra.e r0 = ga.c0.a.a(r0)
                    r1 = 1
                    r2 = 0
                    r3 = 0
                    if (r0 == 0) goto L1d
                    fb.a r0 = r0.f14364b
                    if (r0 == 0) goto L1d
                    fb.a$a r4 = fb.a.EnumC0087a.MULTIFILE_CLASS_PART
                    fb.a$a r5 = r0.f5553a
                    if (r5 != r4) goto L17
                    r4 = 1
                    goto L18
                L17:
                    r4 = 0
                L18:
                    if (r4 == 0) goto L1d
                    java.lang.String r0 = r0.f
                    goto L1e
                L1d:
                    r0 = r3
                L1e:
                    if (r0 == 0) goto L3e
                    int r4 = r0.length()
                    if (r4 <= 0) goto L27
                    goto L28
                L27:
                    r1 = 0
                L28:
                    if (r1 == 0) goto L3e
                    ga.c0 r1 = r6.f5979b
                    java.lang.Class<?> r1 = r1.f5968b
                    java.lang.ClassLoader r1 = r1.getClassLoader()
                    r2 = 47
                    r3 = 46
                    java.lang.String r0 = mc.j.B(r0, r2, r3)
                    java.lang.Class r3 = r1.loadClass(r0)
                L3e:
                    return r3
                */
                throw new UnsupportedOperationException("Method not decompiled: ga.c0.a.d.invoke():java.lang.Object");
            }
        }

        public static final class e extends kotlin.jvm.internal.j implements x9.a<vb.i> {
            public e() {
                super(0);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v2 */
            /* JADX WARN: Type inference failed for: r3v9, types: [java.util.ArrayList] */
            @Override // x9.a
            public final vb.i invoke() {
                ?? S;
                a aVar = a.this;
                ra.e eVarA = a.a(aVar);
                if (eVarA == null) {
                    return i.b.f18453b;
                }
                da.m<Object> mVar = s.a.f6112b[0];
                Object objInvoke = aVar.f6113a.invoke();
                kotlin.jvm.internal.h.e(objInvoke, "<get-moduleData>(...)");
                ra.a aVar2 = ((ra.h) objInvoke).f14369b;
                aVar2.getClass();
                ConcurrentHashMap<lb.b, vb.i> concurrentHashMap = aVar2.f14360c;
                lb.b bVarC = eVarA.c();
                vb.i iVarA = concurrentHashMap.get(bVarC);
                if (iVarA == null) {
                    lb.c cVarH = eVarA.c().h();
                    kotlin.jvm.internal.h.e(cVarH, "fileClass.classId.packageFqName");
                    fb.a aVar3 = eVarA.f14364b;
                    a.EnumC0087a enumC0087a = aVar3.f5553a;
                    a.EnumC0087a enumC0087a2 = a.EnumC0087a.MULTIFILE_CLASS;
                    if (enumC0087a == enumC0087a2) {
                        String[] strArr = enumC0087a == enumC0087a2 ? aVar3.f5555c : null;
                        List listG0 = strArr != null ? m9.i.g0(strArr) : null;
                        if (listG0 == null) {
                            listG0 = m9.v.f10173a;
                        }
                        S = new ArrayList();
                        Iterator it = listG0.iterator();
                        while (it.hasNext()) {
                            eb.s sVarA = eb.r.a(aVar2.f14359b, lb.b.l(new lb.c(tb.b.d((String) it.next()).f15648a.replace('/', '.'))));
                            if (sVarA != null) {
                                S.add(sVarA);
                            }
                        }
                    } else {
                        S = b8.f.S(eVarA);
                    }
                    eb.k kVar = aVar2.f14358a;
                    pa.r rVar = new pa.r(kVar.c().f19443b, cVarH);
                    ArrayList arrayList = new ArrayList();
                    Iterator it2 = ((Iterable) S).iterator();
                    while (it2.hasNext()) {
                        ac.j jVarA = kVar.a(rVar, (eb.s) it2.next());
                        if (jVarA != null) {
                            arrayList.add(jVarA);
                        }
                    }
                    iVarA = b.a.a("package " + cVarH + " (" + eVarA + ')', m9.t.v1(arrayList));
                    vb.i iVarPutIfAbsent = concurrentHashMap.putIfAbsent(bVarC, iVarA);
                    if (iVarPutIfAbsent != null) {
                        iVarA = iVarPutIfAbsent;
                    }
                }
                kotlin.jvm.internal.h.e(iVarA, "cache.getOrPut(fileClass…ileClass)\", scopes)\n    }");
                return iVarA;
            }
        }

        public a(c0 c0Var) {
            super(c0Var);
            this.f5971c = t0.c(new C0098a(c0Var));
            this.f5972d = t0.c(new e());
            this.f5973e = new t0.b(new d(c0Var));
            this.f = new t0.b(new c());
            t0.c(new b(this, c0Var));
        }

        public static final ra.e a(a aVar) {
            aVar.getClass();
            da.m<Object> mVar = f5970g[0];
            return (ra.e) aVar.f5971c.invoke();
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<a> {
        public b() {
            super(0);
        }

        @Override // x9.a
        public final a invoke() {
            return new a(c0.this);
        }
    }

    public /* synthetic */ class c extends kotlin.jvm.internal.f implements x9.p<yb.z, gb.m, ma.l0> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f5982a = new c();

        public c() {
            super(2);
        }

        @Override // kotlin.jvm.internal.a, da.c
        public final String getName() {
            return "loadProperty";
        }

        @Override // kotlin.jvm.internal.a
        public final da.f getOwner() {
            return kotlin.jvm.internal.w.a(yb.z.class);
        }

        @Override // kotlin.jvm.internal.a
        public final String getSignature() {
            return "loadProperty(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;)Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;";
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final ma.l0 mo7invoke(yb.z zVar, gb.m mVar) {
            yb.z p02 = zVar;
            gb.m p12 = mVar;
            kotlin.jvm.internal.h.f(p02, "p0");
            kotlin.jvm.internal.h.f(p12, "p1");
            return p02.f(p12);
        }
    }

    public c0(Class<?> jClass) {
        kotlin.jvm.internal.h.f(jClass, "jClass");
        this.f5968b = jClass;
        this.f5969c = t0.b(new b());
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c0) {
            if (kotlin.jvm.internal.h.a(this.f5968b, ((c0) obj).f5968b)) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.jvm.internal.b
    public final Class<?> g() {
        return this.f5968b;
    }

    public final int hashCode() {
        return this.f5968b.hashCode();
    }

    @Override // ga.s
    public final Collection<ma.i> n() {
        return m9.v.f10173a;
    }

    @Override // ga.s
    public final Collection<ma.u> o(lb.f fVar) {
        a aVarInvoke = this.f5969c.invoke();
        aVarInvoke.getClass();
        da.m<Object> mVar = a.f5970g[1];
        Object objInvoke = aVarInvoke.f5972d.invoke();
        kotlin.jvm.internal.h.e(objInvoke, "<get-scope>(...)");
        return ((vb.i) objInvoke).c(fVar, ua.c.FROM_REFLECTION);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ga.s
    public final ma.l0 p(int r92) {
        a aVarInvoke = this.f5969c.invoke();
        aVarInvoke.getClass();
        da.m<Object> mVar = a.f5970g[3];
        l9.k kVar = (l9.k) aVarInvoke.f.invoke();
        if (kVar != null) {
            kb.f fVar = (kb.f) kVar.f9591a;
            gb.k kVar2 = (gb.k) kVar.f9592b;
            kb.e eVar = (kb.e) kVar.f9593c;
            h.e<gb.k, List<gb.m>> packageLocalVariable = jb.a.f8422n;
            kotlin.jvm.internal.h.e(packageLocalVariable, "packageLocalVariable");
            gb.m mVar2 = (gb.m) ib.e.b(kVar2, packageLocalVariable, r92);
            if (mVar2 != null) {
                Class<?> cls = this.f5968b;
                gb.s sVar = kVar2.f6368g;
                kotlin.jvm.internal.h.e(sVar, "packageProto.typeTable");
                return (ma.l0) z0.f(cls, mVar2, fVar, new ib.g(sVar), eVar, c.f5982a);
            }
        }
        return null;
    }

    @Override // ga.s
    public final Class<?> r() {
        a aVarInvoke = this.f5969c.invoke();
        aVarInvoke.getClass();
        da.m<Object> mVar = a.f5970g[2];
        Class<?> cls = (Class) aVarInvoke.f5973e.invoke();
        return cls == null ? this.f5968b : cls;
    }

    @Override // ga.s
    public final Collection<ma.l0> s(lb.f fVar) {
        a aVarInvoke = this.f5969c.invoke();
        aVarInvoke.getClass();
        da.m<Object> mVar = a.f5970g[1];
        Object objInvoke = aVarInvoke.f5972d.invoke();
        kotlin.jvm.internal.h.e(objInvoke, "<get-scope>(...)");
        return ((vb.i) objInvoke).a(fVar, ua.c.FROM_REFLECTION);
    }

    public final String toString() {
        return "file class " + sa.d.a(this.f5968b).b();
    }
}
