package com.airbnb.mvrx;

import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.b;
import c5.u;
import java.io.Serializable;
import kotlin.jvm.internal.h;
import l9.e;
import r0.f;
import r0.h1;
import r0.i1;
import x9.a;

/* loaded from: classes.dex */
public final class lifecycleAwareLazy<T> implements e<T>, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public a<? extends T> f2699a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Object f2700b;

    /* renamed from: c, reason: collision with root package name */
    public final lifecycleAwareLazy<T> f2701c;

    /* renamed from: d, reason: collision with root package name */
    public final LifecycleOwner f2702d;

    public lifecycleAwareLazy(LifecycleOwner owner, f fVar) {
        h1 isMainThread = h1.f13748a;
        h.f(owner, "owner");
        h.f(isMainThread, "isMainThread");
        this.f2702d = owner;
        this.f2699a = fVar;
        this.f2700b = u.f2026q;
        this.f2701c = this;
        if (((Boolean) isMainThread.invoke()).booleanValue()) {
            a(owner);
        } else {
            new Handler(Looper.getMainLooper()).post(new i1(this));
        }
    }

    public final void a(LifecycleOwner lifecycleOwner) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        h.e(lifecycle, "owner.lifecycle");
        Lifecycle.State currentState = lifecycle.getCurrentState();
        h.e(currentState, "owner.lifecycle.currentState");
        if (currentState != Lifecycle.State.DESTROYED) {
            Object obj = this.f2700b;
            u uVar = u.f2026q;
            if (obj != uVar) {
                return;
            }
            if (currentState == Lifecycle.State.INITIALIZED) {
                lifecycleOwner.getLifecycle().addObserver(new DefaultLifecycleObserver() { // from class: com.airbnb.mvrx.lifecycleAwareLazy$initializeWhenCreated$1
                    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                    public final void onCreate(LifecycleOwner owner) {
                        h.f(owner, "owner");
                        lifecycleAwareLazy lifecycleawarelazy = this.f2703a;
                        if (!(lifecycleawarelazy.f2700b != u.f2026q)) {
                            lifecycleawarelazy.getValue();
                        }
                        owner.getLifecycle().removeObserver(this);
                    }

                    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                    public final /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner2) {
                        b.b(this, lifecycleOwner2);
                    }

                    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                    public final /* synthetic */ void onPause(LifecycleOwner lifecycleOwner2) {
                        b.c(this, lifecycleOwner2);
                    }

                    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                    public final /* synthetic */ void onResume(LifecycleOwner lifecycleOwner2) {
                        b.d(this, lifecycleOwner2);
                    }

                    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                    public final /* synthetic */ void onStart(LifecycleOwner lifecycleOwner2) {
                        b.e(this, lifecycleOwner2);
                    }

                    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                    public final /* synthetic */ void onStop(LifecycleOwner lifecycleOwner2) {
                        b.f(this, lifecycleOwner2);
                    }
                });
                return;
            }
            if (this.f2700b != uVar) {
                return;
            }
            getValue();
        }
    }

    @Override // l9.e
    public final T getValue() {
        T tInvoke;
        T t10 = (T) this.f2700b;
        u uVar = u.f2026q;
        if (t10 != uVar) {
            return t10;
        }
        synchronized (this.f2701c) {
            tInvoke = (T) this.f2700b;
            if (tInvoke == uVar) {
                a<? extends T> aVar = this.f2699a;
                h.c(aVar);
                tInvoke = aVar.invoke();
                this.f2700b = tInvoke;
                this.f2699a = null;
            }
        }
        return tInvoke;
    }

    public final String toString() {
        return this.f2700b != u.f2026q ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
