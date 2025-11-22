package s4;

import java.lang.annotation.Annotation;

/* loaded from: classes.dex */
public final class v0 implements z0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f15196a;

    /* renamed from: b, reason: collision with root package name */
    public final y0 f15197b;

    public v0(int r12, y0 y0Var) {
        this.f15196a = r12;
        this.f15197b = y0Var;
    }

    @Override // java.lang.annotation.Annotation
    public final Class<? extends Annotation> annotationType() {
        return z0.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z0)) {
            return false;
        }
        z0 z0Var = (z0) obj;
        return this.f15196a == ((v0) z0Var).f15196a && this.f15197b.equals(((v0) z0Var).f15197b);
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.f15196a ^ 14552422) + (this.f15197b.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f15196a + "intEncoding=" + this.f15197b + ')';
    }
}
