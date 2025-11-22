package l8;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final class c extends f<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f9471a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9472b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Class f9473c;

    public c(Method method, Object obj, Class cls) {
        this.f9471a = method;
        this.f9472b = obj;
        this.f9473c = cls;
    }

    @Override // l8.f
    public final Object a() throws IllegalAccessException, InvocationTargetException {
        return this.f9471a.invoke(this.f9472b, this.f9473c);
    }

    public final String toString() {
        return this.f9473c.getName();
    }
}
