package l8;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class b extends f<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Constructor f9456a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f9457b;

    public b(Constructor constructor, Class cls) {
        this.f9456a = constructor;
        this.f9457b = cls;
    }

    @Override // l8.f
    public final Object a() throws IllegalAccessException, InstantiationException, InvocationTargetException {
        return this.f9456a.newInstance(null);
    }

    public final String toString() {
        return this.f9457b.getName();
    }
}
