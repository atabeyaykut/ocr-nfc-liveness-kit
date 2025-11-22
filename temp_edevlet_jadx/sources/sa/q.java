package sa;

import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final /* synthetic */ class q extends kotlin.jvm.internal.f implements x9.l<Method, a0> {

    /* renamed from: a, reason: collision with root package name */
    public static final q f15362a = new q();

    public q() {
        super(1);
    }

    @Override // kotlin.jvm.internal.a, da.c
    public final String getName() {
        return "<init>";
    }

    @Override // kotlin.jvm.internal.a
    public final da.f getOwner() {
        return kotlin.jvm.internal.w.a(a0.class);
    }

    @Override // kotlin.jvm.internal.a
    public final String getSignature() {
        return "<init>(Ljava/lang/reflect/Method;)V";
    }

    @Override // x9.l
    public final a0 invoke(Method method) {
        Method p02 = method;
        kotlin.jvm.internal.h.f(p02, "p0");
        return new a0(p02);
    }
}
