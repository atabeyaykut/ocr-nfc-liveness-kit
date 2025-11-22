package l7;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public final class b implements j<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final p f9401a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f9402b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Type f9403c;

    public b(Class cls, Type type) throws NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException {
        p oVar;
        this.f9402b = cls;
        this.f9403c = type;
        try {
            Class<?> cls2 = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls2.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            oVar = new l(cls2.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int r12 = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    oVar = new m(r12, declaredMethod2);
                } catch (Exception unused2) {
                    oVar = new o();
                }
            } catch (Exception unused3) {
                Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                declaredMethod3.setAccessible(true);
                oVar = new n(declaredMethod3);
            }
        }
        this.f9401a = oVar;
    }

    @Override // l7.j
    public final Object h() {
        try {
            return this.f9401a.b(this.f9402b);
        } catch (Exception e10) {
            throw new RuntimeException("Unable to invoke no-args constructor for " + this.f9403c + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e10);
        }
    }
}
