package androidx.camera.camera2.internal;

import androidx.camera.core.SafeCloseImageReaderProxy;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public final /* synthetic */ class o0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f587a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f588b;

    public /* synthetic */ o0(int r12, Object obj) {
        this.f587a = r12;
        this.f588b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f587a;
        Object obj = this.f588b;
        switch (r02) {
            case 0:
                CaptureSessionRepository.forceOnClosed((LinkedHashSet) obj);
                break;
            default:
                ((SafeCloseImageReaderProxy) obj).safeClose();
                break;
        }
    }
}
