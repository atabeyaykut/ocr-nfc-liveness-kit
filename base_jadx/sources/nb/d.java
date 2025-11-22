package nb;

import c5.y;
import cc.c0;
import cc.c1;
import cc.i1;
import cc.q1;
import cc.s1;
import cc.u0;
import ja.o;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.w;
import m9.t;
import m9.v;
import ma.a0;
import ma.a1;
import ma.b;
import ma.b0;
import ma.b1;
import ma.d0;
import ma.e0;
import ma.i0;
import ma.k0;
import ma.l0;
import ma.m0;
import ma.n0;
import ma.o0;
import ma.s;
import ma.u;
import ma.v0;
import ma.w0;
import ma.z;
import nb.c;
import nb.r;
import p4.m9;
import qb.s;

/* loaded from: classes2.dex */
public final class d extends nb.c implements j {

    /* renamed from: c, reason: collision with root package name */
    public final k f10710c;

    /* renamed from: d, reason: collision with root package name */
    public final l9.j f10711d = y.w(new b());

    public final class a implements ma.l<l9.m, StringBuilder> {
        public a() {
        }

        @Override // ma.l
        public final l9.m a(a1 descriptor, StringBuilder sb2) {
            StringBuilder builder = sb2;
            kotlin.jvm.internal.h.f(descriptor, "descriptor");
            kotlin.jvm.internal.h.f(builder, "builder");
            d.this.j0(descriptor, true, builder, true);
            return l9.m.f9594a;
        }

        @Override // ma.l
        public final /* bridge */ /* synthetic */ l9.m b(u uVar, StringBuilder sb2) throws IOException {
            n(uVar, sb2);
            return l9.m.f9594a;
        }

        @Override // ma.l
        public final l9.m c(n0 descriptor, StringBuilder sb2) throws IOException {
            StringBuilder builder = sb2;
            kotlin.jvm.internal.h.f(descriptor, "descriptor");
            kotlin.jvm.internal.h.f(builder, "builder");
            o(descriptor, builder, "setter");
            return l9.m.f9594a;
        }

        @Override // ma.l
        public final l9.m d(l0 descriptor, StringBuilder sb2) throws IOException {
            StringBuilder builder = sb2;
            kotlin.jvm.internal.h.f(descriptor, "descriptor");
            kotlin.jvm.internal.h.f(builder, "builder");
            d.w(d.this, descriptor, builder);
            return l9.m.f9594a;
        }

        @Override // ma.l
        public final l9.m e(e0 descriptor, StringBuilder sb2) {
            StringBuilder builder = sb2;
            kotlin.jvm.internal.h.f(descriptor, "descriptor");
            kotlin.jvm.internal.h.f(builder, "builder");
            d dVar = d.this;
            dVar.getClass();
            dVar.Y(descriptor.d(), "package-fragment", builder);
            if (dVar.m()) {
                builder.append(" in ");
                dVar.U(descriptor.b(), builder, false);
            }
            return l9.m.f9594a;
        }

        @Override // ma.l
        public final l9.m f(ma.e descriptor, StringBuilder sb2) throws IOException {
            ma.d dVarM;
            String str;
            StringBuilder builder = sb2;
            kotlin.jvm.internal.h.f(descriptor, "descriptor");
            kotlin.jvm.internal.h.f(builder, "builder");
            d dVar = d.this;
            dVar.getClass();
            boolean z10 = descriptor.h() == 4;
            if (!dVar.A()) {
                dVar.G(builder, descriptor, null);
                List<o0> listF0 = descriptor.F0();
                kotlin.jvm.internal.h.e(listF0, "klass.contextReceivers");
                dVar.J(builder, listF0);
                if (!z10) {
                    ma.q visibility = descriptor.getVisibility();
                    kotlin.jvm.internal.h.e(visibility, "klass.visibility");
                    dVar.l0(visibility, builder);
                }
                if ((descriptor.h() != 2 || descriptor.j() != a0.ABSTRACT) && (!androidx.camera.core.impl.utils.f.c(descriptor.h()) || descriptor.j() != a0.FINAL)) {
                    a0 a0VarJ = descriptor.j();
                    kotlin.jvm.internal.h.e(a0VarJ, "klass.modality");
                    dVar.R(a0VarJ, builder, d.E(descriptor));
                }
                dVar.Q(descriptor, builder);
                dVar.T(builder, dVar.z().contains(i.INNER) && descriptor.H(), "inner");
                dVar.T(builder, dVar.z().contains(i.DATA) && descriptor.H0(), "data");
                dVar.T(builder, dVar.z().contains(i.INLINE) && descriptor.isInline(), "inline");
                dVar.T(builder, dVar.z().contains(i.VALUE) && descriptor.F(), "value");
                dVar.T(builder, dVar.z().contains(i.FUN) && descriptor.y(), "fun");
                if (descriptor instanceof v0) {
                    str = "typealias";
                } else if (descriptor.u()) {
                    str = "companion object";
                } else {
                    int r42 = g.d.c(descriptor.h());
                    if (r42 == 0) {
                        str = "class";
                    } else if (r42 == 1) {
                        str = "interface";
                    } else if (r42 == 2) {
                        str = "enum class";
                    } else if (r42 == 3) {
                        str = "enum entry";
                    } else if (r42 == 4) {
                        str = "annotation class";
                    } else {
                        if (r42 != 5) {
                            throw new j7.p();
                        }
                        str = "object";
                    }
                }
                builder.append(dVar.O(str));
            }
            boolean zL = ob.i.l(descriptor);
            k kVar = dVar.f10710c;
            if (zL) {
                if (((Boolean) kVar.F.b(k.W[30])).booleanValue()) {
                    if (dVar.A()) {
                        builder.append("companion object");
                    }
                    d.c0(builder);
                    ma.j jVarB = descriptor.b();
                    if (jVarB != null) {
                        builder.append("of ");
                        lb.f name = jVarB.getName();
                        kotlin.jvm.internal.h.e(name, "containingDeclaration.name");
                        builder.append(dVar.t(name, false));
                    }
                }
                if (dVar.D() || !kotlin.jvm.internal.h.a(descriptor.getName(), lb.h.f9680b)) {
                    if (!dVar.A()) {
                        d.c0(builder);
                    }
                    lb.f name2 = descriptor.getName();
                    kotlin.jvm.internal.h.e(name2, "descriptor.name");
                    builder.append(dVar.t(name2, true));
                }
            } else {
                if (!dVar.A()) {
                    d.c0(builder);
                }
                dVar.U(descriptor, builder, true);
            }
            if (!z10) {
                List<w0> listS = descriptor.s();
                kotlin.jvm.internal.h.e(listS, "klass.declaredTypeParameters");
                dVar.h0(listS, builder, false);
                dVar.H(descriptor, builder);
                if (!androidx.camera.core.impl.utils.f.c(descriptor.h()) && ((Boolean) kVar.f10744i.b(k.W[7])).booleanValue() && (dVarM = descriptor.M()) != null) {
                    builder.append(" ");
                    dVar.G(builder, dVarM, null);
                    ma.q visibility2 = dVarM.getVisibility();
                    kotlin.jvm.internal.h.e(visibility2, "primaryConstructor.visibility");
                    dVar.l0(visibility2, builder);
                    builder.append(dVar.O("constructor"));
                    List<a1> listG = dVarM.g();
                    kotlin.jvm.internal.h.e(listG, "primaryConstructor.valueParameters");
                    dVar.k0(listG, dVarM.B(), builder);
                }
                if (!((Boolean) kVar.w.b(k.W[21])).booleanValue() && !ja.k.E(descriptor.q())) {
                    Collection<cc.e0> collectionL = descriptor.i().l();
                    kotlin.jvm.internal.h.e(collectionL, "klass.typeConstructor.supertypes");
                    if (!collectionL.isEmpty() && (collectionL.size() != 1 || !ja.k.x(collectionL.iterator().next()))) {
                        d.c0(builder);
                        builder.append(": ");
                        t.f1(collectionL, builder, ", ", null, null, new h(dVar), 60);
                    }
                }
                dVar.m0(builder, listS);
            }
            return l9.m.f9594a;
        }

        @Override // ma.l
        public final l9.m g(o0 descriptor, StringBuilder sb2) {
            StringBuilder builder = sb2;
            kotlin.jvm.internal.h.f(descriptor, "descriptor");
            kotlin.jvm.internal.h.f(builder, "builder");
            builder.append(descriptor.getName());
            return l9.m.f9594a;
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0050  */
        @Override // ma.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final l9.m h(ma.i r20, java.lang.StringBuilder r21) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 351
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: nb.d.a.h(ma.i, java.lang.Object):java.lang.Object");
        }

        @Override // ma.l
        public final l9.m i(w0 descriptor, StringBuilder sb2) {
            StringBuilder builder = sb2;
            kotlin.jvm.internal.h.f(descriptor, "descriptor");
            kotlin.jvm.internal.h.f(builder, "builder");
            d.this.f0(descriptor, builder, true);
            return l9.m.f9594a;
        }

        @Override // ma.l
        public final l9.m j(m0 descriptor, StringBuilder sb2) throws IOException {
            StringBuilder builder = sb2;
            kotlin.jvm.internal.h.f(descriptor, "descriptor");
            kotlin.jvm.internal.h.f(builder, "builder");
            o(descriptor, builder, "getter");
            return l9.m.f9594a;
        }

        @Override // ma.l
        public final l9.m k(v0 descriptor, StringBuilder sb2) {
            StringBuilder builder = sb2;
            kotlin.jvm.internal.h.f(descriptor, "descriptor");
            kotlin.jvm.internal.h.f(builder, "builder");
            d dVar = d.this;
            dVar.G(builder, descriptor, null);
            ma.q visibility = descriptor.getVisibility();
            kotlin.jvm.internal.h.e(visibility, "typeAlias.visibility");
            dVar.l0(visibility, builder);
            dVar.Q(descriptor, builder);
            builder.append(dVar.O("typealias"));
            builder.append(" ");
            dVar.U(descriptor, builder, true);
            List<w0> listS = descriptor.s();
            kotlin.jvm.internal.h.e(listS, "typeAlias.declaredTypeParameters");
            dVar.h0(listS, builder, false);
            dVar.H(descriptor, builder);
            builder.append(" = ");
            builder.append(dVar.u(descriptor.c0()));
            return l9.m.f9594a;
        }

        @Override // ma.l
        public final l9.m l(i0 descriptor, StringBuilder sb2) {
            StringBuilder builder = sb2;
            kotlin.jvm.internal.h.f(descriptor, "descriptor");
            kotlin.jvm.internal.h.f(builder, "builder");
            d dVar = d.this;
            dVar.getClass();
            dVar.Y(descriptor.d(), "package", builder);
            if (dVar.m()) {
                builder.append(" in context of ");
                dVar.U(descriptor.u0(), builder, false);
            }
            return l9.m.f9594a;
        }

        @Override // ma.l
        public final l9.m m(b0 descriptor, StringBuilder sb2) {
            StringBuilder builder = sb2;
            kotlin.jvm.internal.h.f(descriptor, "descriptor");
            kotlin.jvm.internal.h.f(builder, "builder");
            d.this.U(descriptor, builder, true);
            return l9.m.f9594a;
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x00c0  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x01bb  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void n(ma.u r11, java.lang.StringBuilder r12) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 471
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: nb.d.a.n(ma.u, java.lang.StringBuilder):void");
        }

        public final void o(k0 k0Var, StringBuilder sb2, String str) throws IOException {
            d dVar = d.this;
            int r12 = ((q) dVar.f10710c.G.b(k.W[31])).ordinal();
            if (r12 != 0) {
                if (r12 != 1) {
                    return;
                }
                n(k0Var, sb2);
            } else {
                dVar.Q(k0Var, sb2);
                sb2.append(str.concat(" for "));
                l0 l0VarA0 = k0Var.A0();
                kotlin.jvm.internal.h.e(l0VarA0, "descriptor.correspondingProperty");
                d.w(dVar, l0VarA0, sb2);
            }
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<d> {
        public b() {
            super(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v0 */
        /* JADX WARN: Type inference failed for: r7v1, types: [boolean, int] */
        /* JADX WARN: Type inference failed for: r7v2 */
        @Override // x9.a
        public final d invoke() throws IllegalAccessException, SecurityException, IllegalArgumentException {
            f changeOptions = f.f10717a;
            d dVar = d.this;
            dVar.getClass();
            kotlin.jvm.internal.h.f(changeOptions, "changeOptions");
            k kVar = dVar.f10710c;
            kVar.getClass();
            k kVar2 = new k();
            Field[] declaredFields = k.class.getDeclaredFields();
            kotlin.jvm.internal.h.e(declaredFields, "this::class.java.declaredFields");
            int length = declaredFields.length;
            ?? r72 = 0;
            int r82 = 0;
            while (r82 < length) {
                Field field = declaredFields[r82];
                if ((field.getModifiers() & 8) == 0) {
                    field.setAccessible(true);
                    Object obj = field.get(kVar);
                    z9.a aVar = obj instanceof z9.a ? (z9.a) obj : null;
                    if (aVar != null) {
                        String name = field.getName();
                        kotlin.jvm.internal.h.e(name, "field.name");
                        mc.j.D(name, "is", r72);
                        da.d dVarA = w.a(k.class);
                        String name2 = field.getName();
                        StringBuilder sb2 = new StringBuilder("get");
                        String name3 = field.getName();
                        kotlin.jvm.internal.h.e(name3, "field.name");
                        if (name3.length() > 0) {
                            char upperCase = Character.toUpperCase(name3.charAt(r72));
                            String strSubstring = name3.substring(1);
                            kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String).substring(startIndex)");
                            name3 = upperCase + strSubstring;
                        }
                        sb2.append(name3);
                        new kotlin.jvm.internal.r(dVarA, name2, sb2.toString());
                        field.set(kVar2, new l(aVar.f19883a, kVar2));
                    }
                }
                r82++;
                r72 = 0;
            }
            changeOptions.invoke(kVar2);
            kVar2.f10737a = true;
            return new d(kVar2);
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.l<qb.g<?>, CharSequence> {
        public c() {
            super(1);
        }

        @Override // x9.l
        public final CharSequence invoke(qb.g<?> gVar) {
            qb.g<?> it = gVar;
            kotlin.jvm.internal.h.f(it, "it");
            return d.this.I(it);
        }
    }

    /* renamed from: nb.d$d, reason: collision with other inner class name */
    public static final class C0204d extends kotlin.jvm.internal.j implements x9.l<cc.e0, Object> {

        /* renamed from: a, reason: collision with root package name */
        public static final C0204d f10715a = new C0204d();

        public C0204d() {
            super(1);
        }

        @Override // x9.l
        public final Object invoke(cc.e0 e0Var) {
            cc.e0 it = e0Var;
            kotlin.jvm.internal.h.f(it, "it");
            return it instanceof u0 ? ((u0) it).f2280b : it;
        }
    }

    public d(k kVar) {
        this.f10710c = kVar;
    }

    public static a0 E(z zVar) {
        boolean z10 = zVar instanceof ma.e;
        a0 a0Var = a0.ABSTRACT;
        a0 a0Var2 = a0.FINAL;
        if (z10) {
            return ((ma.e) zVar).h() == 2 ? a0Var : a0Var2;
        }
        ma.j jVarB = zVar.b();
        ma.e eVar = jVarB instanceof ma.e ? (ma.e) jVarB : null;
        if (eVar == null || !(zVar instanceof ma.b)) {
            return a0Var2;
        }
        ma.b bVar = (ma.b) zVar;
        Collection<? extends ma.b> collectionE = bVar.e();
        kotlin.jvm.internal.h.e(collectionE, "this.overriddenDescriptors");
        boolean z11 = !collectionE.isEmpty();
        a0 a0Var3 = a0.OPEN;
        return (!z11 || eVar.j() == a0Var2) ? (eVar.h() != 2 || kotlin.jvm.internal.h.a(bVar.getVisibility(), ma.p.f10221a)) ? a0Var2 : bVar.j() == a0Var ? a0Var : a0Var3 : a0Var3;
    }

    public static void c0(StringBuilder sb2) {
        int length = sb2.length();
        if (length == 0 || sb2.charAt(length - 1) != ' ') {
            sb2.append(' ');
        }
    }

    public static boolean n0(cc.e0 e0Var) {
        boolean z10;
        if (!ja.f.h(e0Var)) {
            return false;
        }
        List<i1> listK0 = e0Var.K0();
        if ((listK0 instanceof Collection) && listK0.isEmpty()) {
            z10 = true;
        } else {
            Iterator<T> it = listK0.iterator();
            while (it.hasNext()) {
                if (((i1) it.next()).c()) {
                    z10 = false;
                    break;
                }
            }
            z10 = true;
        }
        return z10;
    }

    public static final void w(d dVar, l0 l0Var, StringBuilder sb2) throws IOException {
        if (!dVar.A()) {
            k kVar = dVar.f10710c;
            l lVar = kVar.f10742g;
            da.m<Object>[] mVarArr = k.W;
            if (!((Boolean) lVar.b(mVarArr[5])).booleanValue()) {
                if (dVar.z().contains(i.ANNOTATIONS)) {
                    dVar.G(sb2, l0Var, null);
                    s sVarN0 = l0Var.n0();
                    if (sVarN0 != null) {
                        dVar.G(sb2, sVarN0, na.e.FIELD);
                    }
                    s sVarJ0 = l0Var.j0();
                    if (sVarJ0 != null) {
                        dVar.G(sb2, sVarJ0, na.e.PROPERTY_DELEGATE_FIELD);
                    }
                    if (((q) kVar.G.b(mVarArr[31])) == q.NONE) {
                        pa.m0 m0VarL = l0Var.l();
                        if (m0VarL != null) {
                            dVar.G(sb2, m0VarL, na.e.PROPERTY_GETTER);
                        }
                        n0 n0VarF = l0Var.f();
                        if (n0VarF != null) {
                            dVar.G(sb2, n0VarF, na.e.PROPERTY_SETTER);
                            List<a1> listG = n0VarF.g();
                            kotlin.jvm.internal.h.e(listG, "setter.valueParameters");
                            a1 it = (a1) t.p1(listG);
                            kotlin.jvm.internal.h.e(it, "it");
                            dVar.G(sb2, it, na.e.SETTER_PARAMETER);
                        }
                    }
                }
                List<o0> listP0 = l0Var.p0();
                kotlin.jvm.internal.h.e(listP0, "property.contextReceiverParameters");
                dVar.J(sb2, listP0);
                ma.q visibility = l0Var.getVisibility();
                kotlin.jvm.internal.h.e(visibility, "property.visibility");
                dVar.l0(visibility, sb2);
                dVar.T(sb2, dVar.z().contains(i.CONST) && l0Var.v(), "const");
                dVar.Q(l0Var, sb2);
                dVar.S(l0Var, sb2);
                dVar.X(l0Var, sb2);
                dVar.T(sb2, dVar.z().contains(i.LATEINIT) && l0Var.r0(), "lateinit");
                dVar.P(l0Var, sb2);
            }
            dVar.i0(l0Var, sb2, false);
            List<w0> typeParameters = l0Var.getTypeParameters();
            kotlin.jvm.internal.h.e(typeParameters, "property.typeParameters");
            dVar.h0(typeParameters, sb2, true);
            dVar.a0(sb2, l0Var);
        }
        dVar.U(l0Var, sb2, true);
        sb2.append(": ");
        cc.e0 type = l0Var.getType();
        kotlin.jvm.internal.h.e(type, "property.type");
        sb2.append(dVar.u(type));
        dVar.b0(sb2, l0Var);
        dVar.N(l0Var, sb2);
        List<w0> typeParameters2 = l0Var.getTypeParameters();
        kotlin.jvm.internal.h.e(typeParameters2, "property.typeParameters");
        dVar.m0(sb2, typeParameters2);
    }

    public final boolean A() {
        return ((Boolean) this.f10710c.f.b(k.W[4])).booleanValue();
    }

    public final r B() {
        return (r) this.f10710c.C.b(k.W[27]);
    }

    public final c.l C() {
        return (c.l) this.f10710c.B.b(k.W[26]);
    }

    public final boolean D() {
        return ((Boolean) this.f10710c.f10745j.b(k.W[8])).booleanValue();
    }

    public final String F(ma.j declarationDescriptor) {
        ma.j jVarB;
        String str;
        kotlin.jvm.internal.h.f(declarationDescriptor, "declarationDescriptor");
        StringBuilder sb2 = new StringBuilder();
        declarationDescriptor.o0(new a(), sb2);
        k kVar = this.f10710c;
        l lVar = kVar.f10739c;
        da.m<Object>[] mVarArr = k.W;
        if (((Boolean) lVar.b(mVarArr[1])).booleanValue() && !(declarationDescriptor instanceof e0) && !(declarationDescriptor instanceof i0) && (jVarB = declarationDescriptor.b()) != null && !(jVarB instanceof b0)) {
            sb2.append(" ");
            int r6 = B().ordinal();
            if (r6 == 0) {
                str = "defined in";
            } else {
                if (r6 != 1) {
                    throw new j7.p();
                }
                str = "<i>defined in</i>";
            }
            sb2.append(str);
            sb2.append(" ");
            lb.d dVarG = ob.i.g(jVarB);
            kotlin.jvm.internal.h.e(dVarG, "getFqName(containingDeclaration)");
            sb2.append(dVarG.d() ? "root package" : s(dVarG));
            if (((Boolean) kVar.f10740d.b(mVarArr[2])).booleanValue() && (jVarB instanceof e0) && (declarationDescriptor instanceof ma.m)) {
                ((ma.m) declarationDescriptor).getSource().a();
            }
        }
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final void G(StringBuilder sb2, na.a aVar, na.e eVar) {
        if (z().contains(i.ANNOTATIONS)) {
            boolean z10 = aVar instanceof cc.e0;
            k kVar = this.f10710c;
            Set<lb.c> setL = z10 ? l() : (Set) kVar.J.b(k.W[34]);
            x9.l lVar = (x9.l) kVar.L.b(k.W[36]);
            for (na.c cVar : aVar.getAnnotations()) {
                if (!t.V0(setL, cVar.d()) && !kotlin.jvm.internal.h.a(cVar.d(), o.a.f8388r) && (lVar == null || ((Boolean) lVar.invoke(cVar)).booleanValue())) {
                    sb2.append(p(cVar, eVar));
                    if (((Boolean) kVar.I.b(k.W[33])).booleanValue()) {
                        sb2.append('\n');
                    } else {
                        sb2.append(" ");
                    }
                }
            }
        }
    }

    public final void H(ma.h hVar, StringBuilder sb2) {
        List<w0> listS = hVar.s();
        kotlin.jvm.internal.h.e(listS, "classifier.declaredTypeParameters");
        List<w0> parameters = hVar.i().getParameters();
        kotlin.jvm.internal.h.e(parameters, "classifier.typeConstructor.parameters");
        if (D() && hVar.H() && parameters.size() > listS.size()) {
            sb2.append(" /*captured type parameters: ");
            g0(sb2, parameters.subList(listS.size(), parameters.size()));
            sb2.append("*/");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String I(qb.g<?> gVar) {
        if (gVar instanceof qb.b) {
            return t.g1((Iterable) ((qb.b) gVar).f13469a, ", ", "{", "}", new c(), 24);
        }
        if (gVar instanceof qb.a) {
            return mc.n.U("@", p((na.c) ((qb.a) gVar).f13469a, null));
        }
        if (!(gVar instanceof qb.s)) {
            return gVar.toString();
        }
        s.a aVar = (s.a) ((qb.s) gVar).f13469a;
        if (aVar instanceof s.a.C0225a) {
            return ((s.a.C0225a) aVar).f13482a + "::class";
        }
        if (!(aVar instanceof s.a.b)) {
            throw new j7.p();
        }
        s.a.b bVar = (s.a.b) aVar;
        String strB = bVar.f13483a.f13467a.b().b();
        for (int r22 = 0; r22 < bVar.f13483a.f13468b; r22++) {
            strB = "kotlin.Array<" + strB + '>';
        }
        return android.support.v4.media.a.f(strB, "::class");
    }

    public final void J(StringBuilder sb2, List list) {
        if (!list.isEmpty()) {
            sb2.append("context(");
            Iterator it = list.iterator();
            int r12 = 0;
            while (it.hasNext()) {
                int r22 = r12 + 1;
                o0 o0Var = (o0) it.next();
                G(sb2, o0Var, na.e.RECEIVER);
                cc.e0 type = o0Var.getType();
                kotlin.jvm.internal.h.e(type, "contextReceiver.type");
                sb2.append(M(type));
                sb2.append(r12 == b8.f.M(list) ? ") " : ", ");
                r12 = r22;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void K(java.lang.StringBuilder r7, cc.m0 r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: nb.d.K(java.lang.StringBuilder, cc.m0):void");
    }

    public final String L(String str) {
        int r02 = B().ordinal();
        if (r02 == 0) {
            return str;
        }
        if (r02 == 1) {
            return androidx.browser.browseractions.a.a("<font color=red><b>", str, "</b></font>");
        }
        throw new j7.p();
    }

    public final String M(cc.e0 e0Var) throws IOException {
        String strU = u(e0Var);
        if (!n0(e0Var) || q1.g(e0Var)) {
            return strU;
        }
        return "(" + strU + ')';
    }

    public final void N(b1 b1Var, StringBuilder sb2) {
        qb.g<?> gVarS;
        if (!((Boolean) this.f10710c.f10756u.b(k.W[19])).booleanValue() || (gVarS = b1Var.S()) == null) {
            return;
        }
        sb2.append(" = ");
        sb2.append(x(I(gVarS)));
    }

    public final String O(String str) {
        int r02 = B().ordinal();
        if (r02 == 0) {
            return str;
        }
        if (r02 == 1) {
            return ((Boolean) this.f10710c.U.b(k.W[46])).booleanValue() ? str : androidx.browser.browseractions.a.a("<b>", str, "</b>");
        }
        throw new j7.p();
    }

    public final void P(ma.b bVar, StringBuilder sb2) {
        if (z().contains(i.MEMBER_KIND) && D() && bVar.k0() != b.a.DECLARATION) {
            sb2.append("/*");
            sb2.append(a6.a.G(bVar.k0().name()));
            sb2.append("*/ ");
        }
    }

    public final void Q(z zVar, StringBuilder sb2) {
        T(sb2, zVar.isExternal(), "external");
        T(sb2, z().contains(i.EXPECT) && zVar.G(), "expect");
        T(sb2, z().contains(i.ACTUAL) && zVar.D0(), "actual");
    }

    public final void R(a0 a0Var, StringBuilder sb2, a0 a0Var2) {
        if (((Boolean) this.f10710c.f10751p.b(k.W[14])).booleanValue() || a0Var != a0Var2) {
            T(sb2, z().contains(i.MODALITY), a6.a.G(a0Var.name()));
        }
    }

    public final void S(ma.b bVar, StringBuilder sb2) {
        if (ob.i.t(bVar) && bVar.j() == a0.FINAL) {
            return;
        }
        if (((o) this.f10710c.A.b(k.W[25])) == o.RENDER_OVERRIDE && bVar.j() == a0.OPEN && (!bVar.e().isEmpty())) {
            return;
        }
        a0 a0VarJ = bVar.j();
        kotlin.jvm.internal.h.e(a0VarJ, "callable.modality");
        R(a0VarJ, sb2, E(bVar));
    }

    public final void T(StringBuilder sb2, boolean z10, String str) {
        if (z10) {
            sb2.append(O(str));
            sb2.append(" ");
        }
    }

    public final void U(ma.j jVar, StringBuilder sb2, boolean z10) {
        lb.f name = jVar.getName();
        kotlin.jvm.internal.h.e(name, "descriptor.name");
        sb2.append(t(name, z10));
    }

    public final void V(StringBuilder sb2, cc.e0 e0Var) throws IOException {
        s1 s1VarP0 = e0Var.P0();
        cc.a aVar = s1VarP0 instanceof cc.a ? (cc.a) s1VarP0 : null;
        if (aVar == null) {
            W(sb2, e0Var);
            return;
        }
        k kVar = this.f10710c;
        l lVar = kVar.Q;
        da.m<Object>[] mVarArr = k.W;
        boolean zBooleanValue = ((Boolean) lVar.b(mVarArr[41])).booleanValue();
        cc.m0 m0Var = aVar.f2254b;
        if (zBooleanValue) {
            W(sb2, m0Var);
            return;
        }
        W(sb2, aVar.f2255c);
        if (((Boolean) kVar.P.b(mVarArr[40])).booleanValue()) {
            r rVarB = B();
            r.a aVar2 = r.f10777b;
            if (rVarB == aVar2) {
                sb2.append("<font color=\"808080\"><i>");
            }
            sb2.append(" /* = ");
            W(sb2, m0Var);
            sb2.append(" */");
            if (B() == aVar2) {
                sb2.append("</i></font>");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x018d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void W(java.lang.StringBuilder r18, cc.e0 r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 633
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: nb.d.W(java.lang.StringBuilder, cc.e0):void");
    }

    public final void X(ma.b bVar, StringBuilder sb2) {
        if (z().contains(i.OVERRIDE) && (!bVar.e().isEmpty()) && ((o) this.f10710c.A.b(k.W[25])) != o.RENDER_OPEN) {
            T(sb2, true, "override");
            if (D()) {
                sb2.append("/*");
                sb2.append(bVar.e().size());
                sb2.append("*/ ");
            }
        }
    }

    public final void Y(lb.c cVar, String str, StringBuilder sb2) {
        sb2.append(O(str));
        lb.d dVarI = cVar.i();
        kotlin.jvm.internal.h.e(dVarI, "fqName.toUnsafe()");
        String strS = s(dVarI);
        if (strS.length() > 0) {
            sb2.append(" ");
            sb2.append(strS);
        }
    }

    public final void Z(StringBuilder sb2, m9 m9Var) {
        String strE0;
        m9 m9Var2 = (m9) m9Var.f12510c;
        if (m9Var2 != null) {
            Z(sb2, m9Var2);
            sb2.append('.');
            lb.f name = ((ma.h) m9Var.f12508a).getName();
            kotlin.jvm.internal.h.e(name, "possiblyInnerType.classifierDescriptor.name");
            strE0 = t(name, false);
        } else {
            c1 c1VarI = ((ma.h) m9Var.f12508a).i();
            kotlin.jvm.internal.h.e(c1VarI, "possiblyInnerType.classi…escriptor.typeConstructor");
            strE0 = e0(c1VarI);
        }
        sb2.append(strE0);
        sb2.append(d0((List) m9Var.f12509b));
    }

    @Override // nb.j
    public final void a() {
        this.f10710c.a();
    }

    public final void a0(StringBuilder sb2, ma.a aVar) {
        o0 o0VarH0 = aVar.h0();
        if (o0VarH0 != null) {
            G(sb2, o0VarH0, na.e.RECEIVER);
            cc.e0 type = o0VarH0.getType();
            kotlin.jvm.internal.h.e(type, "receiver.type");
            sb2.append(M(type));
            sb2.append(".");
        }
    }

    @Override // nb.j
    public final void b() {
        this.f10710c.b();
    }

    public final void b0(StringBuilder sb2, ma.a aVar) {
        o0 o0VarH0;
        if (((Boolean) this.f10710c.E.b(k.W[29])).booleanValue() && (o0VarH0 = aVar.h0()) != null) {
            sb2.append(" on ");
            cc.e0 type = o0VarH0.getType();
            kotlin.jvm.internal.h.e(type, "receiver.type");
            sb2.append(u(type));
        }
    }

    @Override // nb.j
    public final void c() {
        this.f10710c.c();
    }

    @Override // nb.j
    public final void d(nb.b bVar) {
        this.f10710c.d(bVar);
    }

    public final String d0(List<? extends i1> typeArguments) throws IOException {
        kotlin.jvm.internal.h.f(typeArguments, "typeArguments");
        if (typeArguments.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(x("<"));
        t.f1(typeArguments, sb2, ", ", null, null, new e(this), 60);
        sb2.append(x(">"));
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @Override // nb.j
    public final void e(p pVar) {
        this.f10710c.e(pVar);
    }

    public final String e0(c1 typeConstructor) {
        kotlin.jvm.internal.h.f(typeConstructor, "typeConstructor");
        ma.g klass = typeConstructor.n();
        if (klass instanceof w0 ? true : klass instanceof ma.e ? true : klass instanceof v0) {
            kotlin.jvm.internal.h.f(klass, "klass");
            return ec.i.f(klass) ? klass.i().toString() : y().a(klass, this);
        }
        if (klass == null) {
            return typeConstructor instanceof c0 ? ((c0) typeConstructor).d(C0204d.f10715a) : typeConstructor.toString();
        }
        throw new IllegalStateException(("Unexpected classifier: " + klass.getClass()).toString());
    }

    @Override // nb.j
    public final void f(Set<? extends i> set) {
        kotlin.jvm.internal.h.f(set, "<set-?>");
        this.f10710c.f(set);
    }

    public final void f0(w0 w0Var, StringBuilder sb2, boolean z10) {
        if (z10) {
            sb2.append(x("<"));
        }
        if (D()) {
            sb2.append("/*");
            sb2.append(w0Var.getIndex());
            sb2.append("*/ ");
        }
        T(sb2, w0Var.A(), "reified");
        String str = w0Var.I().f2363a;
        boolean z11 = false;
        T(sb2, str.length() > 0, str);
        G(sb2, w0Var, null);
        U(w0Var, sb2, z10);
        int size = w0Var.getUpperBounds().size();
        if ((size > 1 && !z10) || size == 1) {
            cc.e0 next = w0Var.getUpperBounds().iterator().next();
            if (next == null) {
                ja.k.a(141);
                throw null;
            }
            if (ja.k.x(next) && next.N0()) {
                z11 = true;
            }
            if (!z11) {
                sb2.append(" : ");
                sb2.append(u(next));
            }
        } else if (z10) {
            boolean z12 = true;
            for (cc.e0 e0Var : w0Var.getUpperBounds()) {
                if (e0Var == null) {
                    ja.k.a(141);
                    throw null;
                }
                if (!(ja.k.x(e0Var) && e0Var.N0())) {
                    if (z12) {
                        sb2.append(" : ");
                    } else {
                        sb2.append(" & ");
                    }
                    sb2.append(u(e0Var));
                    z12 = false;
                }
            }
        }
        if (z10) {
            sb2.append(x(">"));
        }
    }

    @Override // nb.j
    public final boolean g() {
        return this.f10710c.g();
    }

    public final void g0(StringBuilder sb2, List<? extends w0> list) {
        Iterator<? extends w0> it = list.iterator();
        while (it.hasNext()) {
            f0(it.next(), sb2, false);
            if (it.hasNext()) {
                sb2.append(", ");
            }
        }
    }

    @Override // nb.j
    public final void h(LinkedHashSet linkedHashSet) {
        this.f10710c.h(linkedHashSet);
    }

    public final void h0(List<? extends w0> list, StringBuilder sb2, boolean z10) {
        if (!((Boolean) this.f10710c.f10757v.b(k.W[20])).booleanValue() && (!list.isEmpty())) {
            sb2.append(x("<"));
            g0(sb2, list);
            sb2.append(x(">"));
            if (z10) {
                sb2.append(" ");
            }
        }
    }

    @Override // nb.j
    public final void i() {
        this.f10710c.i();
    }

    public final void i0(b1 b1Var, StringBuilder sb2, boolean z10) {
        if (z10 || !(b1Var instanceof a1)) {
            sb2.append(O(b1Var.f0() ? "var" : "val"));
            sb2.append(" ");
        }
    }

    @Override // nb.j
    public final void j() {
        this.f10710c.j();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j0(ma.a1 r11, boolean r12, java.lang.StringBuilder r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: nb.d.j0(ma.a1, boolean, java.lang.StringBuilder, boolean):void");
    }

    @Override // nb.j
    public final void k() {
        this.f10710c.k();
    }

    public final void k0(Collection<? extends a1> collection, boolean z10, StringBuilder sb2) {
        int r02 = ((p) this.f10710c.D.b(k.W[28])).ordinal();
        boolean z11 = true;
        if (r02 != 0) {
            if (r02 != 1) {
                if (r02 != 2) {
                    throw new j7.p();
                }
            } else if (z10) {
            }
            z11 = false;
        }
        int size = collection.size();
        C().b(sb2);
        int r03 = 0;
        for (a1 a1Var : collection) {
            C().c(a1Var, sb2);
            j0(a1Var, z11, sb2, false);
            C().a(a1Var, r03, size, sb2);
            r03++;
        }
        C().d(sb2);
    }

    @Override // nb.j
    public final Set<lb.c> l() {
        return this.f10710c.l();
    }

    public final boolean l0(ma.q qVar, StringBuilder sb2) {
        if (!z().contains(i.VISIBILITY)) {
            return false;
        }
        k kVar = this.f10710c;
        l lVar = kVar.f10749n;
        da.m<Object>[] mVarArr = k.W;
        if (((Boolean) lVar.b(mVarArr[12])).booleanValue()) {
            qVar = qVar.d();
        }
        if (!((Boolean) kVar.f10750o.b(mVarArr[13])).booleanValue() && kotlin.jvm.internal.h.a(qVar, ma.p.f10230k)) {
            return false;
        }
        sb2.append(O(qVar.b()));
        sb2.append(" ");
        return true;
    }

    @Override // nb.j
    public final boolean m() {
        return this.f10710c.m();
    }

    public final void m0(StringBuilder sb2, List list) throws IOException {
        if (((Boolean) this.f10710c.f10757v.b(k.W[20])).booleanValue()) {
            return;
        }
        ArrayList arrayList = new ArrayList(0);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            w0 w0Var = (w0) it.next();
            List<cc.e0> upperBounds = w0Var.getUpperBounds();
            kotlin.jvm.internal.h.e(upperBounds, "typeParameter.upperBounds");
            for (cc.e0 it2 : t.W0(upperBounds)) {
                StringBuilder sb3 = new StringBuilder();
                lb.f name = w0Var.getName();
                kotlin.jvm.internal.h.e(name, "typeParameter.name");
                sb3.append(t(name, false));
                sb3.append(" : ");
                kotlin.jvm.internal.h.e(it2, "it");
                sb3.append(u(it2));
                arrayList.add(sb3.toString());
            }
        }
        if (!arrayList.isEmpty()) {
            sb2.append(" ");
            sb2.append(O("where"));
            sb2.append(" ");
            t.f1(arrayList, sb2, ", ", null, null, null, 124);
        }
    }

    @Override // nb.j
    public final void n() {
        this.f10710c.n();
    }

    @Override // nb.j
    public final void o() {
        this.f10710c.o();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v6, types: [m9.v] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.util.ArrayList] */
    @Override // nb.c
    public final String p(na.c annotation, na.e eVar) throws IOException {
        List listG0;
        ma.d dVarM;
        List<a1> listG;
        kotlin.jvm.internal.h.f(annotation, "annotation");
        StringBuilder sb2 = new StringBuilder();
        sb2.append('@');
        if (eVar != null) {
            sb2.append(eVar.f10646a + ':');
        }
        cc.e0 type = annotation.getType();
        sb2.append(u(type));
        k kVar = this.f10710c;
        if (kVar.p().f10692a) {
            Map<lb.f, qb.g<?>> mapA = annotation.a();
            Iterable arrayList = 0;
            arrayList = 0;
            arrayList = 0;
            ma.e eVarD = ((Boolean) kVar.H.b(k.W[32])).booleanValue() ? sb.b.d(annotation) : null;
            if (eVarD != null && (dVarM = eVarD.M()) != null && (listG = dVarM.g()) != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : listG) {
                    if (((a1) obj).t0()) {
                        arrayList2.add(obj);
                    }
                }
                arrayList = new ArrayList(m9.n.Q0(arrayList2));
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((a1) it.next()).getName());
                }
            }
            if (arrayList == 0) {
                arrayList = v.f10173a;
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : arrayList) {
                lb.f it2 = (lb.f) obj2;
                kotlin.jvm.internal.h.e(it2, "it");
                if (true ^ mapA.containsKey(it2)) {
                    arrayList3.add(obj2);
                }
            }
            ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                arrayList4.add(((lb.f) it3.next()).o() + " = ...");
            }
            Set<Map.Entry<lb.f, qb.g<?>>> setEntrySet = mapA.entrySet();
            ArrayList arrayList5 = new ArrayList(m9.n.Q0(setEntrySet));
            Iterator it4 = setEntrySet.iterator();
            while (it4.hasNext()) {
                Map.Entry entry = (Map.Entry) it4.next();
                lb.f fVar = (lb.f) entry.getKey();
                qb.g<?> gVar = (qb.g) entry.getValue();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(fVar.o());
                sb3.append(" = ");
                sb3.append(!arrayList.contains(fVar) ? I(gVar) : "...");
                arrayList5.add(sb3.toString());
            }
            ArrayList arrayListM1 = t.m1(arrayList5, arrayList4);
            if (arrayListM1.size() <= 1) {
                listG0 = t.v1(arrayListM1);
            } else {
                Object[] array = arrayListM1.toArray(new Comparable[0]);
                Comparable[] comparableArr = (Comparable[]) array;
                kotlin.jvm.internal.h.f(comparableArr, "<this>");
                if (comparableArr.length > 1) {
                    Arrays.sort(comparableArr);
                }
                listG0 = m9.i.g0(array);
            }
            if (kVar.p().f10693b || (!listG0.isEmpty())) {
                t.f1(listG0, sb2, ", ", "(", ")", null, 112);
            }
        }
        if (D() && (c5.v.y(type) || (type.M0().n() instanceof d0.b))) {
            sb2.append(" /* annotation class not found */");
        }
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @Override // nb.c
    public final String r(String lowerRendered, String upperRendered, ja.k kVar) {
        kotlin.jvm.internal.h.f(lowerRendered, "lowerRendered");
        kotlin.jvm.internal.h.f(upperRendered, "upperRendered");
        if (b8.f.q0(lowerRendered, upperRendered)) {
            return mc.j.D(upperRendered, "(", false) ? androidx.browser.browseractions.a.a("(", lowerRendered, ")!") : lowerRendered.concat("!");
        }
        String strF0 = mc.n.f0(y().a(kVar.j(o.a.B), this), "Collection");
        String strG0 = b8.f.g0(lowerRendered, strF0.concat("Mutable"), upperRendered, strF0, strF0.concat("(Mutable)"));
        if (strG0 != null) {
            return strG0;
        }
        String strG02 = b8.f.g0(lowerRendered, strF0.concat("MutableMap.MutableEntry"), upperRendered, strF0.concat("Map.Entry"), strF0.concat("(Mutable)Map.(Mutable)Entry"));
        if (strG02 != null) {
            return strG02;
        }
        nb.b bVarY = y();
        ma.e eVarK = kVar.k("Array");
        kotlin.jvm.internal.h.e(eVarK, "builtIns.array");
        String strF02 = mc.n.f0(bVarY.a(eVarK, this), "Array");
        StringBuilder sbE = androidx.constraintlayout.core.a.e(strF02);
        sbE.append(x("Array<"));
        String string = sbE.toString();
        StringBuilder sbE2 = androidx.constraintlayout.core.a.e(strF02);
        sbE2.append(x("Array<out "));
        String string2 = sbE2.toString();
        StringBuilder sbE3 = androidx.constraintlayout.core.a.e(strF02);
        sbE3.append(x("Array<(out) "));
        String strG03 = b8.f.g0(lowerRendered, string, upperRendered, string2, sbE3.toString());
        if (strG03 != null) {
            return strG03;
        }
        return "(" + lowerRendered + ".." + upperRendered + ')';
    }

    @Override // nb.c
    public final String s(lb.d dVar) {
        return x(b8.f.f0(dVar.f()));
    }

    @Override // nb.c
    public final String t(lb.f fVar, boolean z10) {
        String strX = x(b8.f.e0(fVar));
        return (((Boolean) this.f10710c.U.b(k.W[46])).booleanValue() && B() == r.f10777b && z10) ? androidx.browser.browseractions.a.a("<b>", strX, "</b>") : strX;
    }

    @Override // nb.c
    public final String u(cc.e0 type) throws IOException {
        kotlin.jvm.internal.h.f(type, "type");
        StringBuilder sb2 = new StringBuilder();
        V(sb2, (cc.e0) ((x9.l) this.f10710c.f10758x.b(k.W[22])).invoke(type));
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @Override // nb.c
    public final String v(i1 typeProjection) throws IOException {
        kotlin.jvm.internal.h.f(typeProjection, "typeProjection");
        StringBuilder sb2 = new StringBuilder();
        t.f1(b8.f.S(typeProjection), sb2, ", ", null, null, new e(this), 60);
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String x(String str) {
        return B().n(str);
    }

    public final nb.b y() {
        return (nb.b) this.f10710c.f10738b.b(k.W[0]);
    }

    public final Set<i> z() {
        return (Set) this.f10710c.f10741e.b(k.W[3]);
    }
}
