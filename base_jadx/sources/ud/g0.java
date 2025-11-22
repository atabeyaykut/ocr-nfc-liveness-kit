package ud;

import java.lang.annotation.Annotation;

/* loaded from: classes2.dex */
public final class g0 implements f0 {

    /* renamed from: a, reason: collision with root package name */
    public static final g0 f18016a = new g0();

    @Override // java.lang.annotation.Annotation
    public final Class<? extends Annotation> annotationType() {
        return f0.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        return obj instanceof f0;
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return 0;
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@" + f0.class.getName() + "()";
    }
}
