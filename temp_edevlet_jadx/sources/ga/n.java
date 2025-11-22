package ga;

import fb.a;
import ga.s;
import ga.t0;
import ja.o;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import mb.h;
import ra.e;
import vb.l;

/* loaded from: classes2.dex */
public final class n<T> extends s implements da.d<T>, q, r0 {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f6052d = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Class<T> f6053b;

    /* renamed from: c, reason: collision with root package name */
    public final t0.b<n<T>.a> f6054c;

    public final class a extends s.a {

        /* renamed from: l, reason: collision with root package name */
        public static final /* synthetic */ da.m<Object>[] f6055l = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "annotations", "getAnnotations()Ljava/util/List;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "simpleName", "getSimpleName()Ljava/lang/String;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "qualifiedName", "getQualifiedName()Ljava/lang/String;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "constructors", "getConstructors()Ljava/util/Collection;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "nestedClasses", "getNestedClasses()Ljava/util/Collection;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "objectInstance", "getObjectInstance()Ljava/lang/Object;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "typeParameters", "getTypeParameters()Ljava/util/List;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "supertypes", "getSupertypes()Ljava/util/List;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "sealedSubclasses", "getSealedSubclasses()Ljava/util/List;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "declaredNonStaticMembers", "getDeclaredNonStaticMembers()Ljava/util/Collection;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "declaredStaticMembers", "getDeclaredStaticMembers()Ljava/util/Collection;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "inheritedNonStaticMembers", "getInheritedNonStaticMembers()Ljava/util/Collection;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "inheritedStaticMembers", "getInheritedStaticMembers()Ljava/util/Collection;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "allNonStaticMembers", "getAllNonStaticMembers()Ljava/util/Collection;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "allStaticMembers", "getAllStaticMembers()Ljava/util/Collection;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "declaredMembers", "getDeclaredMembers()Ljava/util/Collection;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "allMembers", "getAllMembers()Ljava/util/Collection;"))};

        /* renamed from: c, reason: collision with root package name */
        public final t0.a f6056c;

        /* renamed from: d, reason: collision with root package name */
        public final t0.a f6057d;

        /* renamed from: e, reason: collision with root package name */
        public final t0.a f6058e;
        public final t0.a f;

        /* renamed from: g, reason: collision with root package name */
        public final t0.a f6059g;

        /* renamed from: h, reason: collision with root package name */
        public final t0.a f6060h;

        /* renamed from: i, reason: collision with root package name */
        public final t0.a f6061i;

        /* renamed from: j, reason: collision with root package name */
        public final t0.a f6062j;

        /* renamed from: k, reason: collision with root package name */
        public final t0.a f6063k;

        /* renamed from: ga.n$a$a, reason: collision with other inner class name */
        public static final class C0101a extends kotlin.jvm.internal.j implements x9.a<List<? extends ga.h<?>>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T>.a f6064a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0101a(n<T>.a aVar) {
                super(0);
                this.f6064a = aVar;
            }

            @Override // x9.a
            public final List<? extends ga.h<?>> invoke() {
                n<T>.a aVar = this.f6064a;
                aVar.getClass();
                da.m<Object>[] mVarArr = a.f6055l;
                da.m<Object> mVar = mVarArr[14];
                Object objInvoke = aVar.f6062j.invoke();
                kotlin.jvm.internal.h.e(objInvoke, "<get-allNonStaticMembers>(...)");
                da.m<Object> mVar2 = mVarArr[15];
                Object objInvoke2 = aVar.f6063k.invoke();
                kotlin.jvm.internal.h.e(objInvoke2, "<get-allStaticMembers>(...)");
                return m9.t.m1((Collection) objInvoke2, (Collection) objInvoke);
            }
        }

        public static final class b extends kotlin.jvm.internal.j implements x9.a<List<? extends ga.h<?>>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T>.a f6065a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(n<T>.a aVar) {
                super(0);
                this.f6065a = aVar;
            }

            @Override // x9.a
            public final List<? extends ga.h<?>> invoke() {
                n<T>.a aVar = this.f6065a;
                aVar.getClass();
                da.m<Object>[] mVarArr = a.f6055l;
                da.m<Object> mVar = mVarArr[10];
                Object objInvoke = aVar.f.invoke();
                kotlin.jvm.internal.h.e(objInvoke, "<get-declaredNonStaticMembers>(...)");
                da.m<Object> mVar2 = mVarArr[12];
                Object objInvoke2 = aVar.f6060h.invoke();
                kotlin.jvm.internal.h.e(objInvoke2, "<get-inheritedNonStaticMembers>(...)");
                return m9.t.m1((Collection) objInvoke2, (Collection) objInvoke);
            }
        }

        public static final class c extends kotlin.jvm.internal.j implements x9.a<List<? extends ga.h<?>>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T>.a f6066a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(n<T>.a aVar) {
                super(0);
                this.f6066a = aVar;
            }

            @Override // x9.a
            public final List<? extends ga.h<?>> invoke() {
                n<T>.a aVar = this.f6066a;
                aVar.getClass();
                da.m<Object>[] mVarArr = a.f6055l;
                da.m<Object> mVar = mVarArr[11];
                Object objInvoke = aVar.f6059g.invoke();
                kotlin.jvm.internal.h.e(objInvoke, "<get-declaredStaticMembers>(...)");
                da.m<Object> mVar2 = mVarArr[13];
                Object objInvoke2 = aVar.f6061i.invoke();
                kotlin.jvm.internal.h.e(objInvoke2, "<get-inheritedStaticMembers>(...)");
                return m9.t.m1((Collection) objInvoke2, (Collection) objInvoke);
            }
        }

        public static final class d extends kotlin.jvm.internal.j implements x9.a<List<? extends Annotation>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T>.a f6067a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(n<T>.a aVar) {
                super(0);
                this.f6067a = aVar;
            }

            @Override // x9.a
            public final List<? extends Annotation> invoke() {
                return z0.d(this.f6067a.a());
            }
        }

        public static final class e extends kotlin.jvm.internal.j implements x9.a<List<? extends da.g<? extends T>>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T> f6068a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(n<T> nVar) {
                super(0);
                this.f6068a = nVar;
            }

            @Override // x9.a
            public final Object invoke() {
                n<T> nVar = this.f6068a;
                Collection<ma.i> collectionN = nVar.n();
                ArrayList arrayList = new ArrayList(m9.n.Q0(collectionN));
                Iterator<T> it = collectionN.iterator();
                while (it.hasNext()) {
                    arrayList.add(new x(nVar, (ma.i) it.next()));
                }
                return arrayList;
            }
        }

        public static final class f extends kotlin.jvm.internal.j implements x9.a<List<? extends ga.h<?>>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T>.a f6069a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public f(n<T>.a aVar) {
                super(0);
                this.f6069a = aVar;
            }

            @Override // x9.a
            public final List<? extends ga.h<?>> invoke() {
                n<T>.a aVar = this.f6069a;
                aVar.getClass();
                da.m<Object>[] mVarArr = a.f6055l;
                da.m<Object> mVar = mVarArr[10];
                Object objInvoke = aVar.f.invoke();
                kotlin.jvm.internal.h.e(objInvoke, "<get-declaredNonStaticMembers>(...)");
                da.m<Object> mVar2 = mVarArr[11];
                Object objInvoke2 = aVar.f6059g.invoke();
                kotlin.jvm.internal.h.e(objInvoke2, "<get-declaredStaticMembers>(...)");
                return m9.t.m1((Collection) objInvoke2, (Collection) objInvoke);
            }
        }

        public static final class g extends kotlin.jvm.internal.j implements x9.a<Collection<? extends ga.h<?>>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T> f6070a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public g(n<T> nVar) {
                super(0);
                this.f6070a = nVar;
            }

            @Override // x9.a
            public final Collection<? extends ga.h<?>> invoke() {
                n<T> nVar = this.f6070a;
                return nVar.q(nVar.z(), 1);
            }
        }

        public static final class h extends kotlin.jvm.internal.j implements x9.a<Collection<? extends ga.h<?>>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T> f6071a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public h(n<T> nVar) {
                super(0);
                this.f6071a = nVar;
            }

            @Override // x9.a
            public final Collection<? extends ga.h<?>> invoke() {
                n<T> nVar = this.f6071a;
                return nVar.q(nVar.A(), 1);
            }
        }

        public static final class i extends kotlin.jvm.internal.j implements x9.a<ma.e> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T> f6072a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public i(n<T> nVar) {
                super(0);
                this.f6072a = nVar;
            }

            @Override // x9.a
            public final ma.e invoke() {
                fb.a aVar;
                int r02 = n.f6052d;
                n<T> nVar = this.f6072a;
                lb.b bVarX = nVar.x();
                n<T>.a aVarInvoke = nVar.f6054c.invoke();
                aVarInvoke.getClass();
                da.m<Object> mVar = s.a.f6112b[0];
                Object objInvoke = aVarInvoke.f6113a.invoke();
                kotlin.jvm.internal.h.e(objInvoke, "<get-moduleData>(...)");
                boolean z10 = bVarX.f9666c;
                yb.l lVar = ((ra.h) objInvoke).f14368a;
                ma.e eVarB = z10 ? lVar.b(bVarX) : ma.t.a(lVar.f19443b, bVarX);
                if (eVarB != null) {
                    return eVarB;
                }
                Class<T> cls = nVar.f6053b;
                ra.e eVarA = e.a.a(cls);
                a.EnumC0087a enumC0087a = (eVarA == null || (aVar = eVarA.f14364b) == null) ? null : aVar.f5553a;
                switch (enumC0087a == null ? -1 : b.f6086a[enumC0087a.ordinal()]) {
                    case -1:
                    case 6:
                        throw new l9.f(androidx.appcompat.graphics.drawable.a.g("Unresolved class: ", cls), 1);
                    case 0:
                    default:
                        throw new j7.p();
                    case 1:
                    case 2:
                    case 3:
                        throw new UnsupportedOperationException(androidx.appcompat.graphics.drawable.a.g("Packages and file facades are not yet supported in Kotlin reflection. Meanwhile please use Java reflection to inspect this class: ", cls));
                    case 4:
                        throw new UnsupportedOperationException(androidx.appcompat.graphics.drawable.a.g("This class is an internal synthetic class generated by the Kotlin compiler, such as an anonymous class for a lambda, a SAM wrapper, a callable reference, etc. It's not a Kotlin class or interface, so the reflection library has no idea what declarations it has. Please use Java reflection to inspect this class: ", cls));
                    case 5:
                        throw new l9.f("Unknown class: " + cls + " (kind = " + enumC0087a + ')', 1);
                }
            }
        }

        public static final class j extends kotlin.jvm.internal.j implements x9.a<Collection<? extends ga.h<?>>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T> f6073a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public j(n<T> nVar) {
                super(0);
                this.f6073a = nVar;
            }

            @Override // x9.a
            public final Collection<? extends ga.h<?>> invoke() {
                n<T> nVar = this.f6073a;
                return nVar.q(nVar.z(), 2);
            }
        }

        public static final class k extends kotlin.jvm.internal.j implements x9.a<Collection<? extends ga.h<?>>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T> f6074a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public k(n<T> nVar) {
                super(0);
                this.f6074a = nVar;
            }

            @Override // x9.a
            public final Collection<? extends ga.h<?>> invoke() {
                n<T> nVar = this.f6074a;
                return nVar.q(nVar.A(), 2);
            }
        }

        public static final class l extends kotlin.jvm.internal.j implements x9.a<List<? extends n<? extends Object>>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T>.a f6075a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public l(n<T>.a aVar) {
                super(0);
                this.f6075a = aVar;
            }

            @Override // x9.a
            public final List<? extends n<? extends Object>> invoke() {
                vb.i iVarX0 = this.f6075a.a().x0();
                kotlin.jvm.internal.h.e(iVarX0, "descriptor.unsubstitutedInnerClassesScope");
                Collection collectionA = l.a.a(iVarX0, null, 3);
                ArrayList arrayList = new ArrayList();
                for (T t10 : collectionA) {
                    if (!ob.i.m((ma.j) t10)) {
                        arrayList.add(t10);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ma.j jVar = (ma.j) it.next();
                    ma.e eVar = jVar instanceof ma.e ? (ma.e) jVar : null;
                    Class<?> clsJ = eVar != null ? z0.j(eVar) : null;
                    n nVar = clsJ != null ? new n(clsJ) : null;
                    if (nVar != null) {
                        arrayList2.add(nVar);
                    }
                }
                return arrayList2;
            }
        }

        public static final class m extends kotlin.jvm.internal.j implements x9.a<T> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T>.a f6076a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ n<T> f6077b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public m(n<T>.a aVar, n<T> nVar) {
                super(0);
                this.f6076a = aVar;
                this.f6077b = nVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0032  */
            @Override // x9.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final T invoke() {
                /*
                    r4 = this;
                    ga.n<T>$a r0 = r4.f6076a
                    ma.e r0 = r0.a()
                    int r1 = r0.h()
                    r2 = 6
                    r3 = 0
                    if (r1 == r2) goto Lf
                    return r3
                Lf:
                    boolean r1 = r0.u()
                    ga.n<T> r2 = r4.f6077b
                    if (r1 == 0) goto L32
                    java.util.LinkedHashSet r1 = ja.c.f8320a
                    boolean r1 = c5.v.A(r0)
                    if (r1 != 0) goto L32
                    java.lang.Class<T> r1 = r2.f6053b
                    java.lang.Class r1 = r1.getEnclosingClass()
                    lb.f r0 = r0.getName()
                    java.lang.String r0 = r0.o()
                    java.lang.reflect.Field r0 = r1.getDeclaredField(r0)
                    goto L3a
                L32:
                    java.lang.Class<T> r0 = r2.f6053b
                    java.lang.String r1 = "INSTANCE"
                    java.lang.reflect.Field r0 = r0.getDeclaredField(r1)
                L3a:
                    java.lang.Object r0 = r0.get(r3)
                    java.lang.String r1 = "null cannot be cast to non-null type T of kotlin.reflect.jvm.internal.KClassImpl"
                    kotlin.jvm.internal.h.d(r0, r1)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: ga.n.a.m.invoke():java.lang.Object");
            }
        }

        /* renamed from: ga.n$a$n, reason: collision with other inner class name */
        public static final class C0102n extends kotlin.jvm.internal.j implements x9.a<String> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T> f6078a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0102n(n<T> nVar) {
                super(0);
                this.f6078a = nVar;
            }

            @Override // x9.a
            public final String invoke() {
                n<T> nVar = this.f6078a;
                if (nVar.f6053b.isAnonymousClass()) {
                    return null;
                }
                lb.b bVarX = nVar.x();
                if (bVarX.f9666c) {
                    return null;
                }
                return bVarX.b().b();
            }
        }

        public static final class o extends kotlin.jvm.internal.j implements x9.a<List<? extends n<? extends T>>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T>.a f6079a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public o(n<T>.a aVar) {
                super(0);
                this.f6079a = aVar;
            }

            @Override // x9.a
            public final Object invoke() {
                Collection<ma.e> collectionE = this.f6079a.a().E();
                kotlin.jvm.internal.h.e(collectionE, "descriptor.sealedSubclasses");
                ArrayList arrayList = new ArrayList();
                for (ma.e eVar : collectionE) {
                    kotlin.jvm.internal.h.d(eVar, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    Class<?> clsJ = z0.j(eVar);
                    n nVar = clsJ != null ? new n(clsJ) : null;
                    if (nVar != null) {
                        arrayList.add(nVar);
                    }
                }
                return arrayList;
            }
        }

        public static final class p extends kotlin.jvm.internal.j implements x9.a<String> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T> f6080a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ n<T>.a f6081b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public p(a aVar, n nVar) {
                super(0);
                this.f6080a = nVar;
                this.f6081b = aVar;
            }

            @Override // x9.a
            public final String invoke() {
                String str;
                n<T> nVar = this.f6080a;
                if (nVar.f6053b.isAnonymousClass()) {
                    return null;
                }
                lb.b bVarX = nVar.x();
                if (!bVarX.f9666c) {
                    String strO = bVarX.j().o();
                    kotlin.jvm.internal.h.e(strO, "classId.shortClassName.asString()");
                    return strO;
                }
                this.f6081b.getClass();
                Class<T> cls = nVar.f6053b;
                String simpleName = cls.getSimpleName();
                Method enclosingMethod = cls.getEnclosingMethod();
                if (enclosingMethod != null) {
                    str = enclosingMethod.getName() + '$';
                } else {
                    Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
                    if (enclosingConstructor == null) {
                        return mc.n.c0(simpleName);
                    }
                    str = enclosingConstructor.getName() + '$';
                }
                return mc.n.b0(simpleName, str, simpleName);
            }
        }

        public static final class q extends kotlin.jvm.internal.j implements x9.a<List<? extends p0>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T>.a f6082a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ n<T> f6083b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public q(n<T>.a aVar, n<T> nVar) {
                super(0);
                this.f6082a = aVar;
                this.f6083b = nVar;
            }

            @Override // x9.a
            public final List<? extends p0> invoke() {
                n<T>.a aVar = this.f6082a;
                Collection<cc.e0> collectionL = aVar.a().i().l();
                kotlin.jvm.internal.h.e(collectionL, "descriptor.typeConstructor.supertypes");
                ArrayList arrayList = new ArrayList(collectionL.size());
                for (cc.e0 kotlinType : collectionL) {
                    kotlin.jvm.internal.h.e(kotlinType, "kotlinType");
                    arrayList.add(new p0(kotlinType, new ga.o(kotlinType, aVar, this.f6083b)));
                }
                if (!ja.k.H(aVar.a())) {
                    boolean z10 = true;
                    if (!arrayList.isEmpty()) {
                        Iterator it = arrayList.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            int r42 = ob.i.c(((p0) it.next()).f6098a).h();
                            androidx.camera.core.impl.a.k(r42, "getClassDescriptorForType(it.type).kind");
                            if (!(r42 == 2 || r42 == 5)) {
                                z10 = false;
                                break;
                            }
                        }
                    }
                    if (z10) {
                        cc.m0 m0VarF = sb.b.e(aVar.a()).f();
                        kotlin.jvm.internal.h.e(m0VarF, "descriptor.builtIns.anyType");
                        arrayList.add(new p0(m0VarF, ga.p.f6096a));
                    }
                }
                return com.google.android.gms.internal.clearcut.d0.i(arrayList);
            }
        }

        public static final class r extends kotlin.jvm.internal.j implements x9.a<List<? extends q0>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ n<T>.a f6084a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ n<T> f6085b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public r(n<T>.a aVar, n<T> nVar) {
                super(0);
                this.f6084a = aVar;
                this.f6085b = nVar;
            }

            @Override // x9.a
            public final List<? extends q0> invoke() {
                List<ma.w0> listS = this.f6084a.a().s();
                kotlin.jvm.internal.h.e(listS, "descriptor.declaredTypeParameters");
                List<ma.w0> list = listS;
                ArrayList arrayList = new ArrayList(m9.n.Q0(list));
                for (ma.w0 descriptor : list) {
                    kotlin.jvm.internal.h.e(descriptor, "descriptor");
                    arrayList.add(new q0(this.f6085b, descriptor));
                }
                return arrayList;
            }
        }

        public a(n nVar) {
            super(nVar);
            this.f6056c = t0.c(new i(nVar));
            t0.c(new d(this));
            this.f6057d = t0.c(new p(this, nVar));
            this.f6058e = t0.c(new C0102n(nVar));
            t0.c(new e(nVar));
            t0.c(new l(this));
            new m(this, nVar);
            t0.c(new r(this, nVar));
            t0.c(new q(this, nVar));
            t0.c(new o(this));
            this.f = t0.c(new g(nVar));
            this.f6059g = t0.c(new h(nVar));
            this.f6060h = t0.c(new j(nVar));
            this.f6061i = t0.c(new k(nVar));
            this.f6062j = t0.c(new b(this));
            this.f6063k = t0.c(new c(this));
            t0.c(new f(this));
            t0.c(new C0101a(this));
        }

        public final ma.e a() {
            da.m<Object> mVar = f6055l[0];
            Object objInvoke = this.f6056c.invoke();
            kotlin.jvm.internal.h.e(objInvoke, "<get-descriptor>(...)");
            return (ma.e) objInvoke;
        }
    }

    public /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6086a;

        static {
            int[] r02 = new int[a.EnumC0087a.values().length];
            try {
                LinkedHashMap linkedHashMap = a.EnumC0087a.f5559b;
                r02[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                LinkedHashMap linkedHashMap2 = a.EnumC0087a.f5559b;
                r02[4] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                LinkedHashMap linkedHashMap3 = a.EnumC0087a.f5559b;
                r02[5] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                LinkedHashMap linkedHashMap4 = a.EnumC0087a.f5559b;
                r02[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                LinkedHashMap linkedHashMap5 = a.EnumC0087a.f5559b;
                r02[0] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                LinkedHashMap linkedHashMap6 = a.EnumC0087a.f5559b;
                r02[1] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f6086a = r02;
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<n<T>.a> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ n<T> f6087a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(n<T> nVar) {
            super(0);
            this.f6087a = nVar;
        }

        @Override // x9.a
        public final Object invoke() {
            return new a(this.f6087a);
        }
    }

    public /* synthetic */ class d extends kotlin.jvm.internal.f implements x9.p<yb.z, gb.m, ma.l0> {

        /* renamed from: a, reason: collision with root package name */
        public static final d f6088a = new d();

        public d() {
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

    public n(Class<T> jClass) {
        kotlin.jvm.internal.h.f(jClass, "jClass");
        this.f6053b = jClass;
        this.f6054c = t0.b(new c(this));
    }

    public final vb.i A() {
        vb.i iVarN = i().N();
        kotlin.jvm.internal.h.e(iVarN, "descriptor.staticScope");
        return iVarN;
    }

    @Override // da.d
    public final String c() {
        n<T>.a aVarInvoke = this.f6054c.invoke();
        aVarInvoke.getClass();
        da.m<Object> mVar = a.f6055l[3];
        return (String) aVarInvoke.f6058e.invoke();
    }

    @Override // da.d
    public final String d() {
        n<T>.a aVarInvoke = this.f6054c.invoke();
        aVarInvoke.getClass();
        da.m<Object> mVar = a.f6055l[2];
        return (String) aVarInvoke.f6057d.invoke();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof n) && kotlin.jvm.internal.h.a(com.google.android.gms.internal.clearcut.d0.r(this), com.google.android.gms.internal.clearcut.d0.r((da.d) obj));
    }

    @Override // kotlin.jvm.internal.b
    public final Class<T> g() {
        return this.f6053b;
    }

    public final int hashCode() {
        return com.google.android.gms.internal.clearcut.d0.r(this).hashCode();
    }

    @Override // ga.s
    public final Collection<ma.i> n() {
        ma.e eVarI = i();
        if (eVarI.h() == 2 || eVarI.h() == 6) {
            return m9.v.f10173a;
        }
        Collection<ma.d> collectionK = eVarI.k();
        kotlin.jvm.internal.h.e(collectionK, "descriptor.constructors");
        return collectionK;
    }

    @Override // ga.s
    public final Collection<ma.u> o(lb.f fVar) {
        vb.i iVarZ = z();
        ua.c cVar = ua.c.FROM_REFLECTION;
        return m9.t.m1(A().c(fVar, cVar), iVarZ.c(fVar, cVar));
    }

    @Override // ga.s
    public final ma.l0 p(int r10) {
        Class<?> declaringClass;
        Class<T> cls = this.f6053b;
        if (kotlin.jvm.internal.h.a(cls.getSimpleName(), "DefaultImpls") && (declaringClass = cls.getDeclaringClass()) != null && declaringClass.isInterface()) {
            da.d dVarA = kotlin.jvm.internal.w.a(declaringClass);
            kotlin.jvm.internal.h.d(dVarA, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>");
            return ((n) dVarA).p(r10);
        }
        ma.e eVarI = i();
        ac.d dVar = eVarI instanceof ac.d ? (ac.d) eVarI : null;
        if (dVar == null) {
            return null;
        }
        h.e<gb.b, List<gb.m>> classLocalVariable = jb.a.f8418j;
        kotlin.jvm.internal.h.e(classLocalVariable, "classLocalVariable");
        gb.m mVar = (gb.m) ib.e.b(dVar.f164e, classLocalVariable, r10);
        if (mVar == null) {
            return null;
        }
        Class<T> cls2 = this.f6053b;
        yb.n nVar = dVar.f170m;
        return (ma.l0) z0.f(cls2, mVar, nVar.f19465b, nVar.f19467d, dVar.f, d.f6088a);
    }

    @Override // ga.s
    public final Collection<ma.l0> s(lb.f fVar) {
        vb.i iVarZ = z();
        ua.c cVar = ua.c.FROM_REFLECTION;
        return m9.t.m1(A().a(fVar, cVar), iVarZ.a(fVar, cVar));
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("class ");
        lb.b bVarX = x();
        lb.c cVarH = bVarX.h();
        kotlin.jvm.internal.h.e(cVarH, "classId.packageFqName");
        String strConcat = cVarH.d() ? "" : cVarH.b().concat(".");
        sb2.append(strConcat + mc.j.B(bVarX.i().b(), '.', '$'));
        return sb2.toString();
    }

    public final lb.b x() {
        ja.l lVarR;
        lb.b bVar = x0.f6137a;
        Class<T> klass = this.f6053b;
        kotlin.jvm.internal.h.f(klass, "klass");
        if (klass.isArray()) {
            Class<?> componentType = klass.getComponentType();
            kotlin.jvm.internal.h.e(componentType, "klass.componentType");
            lVarR = componentType.isPrimitive() ? tb.c.o(componentType.getSimpleName()).r() : null;
            return lVarR != null ? new lb.b(ja.o.f8364k, lVarR.f8344b) : lb.b.l(o.a.f8377g.h());
        }
        if (kotlin.jvm.internal.h.a(klass, Void.TYPE)) {
            return x0.f6137a;
        }
        lVarR = klass.isPrimitive() ? tb.c.o(klass.getSimpleName()).r() : null;
        if (lVarR != null) {
            return new lb.b(ja.o.f8364k, lVarR.f8343a);
        }
        lb.b bVarA = sa.d.a(klass);
        if (bVarA.f9666c) {
            return bVarA;
        }
        String str = la.c.f9598a;
        lb.c cVarB = bVarA.b();
        kotlin.jvm.internal.h.e(cVarB, "classId.asSingleFqName()");
        lb.b bVarF = la.c.f(cVarB);
        return bVarF != null ? bVarF : bVarA;
    }

    @Override // ga.q
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public final ma.e i() {
        return this.f6054c.invoke().a();
    }

    public final vb.i z() {
        return i().q().o();
    }
}
