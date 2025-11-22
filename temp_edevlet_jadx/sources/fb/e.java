package fb;

import fb.b;

/* loaded from: classes2.dex */
public final class e extends b.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b.c f5582b;

    public e(b.c cVar) {
        this.f5582b = cVar;
    }

    @Override // fb.b.a
    public final void f(String[] strArr) {
        if (strArr == null) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "result", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinSerializedIrArgumentVisitor$1", "visitEnd"));
        }
        b.this.f5575h = strArr;
    }
}
