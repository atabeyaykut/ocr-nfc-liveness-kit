package l7;

import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final class l extends p {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f9444b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f9445c;

    public l(Method method, Object obj) {
        this.f9444b = method;
        this.f9445c = obj;
    }

    @Override // l7.p
    public final <T> T b(Class<T> cls) throws Exception {
        p.a(cls);
        return (T) this.f9444b.invoke(this.f9445c, cls);
    }
}
