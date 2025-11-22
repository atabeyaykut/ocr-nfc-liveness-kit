package l7;

import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final class m extends p {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f9446b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f9447c;

    public m(int r12, Method method) {
        this.f9446b = method;
        this.f9447c = r12;
    }

    @Override // l7.p
    public final <T> T b(Class<T> cls) throws Exception {
        p.a(cls);
        return (T) this.f9446b.invoke(null, cls, Integer.valueOf(this.f9447c));
    }
}
