package androidx.camera.camera2.internal;

import androidx.camera.camera2.internal.ProcessingCaptureSession;

/* loaded from: classes.dex */
public final /* synthetic */ class d1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f528a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f529b;

    public /* synthetic */ d1(int r12, Object obj) {
        this.f528a = r12;
        this.f529b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f528a;
        Object obj = this.f529b;
        switch (r02) {
            case 0:
                ((ProcessingCaptureSession.SessionProcessorCaptureCallback) obj).lambda$onCaptureSequenceCompleted$1();
                break;
            default:
                ((SynchronizedCaptureSessionImpl) obj).lambda$close$3();
                break;
        }
    }
}
