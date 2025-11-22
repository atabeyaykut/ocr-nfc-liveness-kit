package tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.util;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import kotlin.Metadata;
import oh.a;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0007J\b\u0010\u0004\u001a\u00020\u0002H\u0007J\b\u0010\u0005\u001a\u00020\u0002H\u0007¨\u0006\u0006"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/util/LifecycleAwareTimer;", "Landroidx/lifecycle/LifecycleObserver;", "Ll9/m;", "onResume", "onPause", "onDestroy", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class LifecycleAwareTimer implements LifecycleObserver {

    /* renamed from: a, reason: collision with root package name */
    public a f17442a;

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public final void onDestroy() {
        a aVar = this.f17442a;
        if (aVar != null) {
            aVar.cancel();
        }
        throw null;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public final void onPause() {
        a aVar = this.f17442a;
        if (aVar != null) {
            aVar.cancel();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public final void onResume() {
        if (0 - System.currentTimeMillis() <= 0) {
            throw null;
        }
        a aVar = this.f17442a;
        if (aVar != null) {
            aVar.cancel();
        }
        this.f17442a = null;
        a aVar2 = new a(0 - System.currentTimeMillis(), this);
        this.f17442a = aVar2;
        aVar2.start();
    }
}
