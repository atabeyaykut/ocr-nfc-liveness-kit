package ga;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import mb.h;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;
import ra.i;

/* loaded from: classes2.dex */
public final class z0 {

    /* renamed from: a, reason: collision with root package name */
    public static final lb.c f6145a = new lb.c("kotlin.jvm.JvmStatic");

    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6146a;

        static {
            int[] r02 = new int[ja.l.values().length];
            try {
                r02[ja.l.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                r02[ja.l.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                r02[ja.l.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                r02[ja.l.SHORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                r02[ja.l.INT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                r02[ja.l.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                r02[ja.l.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                r02[ja.l.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            f6146a = r02;
        }
    }

    public static final h<?> a(Object obj) {
        h<?> hVar = obj instanceof h ? (h) obj : null;
        if (hVar != null) {
            return hVar;
        }
        x xVarB = b(obj);
        return xVarB != null ? xVarB : c(obj);
    }

    public static final x b(Object obj) {
        x xVar = obj instanceof x ? (x) obj : null;
        if (xVar != null) {
            return xVar;
        }
        kotlin.jvm.internal.f fVar = obj instanceof kotlin.jvm.internal.f ? (kotlin.jvm.internal.f) obj : null;
        da.c cVarCompute = fVar != null ? fVar.compute() : null;
        if (cVarCompute instanceof x) {
            return (x) cVarCompute;
        }
        return null;
    }

    public static final l0<?> c(Object obj) {
        l0<?> l0Var = obj instanceof l0 ? (l0) obj : null;
        if (l0Var != null) {
            return l0Var;
        }
        kotlin.jvm.internal.s sVar = obj instanceof kotlin.jvm.internal.s ? (kotlin.jvm.internal.s) obj : null;
        da.c cVarCompute = sVar != null ? sVar.compute() : null;
        if (cVarCompute instanceof l0) {
            return (l0) cVarCompute;
        }
        return null;
    }

    public static final ArrayList d(na.a aVar) throws IllegalAccessException, IllegalArgumentException, NegativeArraySizeException, InvocationTargetException {
        boolean z10;
        List listS;
        Annotation annotationI;
        kotlin.jvm.internal.h.f(aVar, "<this>");
        na.h annotations = aVar.getAnnotations();
        ArrayList arrayList = new ArrayList();
        for (na.c cVar : annotations) {
            ma.r0 source = cVar.getSource();
            if (source instanceof ra.b) {
                annotationI = ((ra.b) source).f14361b;
            } else if (source instanceof i.a) {
                sa.v vVar = ((i.a) source).f14371b;
                sa.e eVar = vVar instanceof sa.e ? (sa.e) vVar : null;
                annotationI = eVar != null ? eVar.f15341a : null;
            } else {
                annotationI = i(cVar);
            }
            if (annotationI != null) {
                arrayList.add(annotationI);
            }
        }
        if (arrayList.isEmpty()) {
            z10 = false;
        } else {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (kotlin.jvm.internal.h.a(com.google.android.gms.internal.clearcut.d0.q(com.google.android.gms.internal.clearcut.d0.p((Annotation) it.next())).getSimpleName(), "Container")) {
                    z10 = true;
                    break;
                }
            }
            z10 = false;
        }
        if (!z10) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Annotation annotation = (Annotation) it2.next();
            Class clsQ = com.google.android.gms.internal.clearcut.d0.q(com.google.android.gms.internal.clearcut.d0.p(annotation));
            if (!kotlin.jvm.internal.h.a(clsQ.getSimpleName(), "Container") || clsQ.getAnnotation(kotlin.jvm.internal.y.class) == null) {
                listS = b8.f.S(annotation);
            } else {
                Object objInvoke = clsQ.getDeclaredMethod("value", new Class[0]).invoke(annotation, new Object[0]);
                kotlin.jvm.internal.h.d(objInvoke, "null cannot be cast to non-null type kotlin.Array<out kotlin.Annotation>");
                listS = m9.i.g0((Annotation[]) objInvoke);
            }
            m9.p.T0(listS, arrayList2);
        }
        return arrayList2;
    }

    public static final Object e(Type type) {
        if (!(type instanceof Class) || !((Class) type).isPrimitive()) {
            return null;
        }
        if (kotlin.jvm.internal.h.a(type, Boolean.TYPE)) {
            return Boolean.FALSE;
        }
        if (kotlin.jvm.internal.h.a(type, Character.TYPE)) {
            return (char) 0;
        }
        if (kotlin.jvm.internal.h.a(type, Byte.TYPE)) {
            return (byte) 0;
        }
        if (kotlin.jvm.internal.h.a(type, Short.TYPE)) {
            return (short) 0;
        }
        if (kotlin.jvm.internal.h.a(type, Integer.TYPE)) {
            return 0;
        }
        if (kotlin.jvm.internal.h.a(type, Float.TYPE)) {
            return Float.valueOf(0.0f);
        }
        if (kotlin.jvm.internal.h.a(type, Long.TYPE)) {
            return 0L;
        }
        if (kotlin.jvm.internal.h.a(type, Double.TYPE)) {
            return Double.valueOf(0.0d);
        }
        if (kotlin.jvm.internal.h.a(type, Void.TYPE)) {
            throw new IllegalStateException("Parameter with void type is illegal");
        }
        throw new UnsupportedOperationException("Unknown primitive: " + type);
    }

    public static final ma.a f(Class moduleAnchor, h.c proto, ib.c nameResolver, ib.g typeTable, ib.a metadataVersion, x9.p createDescriptor) {
        List<gb.r> list;
        kotlin.jvm.internal.h.f(moduleAnchor, "moduleAnchor");
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        kotlin.jvm.internal.h.f(metadataVersion, "metadataVersion");
        kotlin.jvm.internal.h.f(createDescriptor, "createDescriptor");
        ra.h hVarA = s0.a(moduleAnchor);
        if (proto instanceof gb.h) {
            list = ((gb.h) proto).f6333j;
        } else {
            if (!(proto instanceof gb.m)) {
                throw new IllegalStateException(("Unsupported message: " + proto).toString());
            }
            list = ((gb.m) proto).f6398j;
        }
        List<gb.r> typeParameters = list;
        yb.l lVar = hVarA.f14368a;
        ma.b0 b0Var = lVar.f19443b;
        ib.h hVar = ib.h.f7354b;
        kotlin.jvm.internal.h.e(typeParameters, "typeParameters");
        return (ma.a) createDescriptor.mo7invoke(new yb.z(new yb.n(lVar, nameResolver, b0Var, typeTable, hVar, metadataVersion, null, null, typeParameters)), proto);
    }

    public static final ma.o0 g(ma.a aVar) {
        kotlin.jvm.internal.h.f(aVar, "<this>");
        if (aVar.a0() == null) {
            return null;
        }
        ma.j jVarB = aVar.b();
        kotlin.jvm.internal.h.d(jVarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        return ((ma.e) jVarB).J0();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final Class<?> h(ClassLoader classLoader, lb.b bVar, int r52) {
        String str = la.c.f9598a;
        lb.d dVarI = bVar.b().i();
        kotlin.jvm.internal.h.e(dVarI, "kotlinClassId.asSingleFqName().toUnsafe()");
        lb.b bVarG = la.c.g(dVarI);
        if (bVarG != null) {
            bVar = bVarG;
        }
        String strB = bVar.h().b();
        String strB2 = bVar.i().b();
        if (kotlin.jvm.internal.h.a(strB, "kotlin")) {
            switch (strB2.hashCode()) {
                case -901856463:
                    if (strB2.equals("BooleanArray")) {
                        return boolean[].class;
                    }
                    break;
                case -763279523:
                    if (strB2.equals("ShortArray")) {
                        return short[].class;
                    }
                    break;
                case -755911549:
                    if (strB2.equals("CharArray")) {
                        return char[].class;
                    }
                    break;
                case -74930671:
                    if (strB2.equals("ByteArray")) {
                        return byte[].class;
                    }
                    break;
                case 22374632:
                    if (strB2.equals("DoubleArray")) {
                        return double[].class;
                    }
                    break;
                case 63537721:
                    if (strB2.equals("Array")) {
                        return Object[].class;
                    }
                    break;
                case 601811914:
                    if (strB2.equals("IntArray")) {
                        return int[].class;
                    }
                    break;
                case 948852093:
                    if (strB2.equals("FloatArray")) {
                        return float[].class;
                    }
                    break;
                case 2104330525:
                    if (strB2.equals("LongArray")) {
                        return long[].class;
                    }
                    break;
            }
        }
        String str2 = strB + '.' + mc.j.B(strB2, '.', '$');
        if (r52 > 0) {
            str2 = mc.j.A("[", r52) + Matrix.MATRIX_TYPE_RANDOM_LT + str2 + ';';
        }
        return x5.a.t(classLoader, str2);
    }

    public static final Annotation i(na.c cVar) throws NegativeArraySizeException {
        ma.e eVarD = sb.b.d(cVar);
        Class<?> clsJ = eVarD != null ? j(eVarD) : null;
        if (!(clsJ instanceof Class)) {
            clsJ = null;
        }
        if (clsJ == null) {
            return null;
        }
        Set<Map.Entry<lb.f, qb.g<?>>> setEntrySet = cVar.a().entrySet();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            lb.f fVar = (lb.f) entry.getKey();
            qb.g gVar = (qb.g) entry.getValue();
            ClassLoader classLoader = clsJ.getClassLoader();
            kotlin.jvm.internal.h.e(classLoader, "annotationClass.classLoader");
            Object objK = k(gVar, classLoader);
            l9.g gVar2 = objK != null ? new l9.g(fVar.o(), objK) : null;
            if (gVar2 != null) {
                arrayList.add(gVar2);
            }
        }
        Map mapS0 = m9.e0.S0(arrayList);
        Set setKeySet = mapS0.keySet();
        ArrayList arrayList2 = new ArrayList(m9.n.Q0(setKeySet));
        Iterator it2 = setKeySet.iterator();
        while (it2.hasNext()) {
            arrayList2.add(clsJ.getDeclaredMethod((String) it2.next(), new Class[0]));
        }
        return (Annotation) ha.c.a(clsJ, mapS0, arrayList2);
    }

    public static final Class<?> j(ma.e eVar) {
        kotlin.jvm.internal.h.f(eVar, "<this>");
        ma.r0 source = eVar.getSource();
        kotlin.jvm.internal.h.e(source, "source");
        if (source instanceof eb.u) {
            eb.s sVar = ((eb.u) source).f5236b;
            kotlin.jvm.internal.h.d(sVar, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.components.ReflectKotlinClass");
            return ((ra.e) sVar).f14363a;
        }
        if (source instanceof i.a) {
            sa.v vVar = ((i.a) source).f14371b;
            kotlin.jvm.internal.h.d(vVar, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.structure.ReflectJavaClass");
            return ((sa.r) vVar).f15363a;
        }
        lb.b bVarF = sb.b.f(eVar);
        if (bVarF == null) {
            return null;
        }
        return h(sa.d.d(eVar.getClass()), bVarF, 0);
    }

    /* JADX WARN: Incorrect type for immutable var: ssa=boolean[], code=short[], for r7v18, types: [boolean[]] */
    /* JADX WARN: Incorrect type for immutable var: ssa=byte[], code=short[], for r7v20, types: [byte[]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v16, types: [java.lang.Class[]] */
    /* JADX WARN: Type inference failed for: r7v17, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v22, types: [int[]] */
    /* JADX WARN: Type inference failed for: r7v23, types: [float[]] */
    /* JADX WARN: Type inference failed for: r7v24, types: [long[]] */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v26, types: [double[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object k(qb.g<?> r6, java.lang.ClassLoader r7) throws java.lang.NegativeArraySizeException {
        /*
            Method dump skipped, instructions count: 704
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ga.z0.k(qb.g, java.lang.ClassLoader):java.lang.Object");
    }
}
