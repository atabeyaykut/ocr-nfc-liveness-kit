package o7;

import j7.m;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class c extends b {

    /* renamed from: d, reason: collision with root package name */
    public static Class f11259d;

    /* renamed from: b, reason: collision with root package name */
    public final Object f11260b;

    /* renamed from: c, reason: collision with root package name */
    public final Field f11261c;

    public c() throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, SecurityException, IllegalArgumentException {
        Object obj;
        Field declaredField = null;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f11259d = cls;
            Field declaredField2 = cls.getDeclaredField("theUnsafe");
            declaredField2.setAccessible(true);
            obj = declaredField2.get(null);
        } catch (Exception unused) {
            obj = null;
        }
        this.f11260b = obj;
        try {
            declaredField = AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException unused2) {
        }
        this.f11261c = declaredField;
    }

    @Override // o7.b
    public final void a(AccessibleObject accessibleObject) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Field field;
        boolean z10 = false;
        Object obj = this.f11260b;
        if (obj != null && (field = this.f11261c) != null) {
            try {
                f11259d.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(obj, accessibleObject, Long.valueOf(((Long) f11259d.getMethod("objectFieldOffset", Field.class).invoke(obj, field)).longValue()), Boolean.TRUE);
                z10 = true;
            } catch (Exception unused) {
            }
        }
        if (z10) {
            return;
        }
        try {
            accessibleObject.setAccessible(true);
        } catch (SecurityException e10) {
            throw new m("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e10);
        }
    }
}
