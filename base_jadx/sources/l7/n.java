package l7;

import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final class n extends p {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f9448b;

    public n(Method method) {
        this.f9448b = method;
    }

    @Override // l7.p
    public final <T> T b(Class<T> cls) throws Exception {
        p.a(cls);
        return (T) this.f9448b.invoke(null, cls, Object.class);
    }
}
