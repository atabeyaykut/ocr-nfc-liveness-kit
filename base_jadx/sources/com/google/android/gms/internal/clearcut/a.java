package com.google.android.gms.internal.clearcut;

import android.os.Build;
import android.os.UserManager;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static volatile UserManager f3021a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile boolean f3022b;

    static {
        f3022b = !(Build.VERSION.SDK_INT >= 24);
    }
}
