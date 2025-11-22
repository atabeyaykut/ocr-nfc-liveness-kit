package oh;

import android.os.CountDownTimer;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.util.LifecycleAwareTimer;

/* loaded from: classes3.dex */
public final class a extends CountDownTimer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LifecycleAwareTimer f11338a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(long j10, LifecycleAwareTimer lifecycleAwareTimer) {
        super(j10, 0L);
        this.f11338a = lifecycleAwareTimer;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        this.f11338a.getClass();
        throw null;
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j10) {
        this.f11338a.getClass();
        throw null;
    }
}
