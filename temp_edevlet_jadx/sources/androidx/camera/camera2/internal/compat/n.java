package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import androidx.camera.camera2.internal.compat.CameraCaptureSessionCompat;
import androidx.camera.camera2.internal.compat.CameraDeviceCompat;

/* loaded from: classes.dex */
public final /* synthetic */ class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f506a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f507b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AutoCloseable f508c;

    public /* synthetic */ n(Object obj, AutoCloseable autoCloseable, int r32) {
        this.f506a = r32;
        this.f507b = obj;
        this.f508c = autoCloseable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f506a;
        AutoCloseable autoCloseable = this.f508c;
        Object obj = this.f507b;
        switch (r02) {
            case 0:
                ((CameraCaptureSessionCompat.StateCallbackExecutorWrapper) obj).lambda$onReady$2((CameraCaptureSession) autoCloseable);
                break;
            default:
                ((CameraDeviceCompat.StateCallbackExecutorWrapper) obj).lambda$onDisconnected$1((CameraDevice) autoCloseable);
                break;
        }
    }
}
