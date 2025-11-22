package fb;

import fb.b;

/* loaded from: classes2.dex */
public final class f extends b.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b.d f5583b;

    public f(b.d dVar) {
        this.f5583b = dVar;
    }

    @Override // fb.b.a
    public final void f(String[] strArr) {
        if (strArr == null) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "data", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1", "visitEnd"));
        }
        b.this.f5572d = strArr;
    }
}
