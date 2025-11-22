package l7;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class d implements j<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Constructor f9408a;

    public d(Constructor constructor) {
        this.f9408a = constructor;
    }

    @Override // l7.j
    public final Object h() {
        Constructor constructor = this.f9408a;
        try {
            return constructor.newInstance(null);
        } catch (IllegalAccessException e10) {
            throw new AssertionError(e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException("Failed to invoke " + constructor + " with no args", e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException("Failed to invoke " + constructor + " with no args", e12.getTargetException());
        }
    }
}
