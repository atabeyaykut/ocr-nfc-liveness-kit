package androidx.camera.core;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.VideoCapture;

/* loaded from: classes.dex */
public final /* synthetic */ class h0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f699a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f700b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f701c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Throwable f702d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f703e;

    public /* synthetic */ h0(Object obj, int r22, String str, Throwable th2, int r52) {
        this.f699a = r52;
        this.f703e = obj;
        this.f700b = r22;
        this.f701c = str;
        this.f702d = th2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f699a;
        int r12 = this.f700b;
        Throwable th2 = this.f702d;
        String str = this.f701c;
        Object obj = this.f703e;
        switch (r02) {
            case 0:
                ((ImageCapture.ImageCaptureRequest) obj).lambda$notifyCallbackError$1(r12, str, th2);
                break;
            default:
                ((VideoCapture.VideoSavedListenerWrapper) obj).lambda$onError$1(r12, str, th2);
                break;
        }
    }
}
