package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.internal.compat.workaround.WaitForRepeatingRequestStart;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* loaded from: classes.dex */
public final /* synthetic */ class t0 implements CallbackToFutureAdapter.Resolver, WaitForRepeatingRequestStart.SingleRepeatingRequest {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f613a;

    public /* synthetic */ t0(Object obj) {
        this.f613a = obj;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((FocusMeteringControl) this.f613a).lambda$cancelFocusAndMetering$6(completer);
    }

    @Override // androidx.camera.camera2.internal.compat.workaround.WaitForRepeatingRequestStart.SingleRepeatingRequest
    public final int run(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback) {
        return ((SynchronizedCaptureSessionImpl) this.f613a).lambda$setSingleRepeatingRequest$1(captureRequest, captureCallback);
    }
}
