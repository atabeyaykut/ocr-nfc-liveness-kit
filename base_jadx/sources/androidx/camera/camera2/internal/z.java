package androidx.camera.camera2.internal;

import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class z implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f643a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f644b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f645c;

    public /* synthetic */ z(int r12, Object obj, Object obj2) {
        this.f643a = r12;
        this.f644b = obj;
        this.f645c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f643a;
        Object obj = this.f645c;
        Object obj2 = this.f644b;
        switch (r02) {
            case 0:
                ((Camera2CameraImpl) obj2).lambda$detachUseCases$12((List) obj);
                break;
            default:
                ((SynchronizedCaptureSessionBaseImpl) obj2).lambda$onClosed$3((SynchronizedCaptureSession) obj);
                break;
        }
    }
}
