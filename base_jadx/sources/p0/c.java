package p0;

import android.util.Log;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final b f12202a = new b();

    public static void a() {
        f12202a.getClass();
    }

    public static void b(String str) {
        f12202a.getClass();
        HashSet hashSet = b.f12201a;
        if (hashSet.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, null);
        hashSet.add(str);
    }

    public static void c(String str, Throwable th2) {
        f12202a.getClass();
        HashSet hashSet = b.f12201a;
        if (hashSet.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, th2);
        hashSet.add(str);
    }
}
