package a4;

import android.os.Looper;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    @GuardedBy("DynamiteLoaderV2ClassLoader.class")
    public static volatile ClassLoader f104a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    @GuardedBy("DynamiteLoaderV2ClassLoader.class")
    public static volatile Thread f105b;

    @Nullable
    public static synchronized ClassLoader a() {
        if (f104a == null) {
            f104a = b();
        }
        return f104a;
    }

    @Nullable
    public static synchronized ClassLoader b() {
        ClassLoader contextClassLoader = null;
        if (f105b == null) {
            f105b = c();
            if (f105b == null) {
                return null;
            }
        }
        synchronized (f105b) {
            try {
                contextClassLoader = f105b.getContextClassLoader();
            } catch (SecurityException e10) {
                Log.w("DynamiteLoaderV2CL", "Failed to get thread context classloader " + e10.getMessage());
            }
        }
        return contextClassLoader;
    }

    @Nullable
    public static synchronized Thread c() {
        SecurityException e10;
        Thread aVar;
        Thread thread;
        ThreadGroup threadGroup;
        ThreadGroup threadGroup2 = Looper.getMainLooper().getThread().getThreadGroup();
        if (threadGroup2 == null) {
            return null;
        }
        synchronized (Void.class) {
            try {
                int r42 = threadGroup2.activeGroupCount();
                ThreadGroup[] threadGroupArr = new ThreadGroup[r42];
                threadGroup2.enumerate(threadGroupArr);
                int r6 = 0;
                int r72 = 0;
                while (true) {
                    if (r72 >= r42) {
                        threadGroup = null;
                        break;
                    }
                    threadGroup = threadGroupArr[r72];
                    if ("dynamiteLoader".equals(threadGroup.getName())) {
                        break;
                    }
                    r72++;
                }
                if (threadGroup == null) {
                    threadGroup = new ThreadGroup(threadGroup2, "dynamiteLoader");
                }
                int r12 = threadGroup.activeCount();
                Thread[] threadArr = new Thread[r12];
                threadGroup.enumerate(threadArr);
                while (true) {
                    if (r6 >= r12) {
                        thread = null;
                        break;
                    }
                    thread = threadArr[r6];
                    if ("GmsDynamite".equals(thread.getName())) {
                        break;
                    }
                    r6++;
                }
            } catch (SecurityException e11) {
                e10 = e11;
                aVar = null;
            }
            if (thread == null) {
                try {
                    aVar = new a(threadGroup);
                    try {
                        aVar.setContextClassLoader(null);
                        aVar.start();
                    } catch (SecurityException e12) {
                        e10 = e12;
                        Log.w("DynamiteLoaderV2CL", "Failed to enumerate thread/threadgroup " + e10.getMessage());
                        thread = aVar;
                        return thread;
                    }
                } catch (SecurityException e13) {
                    e10 = e13;
                    aVar = thread;
                }
                thread = aVar;
            }
        }
        return thread;
    }
}
