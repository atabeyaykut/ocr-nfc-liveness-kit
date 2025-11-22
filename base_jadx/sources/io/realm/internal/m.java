package io.realm.internal;

import android.content.Context;
import java.io.File;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f7672a;

    static {
        String str = File.separator;
        String str2 = File.pathSeparator;
        f7672a = false;
    }

    public static synchronized void a(Context context) {
        if (f7672a) {
            return;
        }
        new g2.e().b(context, "10.17.0");
        f7672a = true;
    }
}
