package r4;

import java.lang.annotation.Annotation;

/* loaded from: classes.dex */
public final class a7 implements e7 {

    /* renamed from: a, reason: collision with root package name */
    public final int f14080a;

    /* renamed from: b, reason: collision with root package name */
    public final d7 f14081b;

    public a7(int r12, d7 d7Var) {
        this.f14080a = r12;
        this.f14081b = d7Var;
    }

    @Override // java.lang.annotation.Annotation
    public final Class<? extends Annotation> annotationType() {
        return e7.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e7)) {
            return false;
        }
        e7 e7Var = (e7) obj;
        return this.f14080a == ((a7) e7Var).f14080a && this.f14081b.equals(((a7) e7Var).f14081b);
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.f14080a ^ 14552422) + (this.f14081b.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f14080a + "intEncoding=" + this.f14081b + ')';
    }
}
