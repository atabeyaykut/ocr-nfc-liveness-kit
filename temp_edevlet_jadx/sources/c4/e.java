package c4;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static SharedPreferences f1386a;

    public static SharedPreferences a(Context context) throws Exception {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            if (f1386a == null) {
                f1386a = (SharedPreferences) l4.c.a(new f(context));
            }
            sharedPreferences = f1386a;
        }
        return sharedPreferences;
    }
}
