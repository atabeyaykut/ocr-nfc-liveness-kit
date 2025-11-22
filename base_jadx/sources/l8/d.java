package l8;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final class d extends f<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f9492a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f9493b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f9494c;

    public d(Method method, Class cls, int r32) {
        this.f9492a = method;
        this.f9493b = cls;
        this.f9494c = r32;
    }

    @Override // l8.f
    public final Object a() throws IllegalAccessException, InvocationTargetException {
        return this.f9492a.invoke(null, this.f9493b, Integer.valueOf(this.f9494c));
    }

    public final String toString() {
        return this.f9493b.getName();
    }
}
