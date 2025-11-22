package k4;

import java.lang.annotation.Annotation;

/* loaded from: classes.dex */
public final class i implements m {

    /* renamed from: a, reason: collision with root package name */
    public final int f8748a;

    public i(int r12) {
        this.f8748a = r12;
    }

    @Override // java.lang.annotation.Annotation
    public final Class<? extends Annotation> annotationType() {
        return m.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        i iVar = (i) ((m) obj);
        if (this.f8748a == iVar.f8748a) {
            Object obj2 = l.DEFAULT;
            iVar.getClass();
            if (obj2.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.f8748a ^ 14552422) + (l.DEFAULT.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f8748a + "intEncoding=" + l.DEFAULT + ')';
    }
}
