package androidx.camera.camera2.internal;

import android.hardware.camera2.TotalCaptureResult;
import androidx.camera.camera2.internal.Camera2CapturePipeline;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* loaded from: classes.dex */
public final /* synthetic */ class t implements CallbackToFutureAdapter.Resolver, Camera2CapturePipeline.ResultListener.Checker {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f611a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f612b;

    public /* synthetic */ t(int r12, Object obj) {
        this.f611a = r12;
        this.f612b = obj;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        int r02 = this.f611a;
        Object obj = this.f612b;
        switch (r02) {
            case 0:
                return ((Camera2CameraImpl) obj).lambda$getOrCreateUserReleaseFuture$4(completer);
            default:
                return ((CaptureSession) obj).lambda$release$1(completer);
        }
    }

    @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.ResultListener.Checker
    public final boolean check(TotalCaptureResult totalCaptureResult) {
        return ((Camera2CapturePipeline.Pipeline) this.f612b).is3AConverged(totalCaptureResult);
    }
}
