package androidx.camera.camera2.internal;

import androidx.camera.camera2.internal.ProcessingCaptureSession;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureFailure;
import androidx.camera.core.impl.CaptureConfig;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f566a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f567b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f568c;

    public /* synthetic */ l(int r12, Object obj, Object obj2) {
        this.f566a = r12;
        this.f567b = obj;
        this.f568c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f566a;
        Object obj = this.f568c;
        Object obj2 = this.f567b;
        switch (r02) {
            case 0:
                ((CameraCaptureCallback) obj2).onCaptureFailed((CameraCaptureFailure) obj);
                break;
            default:
                ((ProcessingCaptureSession.AnonymousClass2) obj2).lambda$onCaptureSequenceCompleted$1((CaptureConfig) obj);
                break;
        }
    }
}
