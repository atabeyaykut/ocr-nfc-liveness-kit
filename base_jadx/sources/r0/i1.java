package r0;

import com.airbnb.mvrx.lifecycleAwareLazy;

/* loaded from: classes.dex */
public final class i1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ lifecycleAwareLazy f13754a;

    public i1(lifecycleAwareLazy lifecycleawarelazy) {
        this.f13754a = lifecycleawarelazy;
    }

    @Override // java.lang.Runnable
    public final void run() {
        lifecycleAwareLazy lifecycleawarelazy = this.f13754a;
        lifecycleawarelazy.a(lifecycleawarelazy.f2702d);
    }
}
