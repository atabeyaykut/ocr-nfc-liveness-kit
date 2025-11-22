package fb;

import fb.b;

/* loaded from: classes2.dex */
public final class c extends b.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b.C0088b f5580b;

    public c(b.C0088b c0088b) {
        this.f5580b = c0088b;
    }

    @Override // fb.b.a
    public final void f(String[] strArr) {
        if (strArr == null) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "result", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1", "visitEnd"));
        }
        b.this.f5572d = strArr;
    }
}
