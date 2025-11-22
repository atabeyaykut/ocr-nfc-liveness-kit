package androidx.camera.camera2.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;

/* loaded from: classes.dex */
public final /* synthetic */ class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f590a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f591b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f592c;

    public /* synthetic */ p(int r12, Object obj, Object obj2) {
        this.f590a = r12;
        this.f591b = obj;
        this.f592c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f590a;
        Object obj = this.f592c;
        Object obj2 = this.f591b;
        switch (r02) {
            case 0:
                ((Camera2CameraImpl) obj2).lambda$onUseCaseInactive$6((String) obj);
                break;
            case 1:
                ((FocusMeteringControl) obj2).lambda$cancelFocusAndMetering$5((CallbackToFutureAdapter.Completer) obj);
                break;
            default:
                ((SynchronizedCaptureSessionBaseImpl) obj2).lambda$onSessionFinished$4((SynchronizedCaptureSession) obj);
                break;
        }
    }
}
