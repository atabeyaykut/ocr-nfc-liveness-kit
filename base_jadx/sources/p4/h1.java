package p4;

import java.lang.annotation.Annotation;

/* loaded from: classes.dex */
public final class h1 implements n1 {

    /* renamed from: a, reason: collision with root package name */
    public final int f12378a;

    /* renamed from: b, reason: collision with root package name */
    public final l1 f12379b;

    public h1(int r12, l1 l1Var) {
        this.f12378a = r12;
        this.f12379b = l1Var;
    }

    @Override // java.lang.annotation.Annotation
    public final Class<? extends Annotation> annotationType() {
        return n1.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n1)) {
            return false;
        }
        n1 n1Var = (n1) obj;
        return this.f12378a == ((h1) n1Var).f12378a && this.f12379b.equals(((h1) n1Var).f12379b);
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.f12378a ^ 14552422) + (this.f12379b.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f12378a + "intEncoding=" + this.f12379b + ')';
    }
}
