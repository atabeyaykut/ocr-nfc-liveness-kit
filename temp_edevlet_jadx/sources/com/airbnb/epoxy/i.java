package com.airbnb.epoxy;

import androidx.annotation.Nullable;
import java.lang.reflect.Constructor;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public static final LinkedHashMap f2590a = new LinkedHashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final NoOpControllerHelper f2591b = new NoOpControllerHelper();

    @Nullable
    public static Constructor<?> a(Class<?> cls) {
        Constructor<?> constructorA;
        LinkedHashMap linkedHashMap = f2590a;
        Constructor<?> constructor = (Constructor) linkedHashMap.get(cls);
        if (constructor != null || linkedHashMap.containsKey(cls)) {
            return constructor;
        }
        String name = cls.getName();
        if (name.startsWith("android.") || name.startsWith("java.")) {
            return null;
        }
        try {
            constructorA = Class.forName(name.concat("_EpoxyHelper")).getConstructor(cls);
        } catch (ClassNotFoundException unused) {
            constructorA = a(cls.getSuperclass());
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException("Unable to find Epoxy Helper constructor for ".concat(name), e10);
        }
        linkedHashMap.put(cls, constructorA);
        return constructorA;
    }
}
