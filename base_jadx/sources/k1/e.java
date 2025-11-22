package k1;

import java.lang.reflect.InvocationTargetException;

@Deprecated
/* loaded from: classes.dex */
public final class e {
    public static c a(String str) throws IllegalAccessException, InstantiationException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName(str);
            try {
                Object objNewInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                if (objNewInstance instanceof c) {
                    return (c) objNewInstance;
                }
                throw new RuntimeException("Expected instanceof GlideModule, but found: " + objNewInstance);
            } catch (IllegalAccessException e10) {
                b(cls, e10);
                throw null;
            } catch (InstantiationException e11) {
                b(cls, e11);
                throw null;
            } catch (NoSuchMethodException e12) {
                b(cls, e12);
                throw null;
            } catch (InvocationTargetException e13) {
                b(cls, e13);
                throw null;
            }
        } catch (ClassNotFoundException e14) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e14);
        }
    }

    public static void b(Class cls, ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException(androidx.appcompat.graphics.drawable.a.g("Unable to instantiate GlideModule implementation for ", cls), reflectiveOperationException);
    }
}
