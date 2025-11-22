package androidx.camera.core;

import androidx.camera.core.ImageCapture;

/* loaded from: classes.dex */
public final /* synthetic */ class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f767a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImageProxy f768b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f769c;

    public /* synthetic */ n(Object obj, ImageProxy imageProxy, int r32) {
        this.f767a = r32;
        this.f769c = obj;
        this.f768b = imageProxy;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f767a;
        ImageProxy imageProxy = this.f768b;
        Object obj = this.f769c;
        switch (r02) {
            case 0:
                ((CaptureProcessorPipeline) obj).lambda$onResolutionUpdate$0(imageProxy);
                break;
            default:
                ((ImageCapture.ImageCaptureRequest) obj).lambda$dispatchImage$0(imageProxy);
                break;
        }
    }
}
