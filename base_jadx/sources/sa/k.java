package sa;

import java.lang.reflect.Constructor;

/* loaded from: classes2.dex */
public final /* synthetic */ class k extends kotlin.jvm.internal.f implements x9.l<Constructor<?>, u> {

    /* renamed from: a, reason: collision with root package name */
    public static final k f15356a = new k();

    public k() {
        super(1);
    }

    @Override // kotlin.jvm.internal.a, da.c
    public final String getName() {
        return "<init>";
    }

    @Override // kotlin.jvm.internal.a
    public final da.f getOwner() {
        return kotlin.jvm.internal.w.a(u.class);
    }

    @Override // kotlin.jvm.internal.a
    public final String getSignature() {
        return "<init>(Ljava/lang/reflect/Constructor;)V";
    }

    @Override // x9.l
    public final u invoke(Constructor<?> constructor) {
        Constructor<?> p02 = constructor;
        kotlin.jvm.internal.h.f(p02, "p0");
        return new u(p02);
    }
}
