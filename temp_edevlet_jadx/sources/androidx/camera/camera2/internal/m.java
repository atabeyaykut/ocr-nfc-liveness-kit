package androidx.camera.camera2.internal;

import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.impl.CameraCaptureCallback;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f570a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f571b;

    public /* synthetic */ m(int r12, Object obj) {
        this.f570a = r12;
        this.f571b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f570a;
        Object obj = this.f571b;
        switch (r02) {
            case 0:
                ((CameraCaptureCallback) obj).onCaptureCancelled();
                break;
            default:
                ((SafeCloseImageReaderProxy) obj).safeClose();
                break;
        }
    }
}
