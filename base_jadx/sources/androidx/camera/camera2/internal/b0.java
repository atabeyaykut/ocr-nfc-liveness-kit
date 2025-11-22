package androidx.camera.camera2.internal;

import androidx.camera.camera2.internal.Camera2CameraImpl;
import androidx.camera.camera2.internal.Camera2CapturePipeline;
import androidx.camera.core.impl.DeferrableSurface;

/* loaded from: classes.dex */
public final /* synthetic */ class b0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f457a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f458b;

    public /* synthetic */ b0(int r12, Object obj) {
        this.f457a = r12;
        this.f458b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f457a;
        Object obj = this.f458b;
        switch (r02) {
            case 0:
                ((Camera2CameraImpl.StateCallback.ScheduledReopen) obj).lambda$run$0();
                break;
            case 1:
                ((Camera2CapturePipeline.Pipeline) obj).lambda$executeCapture$3();
                break;
            default:
                ProcessingCaptureSession.lambda$open$1((DeferrableSurface) obj);
                break;
        }
    }
}
