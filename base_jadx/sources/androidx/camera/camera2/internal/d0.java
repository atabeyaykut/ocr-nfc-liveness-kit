package androidx.camera.camera2.internal;

import androidx.camera.camera2.internal.Camera2CapturePipeline;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* loaded from: classes.dex */
public final /* synthetic */ class d0 implements CallbackToFutureAdapter.Resolver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f526a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f527b;

    public /* synthetic */ d0(int r12, Object obj) {
        this.f526a = r12;
        this.f527b = obj;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        int r02 = this.f526a;
        Object obj = this.f527b;
        switch (r02) {
            case 0:
                return ((Camera2CapturePipeline.AePreCaptureTask) obj).lambda$preCapture$0(completer);
            default:
                return ((Camera2CameraControlImpl) obj).lambda$updateSessionConfigAsync$7(completer);
        }
    }
}
