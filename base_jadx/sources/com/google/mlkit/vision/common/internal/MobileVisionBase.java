package com.google.mlkit.vision.common.internal;

import androidx.annotation.RecentlyNonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import c5.y3;
import com.google.mlkit.vision.common.internal.MobileVisionBase;
import h5.n;
import h5.z;
import java.io.Closeable;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import r3.j;
import r3.r;
import v7.f;

/* loaded from: classes2.dex */
public class MobileVisionBase<DetectionResultT> implements Closeable, LifecycleObserver {

    /* renamed from: e, reason: collision with root package name */
    public static final j f4431e = new j("MobileVisionBase", "");

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f4432a = new AtomicBoolean(false);

    /* renamed from: b, reason: collision with root package name */
    public final f<DetectionResultT, a8.a> f4433b;

    /* renamed from: c, reason: collision with root package name */
    public final h5.a f4434c;

    /* renamed from: d, reason: collision with root package name */
    public final Executor f4435d;

    public MobileVisionBase(@RecentlyNonNull f<DetectionResultT, a8.a> fVar, @RecentlyNonNull Executor executor) {
        this.f4433b = fVar;
        h5.a aVar = new h5.a();
        this.f4434c = aVar;
        this.f4435d = executor;
        fVar.f18272b.incrementAndGet();
        fVar.a(executor, new Callable() { // from class: b8.e
            @Override // java.util.concurrent.Callable
            public final Object call() {
                j jVar = MobileVisionBase.f4431e;
                return null;
            }
        }, aVar.f6839a).p(x5.a.f19149a);
    }

    @RecentlyNonNull
    public final synchronized z a(@RecentlyNonNull a8.a aVar) {
        if (this.f4432a.get()) {
            return n.d(new r7.a("This detector is already closed!", 14));
        }
        if (aVar.f133d < 32 || aVar.f134e < 32) {
            return n.d(new r7.a("InputImage width and height should be at least 32!", 3));
        }
        return this.f4433b.a(this.f4435d, new y3(1, this, aVar), this.f4434c.f6839a);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public synchronized void close() {
        boolean z10 = true;
        if (this.f4432a.getAndSet(true)) {
            return;
        }
        this.f4434c.a();
        final f<DetectionResultT, a8.a> fVar = this.f4433b;
        Executor executor = this.f4435d;
        if (fVar.f18272b.get() <= 0) {
            z10 = false;
        }
        r.l(z10);
        fVar.f18271a.a(new Runnable() { // from class: v7.s
            @Override // java.lang.Runnable
            public final void run() {
                j jVar = fVar;
                int r12 = jVar.f18272b.decrementAndGet();
                r3.r.l(r12 >= 0);
                if (r12 == 0) {
                    jVar.c();
                    jVar.f18273c.set(false);
                }
            }
        }, executor);
    }
}
