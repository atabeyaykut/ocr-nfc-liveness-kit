package androidx.camera.camera2.internal;

import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.SessionConfig;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class w implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f624a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f625b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f626c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f627d;

    public /* synthetic */ w(Object obj, Object obj2, Object obj3, int r42) {
        this.f624a = r42;
        this.f625b = obj;
        this.f626c = obj2;
        this.f627d = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f624a;
        Object obj = this.f627d;
        Object obj2 = this.f626c;
        Object obj3 = this.f625b;
        switch (r02) {
            case 0:
                ((Camera2CameraImpl) obj3).lambda$onUseCaseActive$5((String) obj2, (SessionConfig) obj);
                break;
            default:
                ((Camera2CameraControlImpl) obj3).lambda$addSessionCameraCaptureCallback$8((Executor) obj2, (CameraCaptureCallback) obj);
                break;
        }
    }
}
