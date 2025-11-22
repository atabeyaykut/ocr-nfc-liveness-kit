package fa;

import da.h;
import ga.g0;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final class a {
    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean a(g0 g0Var) {
        if (g0Var instanceof h) {
            Field fieldA = b.a(g0Var);
            if (fieldA != null ? fieldA.isAccessible() : true) {
                Method methodB = b.b(g0Var.t());
                if (methodB != null ? methodB.isAccessible() : true) {
                    Method methodB2 = b.b(((h) g0Var).f());
                    if (methodB2 != null ? methodB2.isAccessible() : true) {
                        return true;
                    }
                }
            }
        } else {
            Field fieldA2 = b.a(g0Var);
            if (fieldA2 != null ? fieldA2.isAccessible() : true) {
                Method methodB3 = b.b(g0Var.t());
                if (methodB3 != null ? methodB3.isAccessible() : true) {
                    return true;
                }
            }
        }
        return false;
    }
}
