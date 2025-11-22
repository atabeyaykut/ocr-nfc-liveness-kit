package androidx.camera.camera2.internal;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f534a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f535b;

    public /* synthetic */ f(int r12, Object obj) {
        this.f534a = r12;
        this.f535b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f534a;
        Object obj = this.f535b;
        switch (r02) {
            case 0:
                ((Camera2CameraControlImpl) obj).updateSessionConfigSynchronous();
                break;
            case 1:
                ((Camera2CameraControlImpl) obj).lambda$new$0();
                break;
            default:
                ((Camera2CameraImpl) obj).openInternal();
                break;
        }
    }
}
