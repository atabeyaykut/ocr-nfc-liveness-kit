package r0;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public final class o extends kotlin.jvm.internal.j implements x9.p<Field, da.d<?>[], Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public static final o f13845a = new o();

    public o() {
        super(2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(Field isSubtype, da.d... classes) {
        kotlin.jvm.internal.h.f(isSubtype, "$this$isSubtype");
        kotlin.jvm.internal.h.f(classes, "classes");
        if (classes.length <= 0) {
            return false;
        }
        da.d dVar = classes[0];
        Class<?> type = isSubtype.getType();
        boolean z10 = type instanceof ParameterizedType;
        Class clsQ = com.google.android.gms.internal.clearcut.d0.q(dVar);
        Class<?> cls = type;
        if (z10) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.Class<*>");
            }
            cls = (Class) rawType;
        }
        return clsQ.isAssignableFrom(cls);
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final /* bridge */ /* synthetic */ Boolean mo7invoke(Field field, da.d<?>[] dVarArr) {
        return Boolean.valueOf(a(field, dVarArr));
    }
}
