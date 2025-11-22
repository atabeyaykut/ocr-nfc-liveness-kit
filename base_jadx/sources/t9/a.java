package t9;

import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public class a extends s9.a {

    /* renamed from: t9.a$a, reason: collision with other inner class name */
    public static final class C0254a {

        /* renamed from: a, reason: collision with root package name */
        public static final Integer f15646a;

        static {
            Object obj;
            Integer num = null;
            try {
                obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Throwable unused) {
            }
            Integer num2 = obj instanceof Integer ? (Integer) obj : null;
            if (num2 != null) {
                if (num2.intValue() > 0) {
                    num = num2;
                }
            }
            f15646a = num;
        }
    }

    @Override // s9.a
    public final void a(Throwable cause, Throwable exception) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        h.f(cause, "cause");
        h.f(exception, "exception");
        Integer num = C0254a.f15646a;
        if (num == null || num.intValue() >= 19) {
            cause.addSuppressed(exception);
        } else {
            super.a(cause, exception);
        }
    }
}
