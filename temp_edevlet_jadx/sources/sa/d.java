package sa;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final List<da.d<? extends Object>> f15334a;

    /* renamed from: b, reason: collision with root package name */
    public static final Map<Class<? extends Object>, Class<? extends Object>> f15335b;

    /* renamed from: c, reason: collision with root package name */
    public static final Map<Class<? extends Object>, Class<? extends Object>> f15336c;

    /* renamed from: d, reason: collision with root package name */
    public static final Map<Class<? extends l9.a<?>>, Integer> f15337d;

    public static final class a extends kotlin.jvm.internal.j implements x9.l<ParameterizedType, ParameterizedType> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f15338a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final ParameterizedType invoke(ParameterizedType parameterizedType) {
            ParameterizedType it = parameterizedType;
            kotlin.jvm.internal.h.f(it, "it");
            Type ownerType = it.getOwnerType();
            if (ownerType instanceof ParameterizedType) {
                return (ParameterizedType) ownerType;
            }
            return null;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.l<ParameterizedType, lc.h<? extends Type>> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f15339a = new b();

        public b() {
            super(1);
        }

        @Override // x9.l
        public final lc.h<? extends Type> invoke(ParameterizedType parameterizedType) {
            ParameterizedType it = parameterizedType;
            kotlin.jvm.internal.h.f(it, "it");
            Type[] actualTypeArguments = it.getActualTypeArguments();
            kotlin.jvm.internal.h.e(actualTypeArguments, "it.actualTypeArguments");
            return m9.k.n0(actualTypeArguments);
        }
    }

    static {
        int r32 = 0;
        List<da.d<? extends Object>> listT = b8.f.T(kotlin.jvm.internal.w.a(Boolean.TYPE), kotlin.jvm.internal.w.a(Byte.TYPE), kotlin.jvm.internal.w.a(Character.TYPE), kotlin.jvm.internal.w.a(Double.TYPE), kotlin.jvm.internal.w.a(Float.TYPE), kotlin.jvm.internal.w.a(Integer.TYPE), kotlin.jvm.internal.w.a(Long.TYPE), kotlin.jvm.internal.w.a(Short.TYPE));
        f15334a = listT;
        List<da.d<? extends Object>> list = listT;
        ArrayList arrayList = new ArrayList(m9.n.Q0(list));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            da.d dVar = (da.d) it.next();
            arrayList.add(new l9.g(com.google.android.gms.internal.clearcut.d0.r(dVar), com.google.android.gms.internal.clearcut.d0.s(dVar)));
        }
        f15335b = m9.e0.S0(arrayList);
        List<da.d<? extends Object>> list2 = f15334a;
        ArrayList arrayList2 = new ArrayList(m9.n.Q0(list2));
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            da.d dVar2 = (da.d) it2.next();
            arrayList2.add(new l9.g(com.google.android.gms.internal.clearcut.d0.s(dVar2), com.google.android.gms.internal.clearcut.d0.r(dVar2)));
        }
        f15336c = m9.e0.S0(arrayList2);
        List listT2 = b8.f.T(x9.a.class, x9.l.class, x9.p.class, x9.q.class, x9.r.class, x9.s.class, x9.t.class, x9.u.class, x9.v.class, x9.w.class, x9.b.class, x9.c.class, x9.d.class, x9.e.class, x9.f.class, x9.g.class, x9.h.class, x9.i.class, x9.j.class, x9.k.class, x9.m.class, x9.n.class, x9.o.class);
        ArrayList arrayList3 = new ArrayList(m9.n.Q0(listT2));
        for (Object obj : listT2) {
            int r42 = r32 + 1;
            if (r32 < 0) {
                b8.f.k0();
                throw null;
            }
            arrayList3.add(new l9.g((Class) obj, Integer.valueOf(r32)));
            r32 = r42;
        }
        f15337d = m9.e0.S0(arrayList3);
    }

    public static final lb.b a(Class<?> cls) {
        lb.b bVarA;
        kotlin.jvm.internal.h.f(cls, "<this>");
        if (cls.isPrimitive()) {
            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.g("Can't compute ClassId for primitive type: ", cls));
        }
        if (cls.isArray()) {
            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.g("Can't compute ClassId for array type: ", cls));
        }
        if (cls.getEnclosingMethod() == null && cls.getEnclosingConstructor() == null) {
            if (!(cls.getSimpleName().length() == 0)) {
                Class<?> declaringClass = cls.getDeclaringClass();
                return (declaringClass == null || (bVarA = a(declaringClass)) == null) ? lb.b.l(new lb.c(cls.getName())) : bVarA.d(lb.f.t(cls.getSimpleName()));
            }
        }
        lb.c cVar = new lb.c(cls.getName());
        return new lb.b(cVar.e(), lb.c.j(cVar.f()), true);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final String b(Class<?> cls) {
        kotlin.jvm.internal.h.f(cls, "<this>");
        if (!cls.isPrimitive()) {
            if (cls.isArray()) {
                return mc.j.B(cls.getName(), '.', '/');
            }
            return "L" + mc.j.B(cls.getName(), '.', '/') + ';';
        }
        String name = cls.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    return "D";
                }
                break;
            case 104431:
                if (name.equals("int")) {
                    return "I";
                }
                break;
            case 3039496:
                if (name.equals("byte")) {
                    return "B";
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                    return "C";
                }
                break;
            case 3327612:
                if (name.equals("long")) {
                    return "J";
                }
                break;
            case 3625364:
                if (name.equals("void")) {
                    return ExifInterface.GPS_MEASUREMENT_INTERRUPTED;
                }
                break;
            case 64711720:
                if (name.equals(TypedValues.Custom.S_BOOLEAN)) {
                    return "Z";
                }
                break;
            case 97526364:
                if (name.equals(TypedValues.Custom.S_FLOAT)) {
                    return "F";
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                    return ExifInterface.LATITUDE_SOUTH;
                }
                break;
        }
        throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.g("Unsupported primitive type: ", cls));
    }

    public static final List<Type> c(Type type) {
        kotlin.jvm.internal.h.f(type, "<this>");
        if (!(type instanceof ParameterizedType)) {
            return m9.v.f10173a;
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        if (parameterizedType.getOwnerType() != null) {
            return b8.f.Z(lc.w.c1(lc.w.Y0(lc.q.R0(a.f15338a, type), b.f15339a)));
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        kotlin.jvm.internal.h.e(actualTypeArguments, "actualTypeArguments");
        return m9.k.A0(actualTypeArguments);
    }

    public static final ClassLoader d(Class<?> cls) {
        kotlin.jvm.internal.h.f(cls, "<this>");
        ClassLoader classLoader = cls.getClassLoader();
        if (classLoader != null) {
            return classLoader;
        }
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        kotlin.jvm.internal.h.e(systemClassLoader, "getSystemClassLoader()");
        return systemClassLoader;
    }

    public static final boolean e(Class<?> cls) {
        return Enum.class.isAssignableFrom(cls);
    }
}
