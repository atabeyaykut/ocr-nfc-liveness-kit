package com.airbnb.epoxy;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class z implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f2669a;

    public z(Handler handler) {
        this.f2669a = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(@NonNull Runnable runnable) {
        Looper looperMyLooper = Looper.myLooper();
        Handler handler = this.f2669a;
        if (looperMyLooper == handler.getLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }
}
