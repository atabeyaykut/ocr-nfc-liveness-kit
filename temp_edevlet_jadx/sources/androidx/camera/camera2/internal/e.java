package androidx.camera.camera2.internal;

import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f530a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Camera2CameraControlImpl f531b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f532c;

    public /* synthetic */ e(Camera2CameraControlImpl camera2CameraControlImpl, Object obj, int r32) {
        this.f530a = r32;
        this.f531b = camera2CameraControlImpl;
        this.f532c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f530a;
        Camera2CameraControlImpl camera2CameraControlImpl = this.f531b;
        Object obj = this.f532c;
        switch (r02) {
            case 0:
                camera2CameraControlImpl.lambda$removeSessionCameraCaptureCallback$9((CameraCaptureCallback) obj);
                break;
            default:
                camera2CameraControlImpl.lambda$updateSessionConfigAsync$6((CallbackToFutureAdapter.Completer) obj);
                break;
        }
    }
}
