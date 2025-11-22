package l8;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final class e extends f<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f9495a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f9496b;

    public e(Method method, Class cls) {
        this.f9495a = method;
        this.f9496b = cls;
    }

    @Override // l8.f
    public final Object a() throws IllegalAccessException, InvocationTargetException {
        return this.f9495a.invoke(null, this.f9496b, Object.class);
    }

    public final String toString() {
        return this.f9496b.getName();
    }
}
