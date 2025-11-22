package kotlin.jvm.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;

/* loaded from: classes2.dex */
public final class z {
    public static Collection a(ArrayList arrayList) {
        if (!(arrayList instanceof y9.a) || (arrayList instanceof y9.b)) {
            return arrayList;
        }
        d(arrayList, "kotlin.collections.MutableCollection");
        throw null;
    }

    public static Set b(Object obj) {
        if ((obj instanceof y9.a) && !(obj instanceof y9.c)) {
            d(obj, "kotlin.collections.MutableSet");
            throw null;
        }
        try {
            return (Set) obj;
        } catch (ClassCastException e10) {
            h.j(z.class.getName(), e10);
            throw e10;
        }
    }

    public static void c(int r32, Object obj) {
        if (obj != null) {
            boolean z10 = false;
            if (obj instanceof l9.a) {
                if ((obj instanceof e ? ((e) obj).getArity() : obj instanceof x9.a ? 0 : obj instanceof x9.l ? 1 : obj instanceof x9.p ? 2 : obj instanceof x9.q ? 3 : obj instanceof x9.r ? 4 : obj instanceof x9.s ? 5 : obj instanceof x9.t ? 6 : obj instanceof x9.u ? 7 : obj instanceof x9.v ? 8 : obj instanceof x9.w ? 9 : obj instanceof x9.b ? 10 : obj instanceof x9.c ? 11 : obj instanceof x9.d ? 12 : obj instanceof x9.e ? 13 : obj instanceof x9.f ? 14 : obj instanceof x9.g ? 15 : obj instanceof x9.h ? 16 : obj instanceof x9.i ? 17 : obj instanceof x9.j ? 18 : obj instanceof x9.k ? 19 : obj instanceof x9.m ? 20 : obj instanceof x9.n ? 21 : obj instanceof x9.o ? 22 : -1) == r32) {
                    z10 = true;
                }
            }
            if (z10) {
                return;
            }
            d(obj, "kotlin.jvm.functions.Function" + r32);
            throw null;
        }
    }

    public static void d(Object obj, String str) {
        ClassCastException classCastException = new ClassCastException(androidx.camera.core.impl.utils.f.g(obj == null ? "null" : obj.getClass().getName(), " cannot be cast to ", str));
        h.j(z.class.getName(), classCastException);
        throw classCastException;
    }
}
