package rd;

import c0.c;
import org.greenrobot.eventbus.android.AndroidComponentsImpl;
import qd.e;

/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: c, reason: collision with root package name */
    public static final a f14613c;

    /* renamed from: a, reason: collision with root package name */
    public final e f14614a;

    /* renamed from: b, reason: collision with root package name */
    public final b0.a f14615b;

    static {
        a aVar = null;
        if (Class.forName("android.os.Looper").getDeclaredMethod("getMainLooper", new Class[0]).invoke(null, new Object[0]) != null) {
            try {
                aVar = (a) AndroidComponentsImpl.class.getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable unused) {
            }
        }
        f14613c = aVar;
    }

    public a(c cVar, b0.a aVar) {
        this.f14614a = cVar;
        this.f14615b = aVar;
    }
}
