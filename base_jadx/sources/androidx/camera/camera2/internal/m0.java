package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCaptureSession;
import androidx.camera.camera2.internal.CameraBurstCaptureCallback;
import androidx.camera.camera2.internal.compat.workaround.ForceCloseCaptureSession;

/* loaded from: classes.dex */
public final /* synthetic */ class m0 implements CameraBurstCaptureCallback.CaptureSequenceCallback, ForceCloseCaptureSession.OnConfigured {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f572a;

    public /* synthetic */ m0(Object obj) {
        this.f572a = obj;
    }

    @Override // androidx.camera.camera2.internal.CameraBurstCaptureCallback.CaptureSequenceCallback
    public final void onCaptureSequenceCompletedOrAborted(CameraCaptureSession cameraCaptureSession, int r32, boolean z10) {
        ((CaptureSession) this.f572a).lambda$issueBurstCaptureRequest$2(cameraCaptureSession, r32, z10);
    }

    @Override // androidx.camera.camera2.internal.compat.workaround.ForceCloseCaptureSession.OnConfigured
    public final void run(SynchronizedCaptureSession synchronizedCaptureSession) {
        ((SynchronizedCaptureSessionImpl) this.f572a).lambda$onConfigured$2(synchronizedCaptureSession);
    }
}
