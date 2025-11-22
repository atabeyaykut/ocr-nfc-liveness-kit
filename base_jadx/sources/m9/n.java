package m9;

import java.util.Collection;

/* loaded from: classes2.dex */
public class n extends b8.f {
    public static final int Q0(Iterable iterable) {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return 10;
    }
}
