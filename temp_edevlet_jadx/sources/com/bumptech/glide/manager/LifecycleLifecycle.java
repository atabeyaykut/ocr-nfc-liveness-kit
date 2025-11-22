package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
final class LifecycleLifecycle implements j, LifecycleObserver {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final HashSet f2770a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Lifecycle f2771b;

    public LifecycleLifecycle(Lifecycle lifecycle) {
        this.f2771b = lifecycle;
        lifecycle.addObserver(this);
    }

    @Override // com.bumptech.glide.manager.j
    public final void a(@NonNull k kVar) {
        this.f2770a.add(kVar);
        Lifecycle lifecycle = this.f2771b;
        if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            kVar.g();
        } else if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            kVar.onStart();
        } else {
            kVar.i();
        }
    }

    @Override // com.bumptech.glide.manager.j
    public final void b(@NonNull k kVar) {
        this.f2770a.remove(kVar);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy(@NonNull LifecycleOwner lifecycleOwner) {
        Iterator it = q1.m.d(this.f2770a).iterator();
        while (it.hasNext()) {
            ((k) it.next()).g();
        }
        lifecycleOwner.getLifecycle().removeObserver(this);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart(@NonNull LifecycleOwner lifecycleOwner) {
        Iterator it = q1.m.d(this.f2770a).iterator();
        while (it.hasNext()) {
            ((k) it.next()).onStart();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop(@NonNull LifecycleOwner lifecycleOwner) {
        Iterator it = q1.m.d(this.f2770a).iterator();
        while (it.hasNext()) {
            ((k) it.next()).i();
        }
    }
}
