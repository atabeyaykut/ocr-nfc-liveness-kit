package p;

import android.view.View;
import androidx.annotation.MainThread;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import coil.request.ViewTargetRequestDelegate;
import nc.t1;

/* loaded from: classes.dex */
public final class q implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public a0.b f12195a;

    /* renamed from: b, reason: collision with root package name */
    public t1 f12196b;

    /* renamed from: c, reason: collision with root package name */
    public ViewTargetRequestDelegate f12197c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f12198d;

    public q(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    @MainThread
    public final void onViewAttachedToWindow(View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.f12197c;
        if (viewTargetRequestDelegate == null) {
            return;
        }
        this.f12198d = true;
        viewTargetRequestDelegate.f2462a.a(viewTargetRequestDelegate.f2463b);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    @MainThread
    public final void onViewDetachedFromWindow(View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.f12197c;
        if (viewTargetRequestDelegate == null) {
            return;
        }
        viewTargetRequestDelegate.f2466e.a(null);
        r.b<?> bVar = viewTargetRequestDelegate.f2464c;
        boolean z10 = bVar instanceof LifecycleObserver;
        Lifecycle lifecycle = viewTargetRequestDelegate.f2465d;
        if (z10) {
            lifecycle.removeObserver((LifecycleObserver) bVar);
        }
        lifecycle.removeObserver(viewTargetRequestDelegate);
    }
}
