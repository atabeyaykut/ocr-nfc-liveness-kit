package sa;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.WildcardType;

/* loaded from: classes2.dex */
public final class s extends f implements cb.h {

    /* renamed from: b, reason: collision with root package name */
    public final Class<?> f15364b;

    public s(lb.f fVar, Class<?> cls) {
        super(fVar);
        this.f15364b = cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cb.h
    public final e0 c() {
        Class<?> type = this.f15364b;
        kotlin.jvm.internal.h.f(type, "type");
        return type.isPrimitive() ? new c0(type) : ((type instanceof GenericArrayType) || type.isArray()) ? new i(type) : type instanceof WildcardType ? new h0((WildcardType) type) : new t(type);
    }
}
