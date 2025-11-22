package s9;

import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final a f15317a;

    static {
        a aVar;
        try {
            Object objNewInstance = u9.a.class.newInstance();
            h.e(objNewInstance, "forName(\"kotlin.internal…entations\").newInstance()");
            try {
                try {
                    aVar = (a) objNewInstance;
                } catch (ClassCastException e10) {
                    ClassLoader classLoader = objNewInstance.getClass().getClassLoader();
                    ClassLoader classLoader2 = a.class.getClassLoader();
                    if (h.a(classLoader, classLoader2)) {
                        throw e10;
                    }
                    throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader + ", base type classloader: " + classLoader2, e10);
                }
            } catch (ClassNotFoundException unused) {
                Object objNewInstance2 = t9.a.class.newInstance();
                h.e(objNewInstance2, "forName(\"kotlin.internal…entations\").newInstance()");
                try {
                    try {
                        aVar = (a) objNewInstance2;
                    } catch (ClassNotFoundException unused2) {
                        aVar = new a();
                    }
                } catch (ClassCastException e11) {
                    ClassLoader classLoader3 = objNewInstance2.getClass().getClassLoader();
                    ClassLoader classLoader4 = a.class.getClassLoader();
                    if (h.a(classLoader3, classLoader4)) {
                        throw e11;
                    }
                    throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader3 + ", base type classloader: " + classLoader4, e11);
                }
            }
        } catch (ClassNotFoundException unused3) {
            Object objNewInstance3 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
            h.e(objNewInstance3, "forName(\"kotlin.internal…entations\").newInstance()");
            try {
                try {
                    aVar = (a) objNewInstance3;
                } catch (ClassNotFoundException unused4) {
                    Object objNewInstance4 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                    h.e(objNewInstance4, "forName(\"kotlin.internal…entations\").newInstance()");
                    try {
                        aVar = (a) objNewInstance4;
                    } catch (ClassCastException e12) {
                        ClassLoader classLoader5 = objNewInstance4.getClass().getClassLoader();
                        ClassLoader classLoader6 = a.class.getClassLoader();
                        if (h.a(classLoader5, classLoader6)) {
                            throw e12;
                        }
                        throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader5 + ", base type classloader: " + classLoader6, e12);
                    }
                }
            } catch (ClassCastException e13) {
                ClassLoader classLoader7 = objNewInstance3.getClass().getClassLoader();
                ClassLoader classLoader8 = a.class.getClassLoader();
                if (h.a(classLoader7, classLoader8)) {
                    throw e13;
                }
                throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader7 + ", base type classloader: " + classLoader8, e13);
            }
        }
        f15317a = aVar;
    }
}
