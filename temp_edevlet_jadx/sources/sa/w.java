package sa;

/* loaded from: classes2.dex */
public final class w extends f implements cb.m {

    /* renamed from: b, reason: collision with root package name */
    public final Enum<?> f15368b;

    public w(lb.f fVar, Enum<?> r22) {
        super(fVar);
        this.f15368b = r22;
    }

    @Override // cb.m
    public final lb.b b() {
        Class<?> enumClass = this.f15368b.getClass();
        if (!enumClass.isEnum()) {
            enumClass = enumClass.getEnclosingClass();
        }
        kotlin.jvm.internal.h.e(enumClass, "enumClass");
        return d.a(enumClass);
    }

    @Override // cb.m
    public final lb.f d() {
        return lb.f.t(this.f15368b.name());
    }
}
