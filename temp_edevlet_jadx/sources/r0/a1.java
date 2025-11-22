package r0;

import java.util.Map;

/* loaded from: classes.dex */
public final class a1 {

    /* renamed from: a, reason: collision with root package name */
    public static final Map<? extends Class<? extends Object>, Class<? extends Object>> f13700a;

    static {
        Class cls = Boolean.TYPE;
        f13700a = m9.e0.R0(new l9.g(cls, cls), new l9.g(Byte.TYPE, Byte.class), new l9.g(Character.TYPE, Character.class), new l9.g(Double.TYPE, Double.class), new l9.g(Float.TYPE, Float.class), new l9.g(Integer.TYPE, Integer.class), new l9.g(Long.TYPE, Long.class), new l9.g(Short.TYPE, Short.class));
    }

    public static final boolean a(Class<?> cls, Class<?> cls2) {
        if (cls2.isPrimitive()) {
            return kotlin.jvm.internal.h.a(f13700a.get(cls2), cls);
        }
        throw new IllegalArgumentException("First argument has to be primitive type".toString());
    }
}
