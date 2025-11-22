package p;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;

/* loaded from: classes.dex */
public final class f extends Lifecycle {

    /* renamed from: a, reason: collision with root package name */
    public static final f f12115a = new f();

    /* renamed from: b, reason: collision with root package name */
    public static final e f12116b = new LifecycleOwner() { // from class: p.e
        @Override // androidx.lifecycle.LifecycleOwner
        public final Lifecycle getLifecycle() {
            return f.f12115a;
        }
    };

    @Override // androidx.lifecycle.Lifecycle
    public final void addObserver(LifecycleObserver lifecycleObserver) {
        if (!(lifecycleObserver instanceof DefaultLifecycleObserver)) {
            throw new IllegalArgumentException((lifecycleObserver + " must implement androidx.lifecycle.DefaultLifecycleObserver.").toString());
        }
        DefaultLifecycleObserver defaultLifecycleObserver = (DefaultLifecycleObserver) lifecycleObserver;
        e eVar = f12116b;
        defaultLifecycleObserver.onCreate(eVar);
        defaultLifecycleObserver.onStart(eVar);
        defaultLifecycleObserver.onResume(eVar);
    }

    @Override // androidx.lifecycle.Lifecycle
    public final Lifecycle.State getCurrentState() {
        return Lifecycle.State.RESUMED;
    }

    @Override // androidx.lifecycle.Lifecycle
    public final void removeObserver(LifecycleObserver lifecycleObserver) {
    }

    public final String toString() {
        return "coil.request.GlobalLifecycle";
    }
}
