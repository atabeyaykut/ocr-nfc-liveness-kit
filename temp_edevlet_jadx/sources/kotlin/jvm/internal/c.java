package kotlin.jvm.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.internal.clearcut.d0;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import m9.e0;

/* loaded from: classes2.dex */
public final class c implements da.d<Object>, b {

    /* renamed from: b, reason: collision with root package name */
    public static final Map<Class<? extends l9.a<?>>, Integer> f8968b;

    /* renamed from: c, reason: collision with root package name */
    public static final HashMap<String, String> f8969c;

    /* renamed from: d, reason: collision with root package name */
    public static final LinkedHashMap f8970d;

    /* renamed from: a, reason: collision with root package name */
    public final Class<?> f8971a;

    static {
        int r12 = 0;
        List listT = b8.f.T(x9.a.class, x9.l.class, x9.p.class, x9.q.class, x9.r.class, x9.s.class, x9.t.class, x9.u.class, x9.v.class, x9.w.class, x9.b.class, x9.c.class, x9.d.class, x9.e.class, x9.f.class, x9.g.class, x9.h.class, x9.i.class, x9.j.class, x9.k.class, x9.m.class, x9.n.class, x9.o.class);
        ArrayList arrayList = new ArrayList(m9.n.Q0(listT));
        for (Object obj : listT) {
            int r42 = r12 + 1;
            if (r12 < 0) {
                b8.f.k0();
                throw null;
            }
            arrayList.add(new l9.g((Class) obj, Integer.valueOf(r12)));
            r12 = r42;
        }
        f8968b = e0.S0(arrayList);
        HashMap map = new HashMap();
        map.put(TypedValues.Custom.S_BOOLEAN, "kotlin.Boolean");
        map.put("char", "kotlin.Char");
        map.put("byte", "kotlin.Byte");
        map.put("short", "kotlin.Short");
        map.put("int", "kotlin.Int");
        map.put(TypedValues.Custom.S_FLOAT, "kotlin.Float");
        map.put("long", "kotlin.Long");
        map.put("double", "kotlin.Double");
        HashMap map2 = new HashMap();
        map2.put("java.lang.Boolean", "kotlin.Boolean");
        map2.put("java.lang.Character", "kotlin.Char");
        map2.put("java.lang.Byte", "kotlin.Byte");
        map2.put("java.lang.Short", "kotlin.Short");
        map2.put("java.lang.Integer", "kotlin.Int");
        map2.put("java.lang.Float", "kotlin.Float");
        map2.put("java.lang.Long", "kotlin.Long");
        map2.put("java.lang.Double", "kotlin.Double");
        HashMap<String, String> map3 = new HashMap<>();
        map3.put("java.lang.Object", "kotlin.Any");
        map3.put("java.lang.String", "kotlin.String");
        map3.put("java.lang.CharSequence", "kotlin.CharSequence");
        map3.put("java.lang.Throwable", "kotlin.Throwable");
        map3.put("java.lang.Cloneable", "kotlin.Cloneable");
        map3.put("java.lang.Number", "kotlin.Number");
        map3.put("java.lang.Comparable", "kotlin.Comparable");
        map3.put("java.lang.Enum", "kotlin.Enum");
        map3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map3.put("java.util.Iterator", "kotlin.collections.Iterator");
        map3.put("java.util.Collection", "kotlin.collections.Collection");
        map3.put("java.util.List", "kotlin.collections.List");
        map3.put("java.util.Set", "kotlin.collections.Set");
        map3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map3.put("java.util.Map", "kotlin.collections.Map");
        map3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map3.putAll(map);
        map3.putAll(map2);
        Collection<String> collectionValues = map.values();
        h.e(collectionValues, "primitiveFqNames.values");
        for (String kotlinName : collectionValues) {
            StringBuilder sb2 = new StringBuilder("kotlin.jvm.internal.");
            h.e(kotlinName, "kotlinName");
            sb2.append(mc.n.d0('.', kotlinName, kotlinName));
            sb2.append("CompanionObject");
            map3.put(sb2.toString(), kotlinName.concat(".Companion"));
        }
        for (Map.Entry<Class<? extends l9.a<?>>, Integer> entry : f8968b.entrySet()) {
            Class<? extends l9.a<?>> key = entry.getKey();
            int r13 = entry.getValue().intValue();
            map3.put(key.getName(), "kotlin.Function" + r13);
        }
        f8969c = map3;
        LinkedHashMap linkedHashMap = new LinkedHashMap(b8.f.V(map3.size()));
        Iterator<T> it = map3.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            Object key2 = entry2.getKey();
            String str = (String) entry2.getValue();
            linkedHashMap.put(key2, mc.n.d0('.', str, str));
        }
        f8970d = linkedHashMap;
    }

    public c(Class<?> jClass) {
        h.f(jClass, "jClass");
        this.f8971a = jClass;
    }

    @Override // da.d
    public final String c() {
        String str;
        Class<?> jClass = this.f8971a;
        h.f(jClass, "jClass");
        String strConcat = null;
        if (jClass.isAnonymousClass() || jClass.isLocalClass()) {
            return null;
        }
        boolean zIsArray = jClass.isArray();
        HashMap<String, String> map = f8969c;
        if (!zIsArray) {
            String str2 = map.get(jClass.getName());
            return str2 == null ? jClass.getCanonicalName() : str2;
        }
        Class<?> componentType = jClass.getComponentType();
        if (componentType.isPrimitive() && (str = map.get(componentType.getName())) != null) {
            strConcat = str.concat("Array");
        }
        return strConcat == null ? "kotlin.Array" : strConcat;
    }

    @Override // da.d
    public final String d() {
        String str;
        String str2;
        Class<?> jClass = this.f8971a;
        h.f(jClass, "jClass");
        String strConcat = null;
        if (jClass.isAnonymousClass()) {
            return null;
        }
        if (!jClass.isLocalClass()) {
            boolean zIsArray = jClass.isArray();
            LinkedHashMap linkedHashMap = f8970d;
            if (!zIsArray) {
                String str3 = (String) linkedHashMap.get(jClass.getName());
                return str3 == null ? jClass.getSimpleName() : str3;
            }
            Class<?> componentType = jClass.getComponentType();
            if (componentType.isPrimitive() && (str = (String) linkedHashMap.get(componentType.getName())) != null) {
                strConcat = str.concat("Array");
            }
            return strConcat == null ? "Array" : strConcat;
        }
        String simpleName = jClass.getSimpleName();
        Method enclosingMethod = jClass.getEnclosingMethod();
        if (enclosingMethod != null) {
            str2 = enclosingMethod.getName() + '$';
        } else {
            Constructor<?> enclosingConstructor = jClass.getEnclosingConstructor();
            if (enclosingConstructor == null) {
                return mc.n.c0(simpleName);
            }
            str2 = enclosingConstructor.getName() + '$';
        }
        return mc.n.b0(simpleName, str2, simpleName);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof c) && h.a(d0.r(this), d0.r((da.d) obj));
    }

    @Override // kotlin.jvm.internal.b
    public final Class<?> g() {
        return this.f8971a;
    }

    public final int hashCode() {
        return d0.r(this).hashCode();
    }

    public final String toString() {
        return this.f8971a.toString() + " (Kotlin reflection is not available)";
    }
}
