package com.afollestad.materialdialogs.lifecycle;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import kotlin.Metadata;
import l9.m;
import x9.a;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0007J\b\u0010\u0004\u001a\u00020\u0002H\u0007¨\u0006\u0005"}, d2 = {"Lcom/afollestad/materialdialogs/lifecycle/DialogLifecycleObserver;", "Landroidx/lifecycle/LifecycleObserver;", "Ll9/m;", "onDestroy", "onPause", "lifecycle"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class DialogLifecycleObserver implements LifecycleObserver {

    /* renamed from: a, reason: collision with root package name */
    public final a<m> f2520a;

    public DialogLifecycleObserver(a0.a aVar) {
        this.f2520a = aVar;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public final void onDestroy() {
        this.f2520a.invoke();
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public final void onPause() {
        this.f2520a.invoke();
    }
}
