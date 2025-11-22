package androidx.camera.camera2.internal;

import androidx.camera.camera2.internal.ProcessingCaptureSession;
import androidx.camera.core.impl.CaptureConfig;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f596a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f597b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f598c;

    public /* synthetic */ q(int r12, Object obj, Object obj2) {
        this.f596a = r12;
        this.f597b = obj;
        this.f598c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f596a;
        Object obj = this.f598c;
        Object obj2 = this.f597b;
        switch (r02) {
            case 0:
                ((Camera2CameraImpl) obj2).lambda$attachUseCases$11((List) obj);
                break;
            default:
                ((ProcessingCaptureSession.AnonymousClass2) obj2).lambda$onCaptureFailed$0((CaptureConfig) obj);
                break;
        }
    }
}
