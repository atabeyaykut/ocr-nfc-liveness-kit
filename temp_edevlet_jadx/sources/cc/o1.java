package cc;

import ja.o;

/* loaded from: classes2.dex */
public final class o1 implements x9.l<lb.c, Boolean> {
    @Override // x9.l
    public final Boolean invoke(lb.c cVar) {
        if (cVar != null) {
            return Boolean.valueOf(!r4.equals(o.a.f8394y));
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "name", "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1", "invoke"));
    }
}
