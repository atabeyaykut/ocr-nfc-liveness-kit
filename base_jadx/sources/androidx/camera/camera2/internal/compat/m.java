package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import androidx.camera.camera2.internal.compat.CameraCaptureSessionCompat;
import androidx.camera.camera2.internal.compat.CameraDeviceCompat;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f503a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f504b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AutoCloseable f505c;

    public /* synthetic */ m(Object obj, AutoCloseable autoCloseable, int r32) {
        this.f503a = r32;
        this.f504b = obj;
        this.f505c = autoCloseable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f503a;
        AutoCloseable autoCloseable = this.f505c;
        Object obj = this.f504b;
        switch (r02) {
            case 0:
                ((CameraCaptureSessionCompat.StateCallbackExecutorWrapper) obj).lambda$onConfigureFailed$1((CameraCaptureSession) autoCloseable);
                break;
            default:
                ((CameraDeviceCompat.StateCallbackExecutorWrapper) obj).lambda$onClosed$3((CameraDevice) autoCloseable);
                break;
        }
    }
}
