package z8;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f19881a = 0;

    /* renamed from: z8.a$a, reason: collision with other inner class name */
    public static final class C0313a {

        /* renamed from: a, reason: collision with root package name */
        public static final b f19882a;

        static {
            new Handler(Looper.getMainLooper());
            f19882a = new b();
        }
    }

    static {
        try {
            if (C0313a.f19882a != null) {
            } else {
                throw new NullPointerException("Scheduler Callable returned null");
            }
        } catch (Throwable th2) {
            throw c9.a.a(th2);
        }
    }
}
