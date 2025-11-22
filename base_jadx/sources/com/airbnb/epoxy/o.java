package com.airbnb.epoxy;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public static final Handler f2602a = a(Looper.getMainLooper(), false);

    /* renamed from: b, reason: collision with root package name */
    public static final Handler f2603b = a(Looper.getMainLooper(), true);

    /* renamed from: c, reason: collision with root package name */
    public static Handler f2604c;

    public static Handler a(Looper looper, boolean z10) {
        if (!z10) {
            return new Handler(looper);
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return Handler.createAsync(looper);
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (Throwable unused) {
            return new Handler(looper);
        }
    }
}
