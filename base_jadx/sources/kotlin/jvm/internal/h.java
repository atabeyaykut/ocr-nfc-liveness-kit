package kotlin.jvm.internal;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class h {
    public static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static void b(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException(str.concat(" must not be null"));
        j(h.class.getName(), illegalStateException);
        throw illegalStateException;
    }

    public static void c(Object obj) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException();
        j(h.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    public static void d(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str);
        j(h.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    public static void e(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str.concat(" must not be null"));
        j(h.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    public static void f(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(i(str));
        j(h.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    public static void g(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException(i(str));
        j(h.class.getName(), illegalArgumentException);
        throw illegalArgumentException;
    }

    public static int h(int r02, int r12) {
        if (r02 < r12) {
            return -1;
        }
        return r02 == r12 ? 0 : 1;
    }

    public static String i(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String name = h.class.getName();
        int r22 = 0;
        while (!stackTrace[r22].getClassName().equals(name)) {
            r22++;
        }
        while (stackTrace[r22].getClassName().equals(name)) {
            r22++;
        }
        StackTraceElement stackTraceElement = stackTrace[r22];
        return "Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str;
    }

    public static void j(String str, RuntimeException runtimeException) {
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        int length = stackTrace.length;
        int r22 = -1;
        for (int r32 = 0; r32 < length; r32++) {
            if (str.equals(stackTrace[r32].getClassName())) {
                r22 = r32;
            }
        }
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, r22 + 1, length));
    }

    public static String k(Object obj, String str) {
        return str + obj;
    }

    public static void l() {
        l9.c cVar = new l9.c();
        j(h.class.getName(), cVar);
        throw cVar;
    }

    public static void m() {
        throw new UnsupportedOperationException("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    public static void n(String str) {
        c0.a aVar = new c0.a(androidx.browser.browseractions.a.a("lateinit property ", str, " has not been initialized"));
        j(h.class.getName(), aVar);
        throw aVar;
    }
}
