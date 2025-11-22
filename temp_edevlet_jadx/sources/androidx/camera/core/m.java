package androidx.camera.core;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.ProcessingImageReader;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements CallbackToFutureAdapter.Resolver, ProcessingImageReader.OnProcessingErrorCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f761a;

    public /* synthetic */ m(Object obj) {
        this.f761a = obj;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((CaptureProcessorPipeline) this.f761a).lambda$getCloseFuture$4(completer);
    }

    @Override // androidx.camera.core.ProcessingImageReader.OnProcessingErrorCallback
    public final void notifyProcessingError(String str, Throwable th2) {
        ImageCapture.lambda$issueTakePicture$11((ImageCapture.ImageCaptureRequest) this.f761a, str, th2);
    }
}
