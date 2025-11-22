package androidx.camera.core;

import androidx.camera.core.impl.CameraStateRegistry;
import androidx.constraintlayout.helper.widget.Carousel;
import androidx.core.widget.ContentLoadingProgressBar;

/* loaded from: classes.dex */
public final /* synthetic */ class a1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f669a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f670b;

    public /* synthetic */ a1(int r12, Object obj) {
        this.f669a = r12;
        this.f670b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f669a;
        Object obj = this.f670b;
        switch (r02) {
            case 0:
                ((VideoCapture) obj).lambda$startRecording$2();
                break;
            case 1:
                ((CameraStateRegistry.OnOpenAvailableListener) obj).onOpenAvailable();
                break;
            case 2:
                ((Carousel) obj).lambda$updateItems$0();
                break;
            default:
                ((ContentLoadingProgressBar) obj).showOnUiThread();
                break;
        }
    }
}
