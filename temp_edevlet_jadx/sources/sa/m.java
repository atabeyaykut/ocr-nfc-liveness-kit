package sa;

import java.lang.reflect.Field;

/* loaded from: classes2.dex */
public final /* synthetic */ class m extends kotlin.jvm.internal.f implements x9.l<Field, x> {

    /* renamed from: a, reason: collision with root package name */
    public static final m f15358a = new m();

    public m() {
        super(1);
    }

    @Override // kotlin.jvm.internal.a, da.c
    public final String getName() {
        return "<init>";
    }

    @Override // kotlin.jvm.internal.a
    public final da.f getOwner() {
        return kotlin.jvm.internal.w.a(x.class);
    }

    @Override // kotlin.jvm.internal.a
    public final String getSignature() {
        return "<init>(Ljava/lang/reflect/Field;)V";
    }

    @Override // x9.l
    public final x invoke(Field field) {
        Field p02 = field;
        kotlin.jvm.internal.h.f(p02, "p0");
        return new x(p02);
    }
}
