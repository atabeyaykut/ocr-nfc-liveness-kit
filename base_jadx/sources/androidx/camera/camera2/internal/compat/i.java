package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.CameraCaptureSession;
import androidx.camera.camera2.internal.compat.CameraCaptureSessionCompat;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f494a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f495b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f496c;

    public /* synthetic */ i(int r12, Object obj, Object obj2) {
        this.f494a = r12;
        this.f495b = obj;
        this.f496c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f494a;
        Object obj = this.f496c;
        Object obj2 = this.f495b;
        switch (r02) {
            case 0:
                ((CameraCaptureSessionCompat.StateCallbackExecutorWrapper) obj2).lambda$onConfigured$0((CameraCaptureSession) obj);
                break;
            default:
                ((CameraManagerCompat.AvailabilityCallbackExecutorWrapper) obj2).lambda$onCameraAvailable$1((String) obj);
                break;
        }
    }
}
