package com.airbnb.epoxy;

import android.os.Handler;
import android.os.HandlerThread;

/* loaded from: classes.dex */
public abstract class AsyncEpoxyController extends p {
    public AsyncEpoxyController() {
        this(true);
    }

    public AsyncEpoxyController(boolean z10) {
        this(z10, z10);
    }

    public AsyncEpoxyController(boolean z10, boolean z11) {
        super(getHandler(z10), getHandler(z11));
    }

    private static Handler getHandler(boolean z10) {
        if (!z10) {
            return o.f2602a;
        }
        if (o.f2604c == null) {
            HandlerThread handlerThread = new HandlerThread("epoxy");
            handlerThread.start();
            o.f2604c = o.a(handlerThread.getLooper(), true);
        }
        return o.f2604c;
    }
}
