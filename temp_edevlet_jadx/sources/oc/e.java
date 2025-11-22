package oc;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.annotation.VisibleForTesting;
import c5.w;
import java.lang.reflect.InvocationTargetException;
import l9.h;

/* loaded from: classes2.dex */
public final class e {
    private static volatile Choreographer choreographer;

    static {
        Object objJ;
        try {
            objJ = new c(a(Looper.getMainLooper()));
        } catch (Throwable th2) {
            objJ = w.j(th2);
        }
        if (objJ instanceof h.a) {
            objJ = null;
        }
    }

    @VisibleForTesting
    public static final Handler a(Looper looper) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT < 28) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
                return new Handler(looper);
            }
        }
        Object objInvoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        if (objInvoke != null) {
            return (Handler) objInvoke;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.os.Handler");
    }
}
