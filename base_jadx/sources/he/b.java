package he;

import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.h;

/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap<Class<?>, Method> f7104a = new ConcurrentHashMap<>();

    public static final ParameterizedType a(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        ParameterizedType parameterizedType = genericSuperclass instanceof ParameterizedType ? (ParameterizedType) genericSuperclass : null;
        if (parameterizedType != null) {
            return parameterizedType;
        }
        h.d(genericSuperclass, "null cannot be cast to non-null type java.lang.Class<*>");
        return a((Class) genericSuperclass);
    }
}
