package androidx.camera.core;

import androidx.camera.core.Preview;
import androidx.camera.core.SurfaceRequest;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f704a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f705b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f706c;

    public /* synthetic */ i(int r12, Object obj, Object obj2) {
        this.f704a = r12;
        this.f705b = obj;
        this.f706c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f704a;
        Object obj = this.f706c;
        Object obj2 = this.f705b;
        switch (r02) {
            case 0:
                ((CameraX) obj2).lambda$shutdownInternal$3((CallbackToFutureAdapter.Completer) obj);
                break;
            case 1:
                ImageAnalysis.lambda$createPipeline$0((SafeCloseImageReaderProxy) obj2, (SafeCloseImageReaderProxy) obj);
                break;
            case 2:
                ((Preview.SurfaceProvider) obj2).onSurfaceRequested((SurfaceRequest) obj);
                break;
            default:
                ((SurfaceRequest.TransformationInfoListener) obj2).onTransformationInfoUpdate((SurfaceRequest.TransformationInfo) obj);
                break;
        }
    }
}
