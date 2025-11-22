package androidx.camera.camera2.internal;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.SessionConfig;

/* loaded from: classes.dex */
public final /* synthetic */ class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f575a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f576b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f577c;

    public /* synthetic */ n(int r12, Object obj, Object obj2) {
        this.f575a = r12;
        this.f576b = obj;
        this.f577c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f575a;
        Object obj = this.f577c;
        Object obj2 = this.f576b;
        switch (r02) {
            case 0:
                ((CameraCaptureCallback) obj2).onCaptureCompleted((CameraCaptureResult) obj);
                break;
            case 1:
                Camera2CameraImpl.lambda$postSurfaceClosedError$14((SessionConfig.ErrorListener) obj2, (SessionConfig) obj);
                break;
            default:
                Camera2CameraImpl.lambda$configAndClose$0((Surface) obj2, (SurfaceTexture) obj);
                break;
        }
    }
}
