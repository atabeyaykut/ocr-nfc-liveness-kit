package com.airbnb.epoxy;

import android.content.Context;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0007¨\u0006\u0004"}, d2 = {"Lcom/airbnb/epoxy/PoolReference;", "Landroidx/lifecycle/LifecycleObserver;", "Ll9/m;", "onContextDestroyed", "epoxy-adapter_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class PoolReference implements LifecycleObserver {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference<Context> f2532a;

    /* renamed from: b, reason: collision with root package name */
    public final RecyclerView.RecycledViewPool f2533b;

    /* renamed from: c, reason: collision with root package name */
    public final a f2534c;

    public PoolReference(Context context, RecyclerView.RecycledViewPool viewPool, a aVar) {
        kotlin.jvm.internal.h.f(viewPool, "viewPool");
        this.f2533b = viewPool;
        this.f2534c = aVar;
        this.f2532a = new WeakReference<>(context);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public final void onContextDestroyed() {
        a aVar = this.f2534c;
        aVar.getClass();
        if (c5.w.z(this.f2532a.get())) {
            this.f2533b.clear();
            ((ArrayList) aVar.f2536b).remove(this);
        }
    }
}
