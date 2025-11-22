package androidx.camera.camera2.internal;

/* loaded from: classes.dex */
public final /* synthetic */ class a0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f454a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f455b;

    public /* synthetic */ a0(int r12, Object obj) {
        this.f454a = r12;
        this.f455b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f454a;
        Object obj = this.f455b;
        switch (r02) {
            case 0:
                ((Camera2CameraImpl) obj).closeInternal();
                break;
            default:
                ((SynchronizedCaptureSessionBaseImpl) obj).lambda$close$2();
                break;
        }
    }
}
