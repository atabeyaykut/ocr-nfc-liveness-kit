package androidx.camera.camera2.internal;

import androidx.camera.core.ZoomState;
import androidx.camera.core.impl.SessionConfig;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* loaded from: classes.dex */
public final /* synthetic */ class x implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f631a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f632b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f633c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f634d;

    public /* synthetic */ x(Object obj, Object obj2, Object obj3, int r42) {
        this.f631a = r42;
        this.f632b = obj;
        this.f633c = obj2;
        this.f634d = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f631a;
        Object obj = this.f634d;
        Object obj2 = this.f633c;
        Object obj3 = this.f632b;
        switch (r02) {
            case 0:
                ((Camera2CameraImpl) obj3).lambda$onUseCaseUpdated$7((String) obj2, (SessionConfig) obj);
                break;
            case 1:
                ((Camera2CameraImpl) obj3).lambda$onUseCaseReset$8((String) obj2, (SessionConfig) obj);
                break;
            default:
                ((ZoomControl) obj3).lambda$setZoomRatio$0((CallbackToFutureAdapter.Completer) obj2, (ZoomState) obj);
                break;
        }
    }
}
