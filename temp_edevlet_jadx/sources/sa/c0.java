package sa;

import java.lang.reflect.Type;
import java.util.Collection;

/* loaded from: classes2.dex */
public final class c0 extends e0 implements cb.u {

    /* renamed from: a, reason: collision with root package name */
    public final Class<?> f15332a;

    /* renamed from: b, reason: collision with root package name */
    public final m9.v f15333b = m9.v.f10173a;

    public c0(Class<?> cls) {
        this.f15332a = cls;
    }

    @Override // sa.e0
    public final Type O() {
        return this.f15332a;
    }

    @Override // cb.d
    public final Collection<cb.a> getAnnotations() {
        return this.f15333b;
    }

    @Override // cb.u
    public final ja.l getType() {
        Class cls = Void.TYPE;
        Class<?> cls2 = this.f15332a;
        if (kotlin.jvm.internal.h.a(cls2, cls)) {
            return null;
        }
        return tb.c.o(cls2.getName()).r();
    }

    @Override // cb.d
    public final void o() {
    }
}
