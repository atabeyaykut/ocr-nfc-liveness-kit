package fb;

import fb.b;

/* loaded from: classes2.dex */
public final class g extends b.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b.d f5584b;

    public g(b.d dVar) {
        this.f5584b = dVar;
    }

    @Override // fb.b.a
    public final void f(String[] strArr) {
        if (strArr == null) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "data", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$2", "visitEnd"));
        }
        b.this.f5573e = strArr;
    }
}
