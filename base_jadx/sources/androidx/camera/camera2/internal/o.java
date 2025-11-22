package androidx.camera.camera2.internal;

import android.hardware.camera2.TotalCaptureResult;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f584a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f585b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f586c;

    public /* synthetic */ o(int r12, Object obj, Object obj2) {
        this.f584a = r12;
        this.f585b = obj;
        this.f586c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f584a;
        Object obj = this.f586c;
        Object obj2 = this.f585b;
        switch (r02) {
            case 0:
                ((Camera2CameraControlImpl.CameraControlSessionCallback) obj2).lambda$onCaptureCompleted$0((TotalCaptureResult) obj);
                break;
            default:
                ((Camera2CameraImpl) obj2).lambda$release$2((CallbackToFutureAdapter.Completer) obj);
                break;
        }
    }
}
