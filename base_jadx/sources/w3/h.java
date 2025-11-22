package w3;

import android.os.Build;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import r3.r;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final Method f18677a;

    /* renamed from: b, reason: collision with root package name */
    public static final Method f18678b;

    /* renamed from: c, reason: collision with root package name */
    public static final Method f18679c;

    /* renamed from: d, reason: collision with root package name */
    public static final Method f18680d;

    static {
        Method method;
        Method method2;
        Method method3;
        Process.myUid();
        Method method4 = null;
        try {
            method = WorkSource.class.getMethod("add", Integer.TYPE);
        } catch (Exception unused) {
            method = null;
        }
        f18677a = method;
        try {
            method2 = WorkSource.class.getMethod("add", Integer.TYPE, String.class);
        } catch (Exception unused2) {
            method2 = null;
        }
        f18678b = method2;
        try {
            method3 = WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception unused3) {
            method3 = null;
        }
        f18679c = method3;
        try {
            WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception unused4) {
        }
        try {
            WorkSource.class.getMethod("getName", Integer.TYPE);
        } catch (Exception unused5) {
        }
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                WorkSource.class.getMethod("createWorkChain", new Class[0]);
            } catch (Exception e10) {
                Log.w("WorkSourceUtil", "Missing WorkChain API createWorkChain", e10);
            }
        }
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                Class.forName("android.os.WorkSource$WorkChain").getMethod("addNode", Integer.TYPE, String.class);
            } catch (Exception e11) {
                Log.w("WorkSourceUtil", "Missing WorkChain class", e11);
            }
        }
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                method4 = WorkSource.class.getMethod("isEmpty", new Class[0]);
                method4.setAccessible(true);
            } catch (Exception unused6) {
            }
        }
        f18680d = method4;
    }

    public static void a(@NonNull WorkSource workSource, int r72, @NonNull String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method method = f18678b;
        if (method != null) {
            if (str == null) {
                str = "";
            }
            try {
                method.invoke(workSource, Integer.valueOf(r72), str);
                return;
            } catch (Exception e10) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e10);
                return;
            }
        }
        Method method2 = f18677a;
        if (method2 != null) {
            try {
                method2.invoke(workSource, Integer.valueOf(r72));
            } catch (Exception e11) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e11);
            }
        }
    }

    public static boolean b(@NonNull WorkSource workSource) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int r42;
        Method method = f18680d;
        if (method != null) {
            try {
                Object objInvoke = method.invoke(workSource, new Object[0]);
                r.i(objInvoke);
                return ((Boolean) objInvoke).booleanValue();
            } catch (Exception e10) {
                Log.e("WorkSourceUtil", "Unable to check WorkSource emptiness", e10);
            }
        }
        Method method2 = f18679c;
        if (method2 != null) {
            try {
                Object objInvoke2 = method2.invoke(workSource, new Object[0]);
                r.i(objInvoke2);
                r42 = ((Integer) objInvoke2).intValue();
            } catch (Exception e11) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e11);
            }
        } else {
            r42 = 0;
        }
        return r42 == 0;
    }
}
